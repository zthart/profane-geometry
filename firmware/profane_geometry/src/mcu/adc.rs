use atsamd_hal::clock::GenericClockController;

use bsp::pac;
use feather_m0 as bsp;

use pac::adc::{avgctrl, ctrlb, inputctrl, refctrl};
use pac::{interrupt, ADC, PM};

use embedded_hal::adc::Channel;

use cortex_m::peripheral::NVIC;

pub struct Adc<ADC> {
    adc: ADC,
}

impl Adc<ADC> {
    pub fn configure(
        adc: ADC,
        pm: &mut PM,
        clocks: &mut GenericClockController,
    ) -> AdcBuilder<ADC> {
        pm.apbcmask.modify(|_, w| w.adc_().set_bit());

        let gclk0 = clocks.gclk0();
        clocks.adc(&gclk0).expect("adc clock setup failed");
        while adc.status.read().syncbusy().bit_is_set() {}

        // Disable and reset the ADC
        adc.ctrla.modify(|_, w| w.enable().clear_bit());
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.ctrla.modify(|_, w| w.swrst().set_bit());
        while adc.status.read().syncbusy().bit_is_set() {}

        // Configure prescaler and resolution
        adc.ctrlb.modify(|_, w| {
            w.prescaler().div32();
            w.ressel()._12bit()
        });
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.sampctrl.modify(|_, w| unsafe { w.samplen().bits(5) });
        while adc.status.read().syncbusy().bit_is_set() {}

        adc.inputctrl.modify(|_, w| w.muxneg().gnd());
        while adc.status.read().syncbusy().bit_is_set() {}

        // Send our ADC into the builder with the following defaults:
        // - Single samples
        // - DIV2 Gain (because our reference is:)
        // - INTVCC1 reference (which is VCC/2 = 1.65v)
        let builder = AdcBuilder { adc };

        builder
            .with_samples(avgctrl::SAMPLENUM_A::_1)
            .with_gain(inputctrl::GAIN_A::DIV2)
            .with_reference(refctrl::REFSEL_A::INTVCC1)
    }

    pub fn get_pin_channel<PIN>(_pin: PIN) -> u8
    where
        PIN: Channel<ADC, ID = u8>,
    {
        PIN::channel()
    }

    pub fn has_result(&self) -> bool {
        self.adc.intflag.read().resrdy().bit_is_set()
    }

    pub fn read_result(&self) -> u16 {
        self.adc.result.read().result().bits()
    }

    pub fn enable_interrupts(&self, nvic: &mut pac::NVIC) {
        unsafe {
            nvic.set_priority(interrupt::ADC, 1);
            NVIC::unmask(interrupt::ADC)
        }
        self.adc.intenset.modify(|_, w| w.resrdy().set_bit());
    }

    pub fn scan_channel(&self, channel: u8) {
        while self.adc.status.read().syncbusy().bit_is_set() {}
        self.adc
            .inputctrl
            .modify(|_, w| unsafe { w.muxpos().bits(channel) });
        while self.adc.status.read().syncbusy().bit_is_set() {}
        self.adc.swtrig.modify(|_, w| w.start().set_bit());
    }
}

pub struct AdcBuilder<ADC> {
    adc: ADC,
}

impl AdcBuilder<ADC> {
    pub fn with_samples(self, samplenum: avgctrl::SAMPLENUM_A) -> Self {
        use avgctrl::SAMPLENUM_A;
        self.adc.avgctrl.modify(|_, w| {
            w.samplenum().variant(samplenum);
            unsafe {
                w.adjres().bits(match samplenum {
                    SAMPLENUM_A::_1 => 0,
                    SAMPLENUM_A::_2 => 1,
                    SAMPLENUM_A::_4 => 2,
                    SAMPLENUM_A::_8 => 3,
                    _ => 4,
                })
            }
        });

        while self.adc.status.read().syncbusy().bit_is_set() {}

        self
    }

    pub fn with_gain(self, gain: inputctrl::GAIN_A) -> Self {
        self.adc.inputctrl.modify(|_, w| w.gain().variant(gain));
        while self.adc.status.read().syncbusy().bit_is_set() {}

        self
    }

    pub fn with_reference(self, refsel: refctrl::REFSEL_A) -> Self {
        self.adc.refctrl.modify(|_, w| w.refsel().variant(refsel));
        while self.adc.status.read().syncbusy().bit_is_set() {}

        self
    }

    pub fn with_calibration(self, bias_cal: u8, linearity_cal: u8) -> Self {
        self.adc.calib.modify(|_, w| unsafe {
            w.bias_cal().bits(bias_cal);
            w.linearity_cal().bits(linearity_cal)
        });
        while self.adc.status.read().syncbusy().bit_is_set() {}

        self
    }

    pub fn with_resolution(self, resolution: ctrlb::RESSEL_A) -> Self {
        self.adc.ctrlb.modify(|_, w| w.ressel().variant(resolution));
        while self.adc.status.read().syncbusy().bit_is_set() {}

        self
    }

    pub fn with_reference_buffer(self) -> Self {
        self.adc.refctrl.modify(|_, w| w.refcomp().set_bit());
        while self.adc.status.read().syncbusy().bit_is_set() {}

        self
    }

    pub fn enable(self) -> Adc<ADC> {
        self.adc.ctrla.modify(|_, w| w.enable().set_bit());
        while self.adc.status.read().syncbusy().bit_is_set() {}

        Adc { adc: self.adc }
    }
}
