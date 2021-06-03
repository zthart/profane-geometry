use atsamd_hal::clock::GenericClockController;

use atsamd21g as pac;
use pac::adc::{avgctrl, inputctrl, refctrl};
use pac::{ADC, PM};

pub struct Adc<ADC> {
    adc: ADC,
}

impl Adc<ADC> {
    pub fn adc(
        adc: ADC,
        linearity: u8,
        bias: u8,
        pm: &mut PM,
        clocks: &mut GenericClockController,
    ) -> Self {
        pm.apbcmask.modify(|_, w| w.adc_().set_bit());

        let gclk0 = clocks.gclk0();
        clocks.adc(&gclk0).expect("adc clock setup failed");
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.ctrla.modify(|_, w| w.swrst().set_bit());
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.ctrlb.modify(|_, w| {
            w.prescaler().div32();
            w.ressel()._16bit()
        });
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.sampctrl.modify(|_, w| unsafe { w.samplen().bits(5) });
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.inputctrl.modify(|_, w| w.muxneg().gnd());
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.avgctrl.modify(|_, w| {
            w.samplenum().variant(avgctrl::SAMPLENUM_A::_32);
            unsafe { w.adjres().bits(4) }
        });
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.inputctrl
            .modify(|_, w| w.gain().variant(inputctrl::GAIN_A::DIV2));
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.refctrl
            .modify(|_, w| w.refsel().variant(refctrl::REFSEL_A::INTVCC1));
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.calib.modify(|_, w| unsafe {
            w.bias_cal().bits(bias);
            w.linearity_cal().bits(linearity)
        });
        while adc.status.read().syncbusy().bit_is_set() {}

        Self { adc }
    }
}
