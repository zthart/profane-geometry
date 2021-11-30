#![no_std]
#![no_main]

#[cfg(not(feature = "use_semihosting"))]
use panic_halt as _;
#[cfg(feature = "use_semihosting")]
use panic_semihosting as _;

use bsp::hal;
use bsp::pac;
use profane_geometry_bsp as bsp;

use bsp::entry;

use hal::clock::GenericClockController;
use hal::prelude::*;
use hal::pwm::{Channel, Pwm1, Pwm2};
use hal::sercom::I2CMaster4;
use hal::time::KiloHertz;

use pac::{interrupt, CorePeripherals, Peripherals};

use cortex_m::asm::delay as cycle_delay;

use core::cell::{Cell, RefCell};

use cortex_m::interrupt::Mutex;

use micromath::F32Ext;

mod hw;
mod mcu;

const TOTAL_INS: usize = 3;

static ADC_INSTANCE: Mutex<RefCell<Option<mcu::adc::Adc<pac::ADC>>>> =
    Mutex::new(RefCell::new(None));
static ADC_CHANNELS: Mutex<RefCell<Option<[u8; TOTAL_INS]>>> = Mutex::new(RefCell::new(None));
static ADC_RESULTS: Mutex<RefCell<[u16; TOTAL_INS]>> = Mutex::new(RefCell::new([0; TOTAL_INS]));
static IN_CTR: Mutex<Cell<u8>> = Mutex::new(Cell::new(TOTAL_INS as u8));

// A nice little convenience here lets us ignore both the full pin name (e.g. PA11, PB10, etc.)
// _and_ the exact pin configuration (into_alternate::<Some Alternate>() or into_push_pull_output()).
// Within our BSP we can set these aliases for specific pins in specific modes, and then coerce things into()
// the appropriate type nicely.
//
// If we want to use pwm here, we could use bsp::NtSliderLedPwm instead.
static INT_LED: Mutex<RefCell<Option<bsp::NtSliderLed>>> =
    Mutex::new(RefCell::new(None));

static DAC_ADDRESS: u8 = 0b01100000;

static PG_INPUTS: Mutex<RefCell<Option<[ProGeoAnalogIn; TOTAL_INS]>>> =
    Mutex::new(RefCell::new(None));

// TODO(zach) - store this struct as inputs, don't reference ADC_RESULTS in main loop, keep critical sections in
// functions within this impl
struct ProGeoAnalogIn {
    /// The zero-indexed number of this input. This represents the index of this input in both the ADC_CHANNELS and
    /// ADC_RESULTS array, so that a given named AnalogIn struct can be used to fetch the current result, rather than
    /// relying on knowing "input x is index 0 is channel _y_ is pin whatever."
    num: usize,

    /// The result of the `channel()` associated func of the Channel trait provided by embedded_hal.
    ///
    /// Requiring the calling code handle fetching these values is an intentional design choice, due to the really funky
    /// nature of the type erasure provided by the atsamd_hal crate. I'm sure with some more effort I could get around
    /// that with an `AnyPin + Channel` implementation here, but this seems simple enough for the moment
    channel: u8,
}

impl ProGeoAnalogIn {
    /// Retrieve the current result for this input from the RefCell.
    ///
    /// This function enters a critical section.
    fn get_current_result(self) -> u16 {
        cortex_m::interrupt::free(|cs| {
            let results = ADC_RESULTS.borrow(cs).borrow();
            results[self.num].clone()
        })
    }
}

fn pg_create_inputs(mut pins: bsp::Pins) {
    use mcu::adc::Adc;

    let v_oct_: bsp::VOct = pins.v_oct.into(); // v/oct scaled
    let pwm_cv_: bsp::PwmCV = pins.pwm_cv.into(); // pulse scaled
    let pwm_pot_: bsp::PwmPot=  pins.pwm_pot.into(); // pulse pot

    cortex_m::interrupt::free(|cs| {
        PG_INPUTS.borrow(cs).replace(Some([
            ProGeoAnalogIn {
                num: 0,
                channel: Adc::get_pin_channel(v_oct_),
            },
            ProGeoAnalogIn {
                num: 1,
                channel: Adc::get_pin_channel(pwm_cv_),
            },
            ProGeoAnalogIn {
                num: 2,
                channel: Adc::get_pin_channel(pwm_pot_),
            },
        ]));
    })
}

