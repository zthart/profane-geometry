//! # MCP4728
//!
//! Sparse implementation of some of the write functions provided by the MCP4728 4-channel I2C DAC.

use embedded_hal::blocking::i2c::Write;

use atsamd_hal as hal;
use hal::sercom::I2CError;

pub struct MCP4728<I2C> {
    i2c: I2C,
    address: u8,
}

pub enum Channel {
    _1,
    _2,
    _3,
    _4,
}

impl Channel {
    fn as_channel_num(&self) -> u8 {
        match self {
            Channel::_1 => 0,
            Channel::_2 => 1,
            Channel::_3 => 2,
            Channel::_4 => 3,
        }
    }
}

const MAX_VALUE: u16 = u16::pow(2, 12) - 1;
const SINGLE_CHANNEL_WRITE: u8 = 0b01011000;

// probably things that would be nice to provide a builder for, but eh whatever. Future stuff
const DAC_VREF: u8 = 1;
const DAC_PD_MODE: u8 = 2;
const DAC_OUTPUT_GAIN: u8 = 1;
impl<I2C> MCP4728<I2C>
where
    I2C: Write<Error = I2CError>,
{
    /// Construct an instance of the MCP4728 struct given a pre-initialized I2C bus connection and the 8bit I2C address
    /// of the desired IC.
    ///
    /// # Arguments
    ///
    /// * `i2c` - A pre-initialized I2C bus via which the target MCP4728 hardware is connected
    /// * `address` - The I2C address for the MCP4728 (the default address is generally `0b01100000`)
    pub fn init(i2c: I2C, address: u8) -> Self {
        MCP4728 { i2c, address }
    }

    /// Returns the max value of the DAC - The MCP4728 is a 12-bit DAC, so this value is 2^12 - 1.
    pub fn get_max_value(&self) -> u16 {
        MAX_VALUE
    }

    /// Writes the provided value to the provided channel.
    ///
    /// # Arguments
    ///
    /// * `channel` - The DAC channel - channel numbers are zero-indexed in much of the hardware documentation, but have
    ///     been 1-indexed via the `Channel` enum
    /// * `value` - The value to write to the DAC (despite being a `u16`, only the lower 12 bits will be written)
    pub fn write_single_channel(&mut self, channel: Channel, value: u16) {
        let write_bytes: [u8; 3] = [
            SINGLE_CHANNEL_WRITE | ((channel.as_channel_num() & 0x3) << 1),
            DAC_VREF << 7 | DAC_PD_MODE << 6 | DAC_OUTPUT_GAIN << 4 | (value >> 8 & 0xF) as u8,
            (value & 0xFF) as u8,
        ];

        match self.i2c.write(self.address, &write_bytes) {
            Ok(_) => (),
            Err(e) => match e {
                // TODO: Handle some errors
                I2CError::AddressError => (), // If we try to connect to our DAC and it isn't at the address we expect it to be, do something
                I2CError::Nack => (), // If our dac fails to ACK some of our data, do something
                _ => (), // The rest of the errors seem unlikely for us to run into, but hey who knows
            },
        }
    }
}
