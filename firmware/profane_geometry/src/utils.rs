pub static TCC_GLCK_RESOLUTION: u32 = u32::pow(2, 24);
pub static ADC_RESOLUTION: u16 = u16::pow(2, 12);
pub static ADC_SCALE: u16 = 6u16;

use micromath::F32Ext;

pub fn charge_voltage_for_frequency(frequency: u16) -> u16 {
    let slope = 1.0f32;
    let target_voltage = 10f32;

    // this max frequency can be increased potentially by decreasing the 1M resistor for the fine tune (resulting in less fine control of pitch)
    // but also by using the rack 5V supply for the DAC, since it's rail to rail (could also slightly decrease fine pitch control, but potentially to a lesser degree).
    let max_frequency = 3_750u16;

    let max_dac_voltage = 3.3f32;

    let dac_resolution = u16::pow(2, 12) - 1;

    let calculated =
        (slope * target_voltage as f32 * frequency as f32 / max_frequency as f32 / max_dac_voltage
            * dac_resolution as f32)
            .round() as u16;

    // no_std means no cmp::min, so we'll just do things the old fashioned way
    if calculated < dac_resolution {
        calculated
    } else {
        dac_resolution
    }
}
