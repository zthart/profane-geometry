#![no_std]
#![no_main]

#[cfg(not(feature = "use_semihosting"))]
use panic_halt as _;
#[cfg(feature = "use_semihosting")]
use panic_semihosting as _;

use feather_m0 as hal;

use hal::entry;
use hal::pac;

use hal::clock::GenericClockController;
use hal::gpio::v2::{Output, PushPull, PA19};
use hal::pad::PadPin;
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

static INT_LED: Mutex<RefCell<Option<hal::gpio::Pin<PA19, Output<PushPull>>>>> =
    Mutex::new(RefCell::new(None));

static DAC_ADDRESS: u8 = 0b01100000;

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
    let mut pins = hal::Pins::new(peripherals.PORT);

    // Configure i2c
    let mut dac = {
        use hw::mcp4728::MCP4728;

        let i2c_sda = pins.a1.into_function_d(&mut pins.port);
        let i2c_scl = pins.a2.into_function_d(&mut pins.port);

        let i2c = I2CMaster4::new(
            &clocks.sercom4_core(&gclk0).unwrap(),
            KiloHertz(400),
            peripherals.SERCOM4,
            &mut peripherals.PM,
            i2c_sda.into_pad(&mut pins.port),
            i2c_scl.into_pad(&mut pins.port),
        );

        MCP4728::init(i2c, DAC_ADDRESS)
    };

    {
        let mut notch_led = pins.d12.into_open_drain_output(&mut pins.port);
        notch_led.set_low().unwrap();

        cortex_m::interrupt::free(|cs| {
            INT_LED.borrow(cs).replace(Some(notch_led));
        });
    }

    // Analog ins, all ADC inputs need to be sent to function b
    {
        use mcu::adc::Adc;

        let a3_ = pins.a3.into_function_b(&mut pins.port);
        let a4_ = pins.a4.into_function_b(&mut pins.port);
        let a5_ = pins.a5.into_function_b(&mut pins.port);

        let input_channels: [u8; TOTAL_INS] = [
            Adc::get_pin_channel(a3_),
            Adc::get_pin_channel(a4_),
            Adc::get_pin_channel(a5_),
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

    let _red_led = pins.d13.into_function_e(&mut pins.port);

    // LEDs on sliders - should maybe send to pwm since they're kind of bright
    let mut pulse_led = pins.d11.into_open_drain_output(&mut pins.port);
    let mut square_led = pins.d10.into_open_drain_output(&mut pins.port);
    let _tri_led = pins.d9.into_function_e(&mut pins.port);

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

        cortex_m::interrupt::free(|cs| {
            let results = ADC_RESULTS.borrow(cs).borrow();
            pot_result = results[2].clone();
        });

        // haha jonathan you are ~banging my daughter~ wiring your pots backwards 🙃
        dac.write_single_channel(hw::mcp4728::Channel::_1, dac.get_max_value() - pot_result);
        dac.write_single_channel(hw::mcp4728::Channel::_2, dac.get_max_value() - pot_result);
        dac.write_single_channel(hw::mcp4728::Channel::_3, pot_result);

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
        let mut results = ADC_RESULTS.borrow(cs).borrow().clone();
        let mut idx: usize = IN_CTR.borrow(cs).get().into();

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
