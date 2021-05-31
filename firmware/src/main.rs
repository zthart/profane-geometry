#![no_std]
#![no_main]

#[cfg(not(feature = "use_semihosting"))]
use panic_halt as _;
#[cfg(feature = "use_semihosting")]
use panic_semihosting as _;

use feather_m0 as hal;
use hal::adc::Adc;
use hal::clock::GenericClockController;
use hal::entry;
use hal::pac::{adc, Peripherals};
use hal::pad::PadPin;
use hal::prelude::*;
use hal::pwm::{Channel, Pwm1, Pwm2};
use hal::sercom::{I2CError, I2CMaster4};
use hal::time::KiloHertz;

use cortex_m::asm::delay as cycle_delay;

mod utils;

static DAC_ADDRESS: u8 = 0b01100000;

static SINGLE_CHANNEL_WRITE: u8 = 0b01011000;
static DAC_VREF: u8 = 1;
static DAC_PD_MODE: u8 = 2;
static DAC_OUTPUT_GAIN: u8 = 1;
static DAC_MAX_VALUE: u16 = u16::pow(1, 12) - 1;

fn dac_write_single_channel<I2C>(i2c: &mut I2C, ch_num: u8, value: u16)
where
    I2C: embedded_hal::blocking::i2c::Write<Error = I2CError>,
{
    let write_bytes: [u8; 3] = [
        SINGLE_CHANNEL_WRITE | ((ch_num & 0x3) << 1),
        DAC_VREF << 7 | DAC_PD_MODE << 6 | DAC_OUTPUT_GAIN << 4 | (value >> 8 & 0xF) as u8,
        (value & 0xFF) as u8,
    ];

    match i2c.write(DAC_ADDRESS, &write_bytes) {
        Ok(_) => (),
        Err(e) => match e {
            // TODO: Handle some errors
            I2CError::AddressError => (),
            I2CError::Nack => (),
            _ => (),
        },
    }
}

#[entry]
fn main() -> ! {
    let mut peripherals = Peripherals::take().unwrap();
    let mut clocks = GenericClockController::with_external_32kosc(
        peripherals.GCLK,
        &mut peripherals.PM,
        &mut peripherals.SYSCTRL,
        &mut peripherals.NVMCTRL,
    );
    let gclk0 = clocks.gclk0();
    let mut pins = hal::Pins::new(peripherals.PORT);
    let i2c_sda = pins.a1.into_function_d(&mut pins.port);
    let i2c_scl = pins.a2.into_function_d(&mut pins.port);

    let mut i2c = I2CMaster4::new(
        &clocks.sercom4_core(&gclk0).unwrap(),
        KiloHertz(400),
        peripherals.SERCOM4,
        &mut peripherals.PM,
        i2c_sda.into_pad(&mut pins.port),
        i2c_scl.into_pad(&mut pins.port),
    );

    let mut adc = Adc::adc(peripherals.ADC, &mut peripherals.PM, &mut clocks);

    // Configure ADC
    {
        adc.samples(adc::avgctrl::SAMPLENUM_A::_4);
        // On the dev hardware, I didn't wire up VREFA, so we'll wire our voltage ref to the VCC1 ref (which is VDDANA / 2)
        adc.reference(adc::refctrl::REFSEL_A::INTVCC1);
        // And we also have to compensate our gain to be /2 to get accurate readings
        adc.gain(adc::inputctrl::GAIN_A::DIV2);
    }

    let mut pwm1 = {
        let tcc0_tcc1 = &clocks.tcc0_tcc1(&gclk0).unwrap();
        Pwm1::new(tcc0_tcc1, 1.khz(), peripherals.TCC1, &mut peripherals.PM)
    };

    let mut pwm2 = {
        let tcc2_tc3 = &clocks.tcc2_tc3(&gclk0).unwrap();
        Pwm2::new(tcc2_tc3, 1.khz(), peripherals.TCC2, &mut peripherals.PM)
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
    let _v_oct_scaled = pins.a3.into_function_b(&mut pins.port);
    let _pulse_width_scaled = pins.a4.into_function_b(&mut pins.port);
    let mut pulse_pot = pins.a5.into_function_b(&mut pins.port);

    loop {
        let pulse_pot_val: u16 = adc.read(&mut pulse_pot).unwrap();

        dac_write_single_channel(&mut i2c, 0, DAC_MAX_VALUE - pulse_pot_val);
        dac_write_single_channel(&mut i2c, 1, DAC_MAX_VALUE - pulse_pot_val);
        dac_write_single_channel(&mut i2c, 2, 2048u16); //pwm

        pwm2.set_duty(Channel::_1, pulse_pot_val as u32);
        pwm1.set_duty(Channel::_1, pulse_pot_val as u32);
        cycle_delay(1024 * 1024);
    }
}
