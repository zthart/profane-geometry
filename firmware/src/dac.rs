pub enum Channel {
    _1,
    _2,
    _3,
    _4,
}

impl Channel {
    pub fn as_channel_num(&self) -> u8 {
        match self {
            Channel::_1 => 0,
            Channel::_2 => 1,
            Channel::_3 => 2,
            Channel::_4 => 3,
        }
    }
}
