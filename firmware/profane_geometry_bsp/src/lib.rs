//! Board support crate for the Profane Geometry Eurorack Module
//! 
//! Profane geometry is an atsamd21-based open-source triangle-based quad-oscillator module, with firmware written 
//! in rust (obviously). This BSP (Board support package) is based on the work by the lovely people at [atsamd-rs](https://github.com/atsamd-rs),
//! and depends on the `atsamd-hal` HAL (hardware abstraction layer) and atsamd21g PAC (peripheral access crate). Check
//! out these packages to get some more info.
//! 
//! # How to use
//! 
//! ```
//! use profane_geometry_bsp as bsp;
//! use bsp:hal;
//! use bsp:pac;
//! 
//! // Now you have each of your bsp, hal, and pac modules available!
//! ```

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
            /// Scaled V/Oct input        
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
                AlternateB: PwmCv
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
            /// Wiper LED for the notch wave slider
            name: nt_slider_led,
            aliases: {
                PushPullOutput: NtSliderLed,
                AlternateF: NtSliderLedPwm
            }
        }
        PA12 {
            /// Data pin for the I2C master used for the DAC
            name: dac_sda,
            aliases: {
                AlternateD: DacSda
            }
        }
        PA13 {
            /// Clock pin for the I2C master used for the DAC
            name: dac_scl,
            aliases: {
                AlternateD: DacScl
            }
        }
        // PA14 NC
        // PA15 NC
        PA16 {
            /// Data pin for the I2C master used for RGB LEDs on the jackboard
            name: rgb_sda,
            aliases: {
                AlternateC: RgbSda
            }
        }
        PA17 {
            /// Clock pin for the I2C master used for RGB LEDs on the jackboard
            name: rgb_scl,
            aliases: {
                AlternateC: RgbScl
            }
        }
        // PA18 NC
        // PA19 NC
        PA20 {
            /// The red shine-through power LED, PWM capable
            name: power_led,
            aliases: {
                PushPullOutput: PowerLed,
                AlternateF: PowerLedPwm
            }
        }
        // PA21 - PA23 NC
        PA24 {
            /// The D- pin for the USB connection
            name: usb_dm,
            aliases: {
                AlternateG: UsbDm
            }
        }
        PA25 {
            /// The D+ pin for the USB connection
            name: usb_dp,
            aliases: {
                AlternateG: UsbDp
            }
        }
        // PA27 - PA28 NC
        PA30 {
            /// SWCLK - Debug interface exposed via the tagconnect footprint
            name: swclk
        }
        PA31 {
            /// SWDIO - Debug interface exposed via the tagconnect footprint
            name: swdio
        }

        // PB02 - PB09 NC
        // PB10 Defined above
        // PB11 Defined above
        // PB12 - PB23 NC
    );
}

pub use pins::*;
