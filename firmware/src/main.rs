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
use hal::gpio::v2::{AlternateB, DynPin, Pin};
use hal::pad::PadPin;
use hal::prelude::*;
use hal::pwm::{Channel, Pwm1, Pwm2};
use hal::sercom::{I2CError, I2CMaster4};
use hal::time::KiloHertz;

use pac::{interrupt, CorePeripherals, Peripherals};

use cortex_m::asm::delay as cycle_delay;

use core::cell::RefCell;

use cortex_m::interrupt::Mutex;

mod dac;
mod mcu;

static ADC_INSTANCE: Mutex<RefCell<Option<mcu::adc::Adc<pac::ADC>>>> =
    Mutex::new(RefCell::new(None));

static DAC_ADDRESS: u8 = 0b01100000;

static SINGLE_CHANNEL_WRITE: u8 = 0b01011000;
static DAC_VREF: u8 = 1;
static DAC_PD_MODE: u8 = 2;
static DAC_OUTPUT_GAIN: u8 = 1;

static DAC_MAX_VALUE: u16 = u16::pow(2, 12) - 1;

fn dac_write_single_channel<I2C>(i2c: &mut I2C, channel: dac::Channel, value: u16)
where
    I2C: embedded_hal::blocking::i2c::Write<Error = I2CError>,
{
    let write_bytes: [u8; 3] = [
        SINGLE_CHANNEL_WRITE | ((channel.as_channel_num() & 0x3) << 1),
        DAC_VREF << 7 | DAC_PD_MODE << 6 | DAC_OUTPUT_GAIN << 4 | (value >> 8 & 0xF) as u8,
        (value & 0xFF) as u8, // suspect
    ];

    match i2c.write(DAC_ADDRESS, &write_bytes) {
        Ok(_) => (),
        Err(e) => match e {
            // TODO: Handle some errors
            I2CError::AddressError => (), // If we try to connect to our DAC and it isn't at the address we expect it to be, do something
            I2CError::Nack => (),         // If our dac fails to ACK some of our data, do something
            _ => (), // The rest of the errors seem unlikely for us to run into, but hey who knows
        },
    }
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
    let mut pins = hal::Pins::new(peripherals.PORT);

    // Configure i2c
    let mut i2c = {
        let i2c_sda = pins.a1.into_function_d(&mut pins.port);
        let i2c_scl = pins.a2.into_function_d(&mut pins.port);

        I2CMaster4::new(
            &clocks.sercom4_core(&gclk0).unwrap(),
            KiloHertz(400),
            peripherals.SERCOM4,
            &mut peripherals.PM,
            i2c_sda.into_pad(&mut pins.port),
            i2c_scl.into_pad(&mut pins.port),
        )
    };

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
            let adc = ADC_INSTANCE.borrow(cs).borrow();
            adc.as_ref().unwrap().enable_interrupts(&mut core.NVIC);
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
    let mut notch_led = pins.d12.into_open_drain_output(&mut pins.port);
    let mut pulse_led = pins.d11.into_open_drain_output(&mut pins.port);
    let mut square_led = pins.d10.into_open_drain_output(&mut pins.port);
    let _tri_led = pins.d9.into_function_e(&mut pins.port);

    // Enable our slider LEDs
    {
        notch_led.set_high().unwrap();
        pulse_led.set_high().unwrap();
        square_led.set_high().unwrap();
        pwm1.set_duty(Channel::_1, pwm1.get_max_duty());
    }

    // Analog ins, all ADC inputs need to be sent to function b
    {
        let v_oct_scaled: DynPin = pins.a3.into();
        let pulse_cv_scaled: DynPin = pins.a4.into();
        let pulse_pot: DynPin = pins.a5.into();

        let input_pints: [Pin<_, AlternateB>; 3];
        // // V/Oct Scaled
        // pins.a3.into_function_b(&mut pins.port);
        // // Pulse width CV Scaled
        // pins.a4.into_function_b(&mut pins.port);
        // // Pulse width pot scaled
        // pins.a5.into_function_b(&mut pins.port);
    }
    let mut status_ctr = 0;
    let status_thresh = 16;

    loop {
        if status_ctr == status_thresh {
            status_ctr = 0;
        }

        // dac_write_single_channel(&mut i2c, dac::Channel::_1, DAC_MAX_VALUE - pulse_pot_val);
        // dac_write_single_channel(&mut i2c, dac::Channel::_2, DAC_MAX_VALUE - pulse_pot_val);

        // dac_write_single_channel(&mut i2c, dac::Channel::_3, pulse_cv_val); //pwm

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
        // pwm1.set_duty(
        //     // Tri Slider LED
        //     Channel::_1,
        //     pwm1.get_max_duty() as u32 - (pulse_pot_val * 12) as u32,
        // );

        status_ctr += 1;
        cycle_delay(1024 * 1024);
    }
}

#[interrupt]
fn ADC() {
    // I read something somewhere that if you throw the static mut here you don't gotta use unsafe to mutate it maybe
    // so lets see
    static mut COUNTER: u8 = 0;

    // The interrupt for the ADC is not enabled before the ADC is configured, so we don't need
    // an if let here to ensure that we don't have a None sitting in the RefCell
    let mut result: u16 = 0;
    cortex_m::interrupt::free(|cs| {
        let adc = ADC_INSTANCE.borrow(cs).borrow();
        result = adc.as_ref().unwrap().read_result();
    });

    // now I need some way to shift which channel is being read by the ADC...
}
