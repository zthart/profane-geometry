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

impl<I2C> MCP4728<I2C>
where
    I2C: Write<Error = I2CError>,
{
    const MAX_VALUE: u16 = u16::pow(2, 12) - 1;
    const SINGLE_CHANNEL_WRITE: u8 = 0b01011000;

    // probably things that would be nice to provide a builder for, but eh whatever. Future stuff
    const DAC_VREF: u8 = 1;
    const DAC_PD_MODE: u8 = 2;
    const DAC_OUTPUT_GAIN: u8 = 1;

    pub fn init(i2c: I2C, address: u8) -> Self {
        MCP4728 { i2c, address }
    }

    pub fn get_max_value(&self) -> u16 {
        MCP4728::<I2C>::MAX_VALUE
    }

    pub fn write_single_channel(&mut self, channel: Channel, value: u16) {
        let write_bytes: [u8; 3] = [
            MCP4728::<I2C>::SINGLE_CHANNEL_WRITE | ((channel.as_channel_num() & 0x3) << 1),
            MCP4728::<I2C>::DAC_VREF << 7
                | MCP4728::<I2C>::DAC_PD_MODE << 6
                | MCP4728::<I2C>::DAC_OUTPUT_GAIN << 4
                | (value >> 8 & 0xF) as u8,
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
