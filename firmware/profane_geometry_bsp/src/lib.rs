#![no_std]

#[cfg(feature = "rt")]
pub use cortex_m_rt::entry;

pub use atsamd_hal as hal;
pub use hal::ehal;
pub use hal::pac;

/// Definitions related to pins and pin aliases
pub mod pins {
    use super::hal;

    hal::bsp_pins!(
        PA02 {
            // Scaled V/Oct input        
            name: v_oct,
            aliases: {
                AlternateB: VOct
            }
        }
        PA03 {
            /// AREF pin - has 1uF capacitor to ground
            name: aref
        }
        PA04 {
            /// Scaled logic level input for the PWM cv jack
            name: pwm_cv,
            aliases: {
                AlternateB: PwmCV
            }
        }
        PA05 {
            /// Input from the pwm pot on the panel
            name: pwm_pot,
            aliases: {
                AlternateB: PwmPot
            }
        }
        PA06 {
            /// NC - named in schematic
            name: ain6
        }
        PA07 {
            /// NC - named in schematic
            name: ain7
        }
        // PA08 - PA09 NC
        PA10 {
            /// Wiper LED for the Triangle wave slider
            name: tri_slider_led,
            aliases: {
                PushPullOutput: TriSliderLed,
                AlternateF: TriSliderLedPwm
            }
        }
        PA11 {
            /// Wiper LED for the Square wave slider
            name: sq_slider_led,
            aliases: {
                PushPullOutput: SqSliderLed,
                AlternateF: SqSliderLedPwm
            }
        }
        PB10 {
            /// Wiper LED for the pulse wave slider
            name: pls_slider_led,
            aliases: {
                PushPullOutput: PlsSliderLed,
                AlternateF: PlsSliderLedPwm
            }
        }
        PB11 {
            name: nt_slider_led,
            aliases: {
                PushPullOutput: NtSliderLed,
                AlternateF: NtSliderLedPwm
            }
        }
        PA12 {
            name: dac_sda,
            aliases: {
                AlternateD: DacSda
            }
        }
        PA13 {
            name: dac_scl,
            aliases: {
                AlternateD: DacScl
            }
        }
        // PA14 NC
        // PA15 NC
        PA16 {
            name: rgb_sda,
            aliases: {
                AlternateC: RgbSda
            }
        }
        PA17 {
            name: rgb_scl,
            aliases: {
                AlternateC: RgbScl
            }
        }
        // PA18 NC
        // PA19 NC
        PA20 {
            name: power_led,
            aliases: {
                PushPullOutput: PowerLed,
                AlternateF: PowerLedPwm
            }
        }
        // PA21 - PA23 NC
        PA24 {
            name: usb_dm,
            aliases: {
                AlternateG: UsbDm
            }
        }
        PA25 {
            name: usb_dp,
            aliases: {
                AlternateG: UsbDp
            }
        }
        // PA27 - PA28 NC
        PA30 {
            name: swclk
        }
        PA31 {
            name: swdio
        }

        // PB02 - PB09 NC
        // PB10 Defined above
        // PB11 Defined above
        // PB12 - PB23 NC
    );
}
pub use pins::*;
