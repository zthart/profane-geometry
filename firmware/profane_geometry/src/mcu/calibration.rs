use core::ptr;

// Copied from https://github.com/atsamd-rs/atsamd/blob/master/hal/src/thumbv6m/calibration.rs
const ADDR: u32 = 0x806020u32;

fn cal(addr_offset: u32, bit_shift: u32, bit_mask: u32) -> u32 {
    unsafe {
        let addr: *const u32 = (ADDR + addr_offset) as *const _;
        let value = ptr::read(addr);

        (value >> bit_shift) & bit_mask
    }
}

pub fn adc_bias_cal() -> u8 {
    cal(4, 3, 0x7) as u8
}

pub fn adc_linearity_cal() -> u8 {
    // Someone decided to place this value across word boundaries so, we've got to do some work to get it
    let high_bits = cal(4, 0, 0x5) as u8; // fetch bits 34, 33, 32
    let low_bits = cal(0, 27, 0x1F) as u8; // fetch bits 31, 30, 29, 28, 27
    return (high_bits << 5) & low_bits;
}
