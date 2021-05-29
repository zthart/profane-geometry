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
use hal::pwm::{Channel, Pwm2};
use hal::sercom::I2CMaster4;
use hal::time::KiloHertz;
use hal::timer::TimerCounter;

use cortex_m::asm::delay as cycle_delay;

mod utils;

// We would typically need to care about the C2/C1/C0 and PD1/PD0 bits, but for fast
// write mode, they're actually just all zero. So just masking the u16s down to 12-bit values
// is good enough for us
static DAC_BIT_MASK_12: u16 = 0b0000111111111111;
static DAC_ADDRESS: u8 = 0b1100000;

fn dac_fast_write<I2C>(i2c: &mut I2C, ch_a: u16, ch_b: u16, ch_c: u16, ch_d: u16)
where
    I2C: embedded_hal::blocking::i2c::Write,
{
    let channels_as_bytes: [[u8; 2]; 4] = [
        (ch_a & DAC_BIT_MASK_12).to_le_bytes(),
        (ch_b & DAC_BIT_MASK_12).to_le_bytes(),
        (ch_c & DAC_BIT_MASK_12).to_le_bytes(),
        (ch_d & DAC_BIT_MASK_12).to_le_bytes(),
    ];

    let mut write_bytes: [u8; 8] = [0; 8];
    let mut ins = 0;

    for [msb, lsb] in channels_as_bytes.iter() {
        write_bytes[ins] = *msb;
        write_bytes[ins + 1] = *lsb;
        ins += 2;
    }

    i2c.write(DAC_ADDRESS, &write_bytes);
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
    adc.samples(adc::avgctrl::SAMPLENUM_A::_8);

    let tcc2_tc3 = &clocks.tcc2_tc3(&gclk0).unwrap();
    let mut pwm2 = Pwm2::new(tcc2_tc3, 1.khz(), peripherals.TCC2, &mut peripherals.PM);

    let mut timer = TimerCounter::tc3_(tcc2_tc3, peripherals.TC3, &mut peripherals.PM);
    let _max_freq = 5000u16;
    let note_freq = 440u16;
    timer.start((note_freq as u32 * 2).hz());

    let _red_led = pins.d13.into_function_e(&mut pins.port);

    let mut notch_led = pins.d12.into_open_drain_output(&mut pins.port);
    let mut pulse_led = pins.d11.into_open_drain_output(&mut pins.port);
    let mut square_led = pins.d10.into_open_drain_output(&mut pins.port);
    let mut tri_led = pins.d9.into_open_drain_output(&mut pins.port);

    let _v_oct_scaled = pins.a3.into_function_b(&mut pins.port);
    let _pulse_width_scaled = pins.a4.into_function_b(&mut pins.port);
    let _pulse_pot = pins.a5.into_function_b(&mut pins.port);

    let max_duty = pwm2.get_max_duty();
    let max_adc_val = 4095u16;
    let adc_duty_scale = max_duty / max_adc_val as u32;
    let mut denom: u32 = 2;
    let mut sign: i8 = 1;

    // Enable our slider LEDs
    {
        notch_led.set_high().unwrap();
        pulse_led.set_high().unwrap();
        square_led.set_high().unwrap();
        tri_led.set_high().unwrap();
    }

    loop {
        if denom > 31 || denom < 2 {
            sign *= -1
        }
        dac_fast_write(
            &mut i2c,
            utils::charge_voltage_for_frequency(440),
            utils::charge_voltage_for_frequency(440),
            2048u16, // this is pulse width, /should/ be scaled right in hardware that 0v is ~0% and 3.3v is 100% but, whomst is to say
            0u16,    // unused
        );
        pwm2.set_duty(Channel::_1, max_duty / 2);
        // This is too noisy, even at 8 sample averages- maybe I need a LUT of pitch reads -> timer freq?
        // timer.start((a1result as u32*2).hz());
        cycle_delay(1024 * 1024);
        if sign > 0 {
            denom += 1
        } else {
            denom -= 1
        }
    }
}