#[entry]
fn main() -> ! {
    let mut peripherals = Peripherals::take().unwrap();
    let mut core = CorePeripherals::take().unwrap();

    let mut clocks = GenericClockController::with_external_32kosc(
        peripherals.GCLK,
        &mut peripherals.PM,
        &mut peripherals.SYSCTRL,
        &mut peripherals.NVMCTRL,
    );
    let gclk0 = clocks.gclk0();
    let pins = bsp::Pins::new(peripherals.PORT);

    // Configure i2c
    let mut dac = {
        use hw::mcp4728::MCP4728;

        let i2c_sda: bsp::DacSda = pins.dac_sda.into();
        let i2c_scl: bsp::DacScl = pins.dac_scl.into();

        let i2c = I2CMaster4::new(
            &clocks.sercom4_core(&gclk0).unwrap(),
            KiloHertz(400),
            peripherals.SERCOM4,
            &mut peripherals.PM,
            i2c_sda,
            i2c_scl,
        );

        MCP4728::init(i2c, DAC_ADDRESS)
    };

    {
        let mut notch_led = pins.nt_slider_led.into_push_pull_output();
        notch_led.set_low().unwrap();

        cortex_m::interrupt::free(|cs| {
            INT_LED.borrow(cs).replace(Some(notch_led));
        });
    }

    // Analog ins, all ADC inputs need to be sent to function b
    {
        use mcu::adc::Adc;

        let v_oct_: bsp::VOct = pins.v_oct.into(); // v/oct scaled
        let pwm_cv_: bsp::PwmCV = pins.pwm_cv.into(); // pulse scaled
        let pwm_pot_: bsp::PwmPot=  pins.pwm_pot.into(); // pulse pot

        let input_channels: [u8; TOTAL_INS] = [
            Adc::get_pin_channel(v_oct_),
            Adc::get_pin_channel(pwm_cv_),
            Adc::get_pin_channel(pwm_pot_),
        ];

        cortex_m::interrupt::free(|cs| ADC_CHANNELS.borrow(cs).replace(Some(input_channels)));
    }

    {
        use hal::pac::adc::{avgctrl, ctrlb};
        use mcu::adc::Adc;
        use mcu::calibration;

        let adc_linearity = calibration::adc_linearity_cal();
        let adc_bias = calibration::adc_bias_cal();

        let adc_builder = Adc::configure(peripherals.ADC, &mut peripherals.PM, &mut clocks);

        let adc = adc_builder
            .with_calibration(adc_bias, adc_linearity)
            .with_samples(avgctrl::SAMPLENUM_A::_32)
            .with_resolution(ctrlb::RESSEL_A::_16BIT)
            .with_reference_buffer()
            .enable();

        // Give up our adc and put it in the mutex
        cortex_m::interrupt::free(|cs| ADC_INSTANCE.borrow(cs).replace(Some(adc)));
        // Enable interrupts
        cortex_m::interrupt::free(|cs| {
            let idx: usize = IN_CTR.borrow(cs).get().into();
            let channel = ADC_CHANNELS.borrow(cs).borrow().as_ref().unwrap()[idx];
            let adc = ADC_INSTANCE.borrow(cs).borrow();
            // enabled interrupts
            adc.as_ref().unwrap().enable_interrupts(&mut core.NVIC);
            // begin
            adc.as_ref().unwrap().scan_channel(channel);
        });
    }

    let mut pwm1 = {
        let tcc0_tcc1 = &clocks.tcc0_tcc1(&gclk0).unwrap();
        let mut pwm1 = Pwm1::new(tcc0_tcc1, 1.khz(), peripherals.TCC1, &mut peripherals.PM);
        pwm1.enable(Channel::_1);
        pwm1.set_period(1.khz());
        pwm1
    };

    let mut pwm2 = {
        let tcc2_tc3 = &clocks.tcc2_tc3(&gclk0).unwrap();
        let mut pwm2 = Pwm2::new(tcc2_tc3, 1.khz(), peripherals.TCC2, &mut peripherals.PM);
        pwm2.enable(Channel::_1);
        pwm2.set_period(1.khz());
        pwm2
    };

    let _red_led: bsp::PowerLedPwm = pins.power_led.into();

    let mut pulse_led: bsp::PlsSliderLed = pins.pls_slider_led.into();
    let mut square_led: bsp::SqSliderLed = pins.sq_slider_led.into();
    let _tri_led: bsp::TriSliderLedPwm = pins.tri_slider_led.into();

    // Enable our slider LEDs
    {
        // pulse_led.set_high().unwrap();
        // square_led.set_high().unwrap();
        pwm1.set_duty(Channel::_1, pwm1.get_max_duty());
    }

    let mut status_ctr = 0;
    let status_thresh = 16;
    let pulse_pot_slope = 0.95f32;

    loop {
        if status_ctr == status_thresh {
            status_ctr = 0;
        }

        let mut pot_result: u16 = 0;
        let mut pitch_scaled_result: u16 = 0;
        let mut pwm_scaled_result: u16 = 0;

        cortex_m::interrupt::free(|cs| {
            let results = ADC_RESULTS.borrow(cs).borrow();
            pitch_scaled_result = results[0].clone(); // probably should have some struct that can hold the index at which i'm storing these values
            pwm_scaled_result = results[1].clone();
            pot_result = results[2].clone();
        });

        // haha jonathan you are ~banging my daughter~ wiring your pots backwards 🙃
        // dac.write_single_channel(hw::mcp4728::Channel::_1, pitch_scaled_result);
        // dac.write_single_channel(hw::mcp4728::Channel::_2, pitch_scaled_result);
        dac.write_single_channel(hw::mcp4728::Channel::_1, dac.get_max_value() - pot_result);
        dac.write_single_channel(hw::mcp4728::Channel::_2, dac.get_max_value() - pot_result);
        dac.write_single_channel(hw::mcp4728::Channel::_3, pot_result); // need to determine how to decide what source for pwm we should use

        if status_ctr == 0 {
            pwm2.set_duty(
                // Red LED on Feather
                Channel::_1,
                if pwm2.get_duty(Channel::_1) == pwm2.get_max_duty() / 4 {
                    pwm2.get_max_duty()
                } else {
                    pwm2.get_max_duty() / 4
                },
            );
        }
        pwm1.set_duty(
            // Tri Slider LED
            Channel::_1,
            pwm1.get_max_duty() as u32
                - (if pot_result > u16::pow(2, 12) - u16::pow(2, 2) {
                    pwm1.get_max_duty()
                        - if status_ctr % 2 == 0 {
                            u32::pow(2, 12)
                        } else {
                            u32::pow(2, 13)
                        }
                } else {
                    pot_result as u32 * 11
                }),
        );
        if pwm1.get_max_duty() <= (pulse_pot_slope * pot_result as f32 * 12f32).round() as u32 {
            square_led.set_high().unwrap();
        } else {
            square_led.set_low().unwrap();
        }

        status_ctr += 1;
        cycle_delay(1024 * 1024);
    }
}

#[interrupt]
fn ADC() {
    cortex_m::interrupt::free(|cs| {
        let adc = ADC_INSTANCE.borrow(cs).borrow();
        // Is making a copy here good or bad or neutral?
        let mut results = ADC_RESULTS.borrow(cs).borrow().clone();
        // Hold as usize here since it's mostly used to slice arrays
        let mut idx: usize = IN_CTR.borrow(cs).get().into();

        // Shouldn't really be the case ever, but just in case
        if !adc.as_ref().unwrap().has_result() {
            return;
        }

        // read the current result
        let result = adc.as_ref().unwrap().read_result();
        // store single result
        results[idx] = result;
        // replace global results
        ADC_RESULTS.borrow(cs).replace(results);

        // go next, as it were
        idx = idx + 1;
        if idx == TOTAL_INS {
            idx = 0;
        }
        IN_CTR.borrow(cs).set(idx as u8); // replace

        // shift to next channel for next interrupt call;
        let channel = ADC_CHANNELS.borrow(cs).borrow().as_ref().unwrap()[idx];

        // start scanning the next result
        adc.as_ref().unwrap().scan_channel(channel);
    });
}
