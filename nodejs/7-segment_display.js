const Gpio = require('pigpio').Gpio;

const segCode = [0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71];

const SDI = new Gpio(17, { mode: Gpio.OUTPUT });
const RCLK = new Gpio(18, { mode: Gpio.OUTPUT });
const SRCLK = new Gpio(27, { mode: Gpio.OUTPUT });

function hc595_shift(dat) {
    for (let j = 0; j < 8; j++) {
        let code = 0x80 & (dat << j);
        if (code != 0) {
            code = 1;
        }
        SDI.digitalWrite(code);
        SRCLK.trigger(1,1);
    }
    RCLK.trigger(1,1);
}

let index = -1;
setInterval(() => {
    index = (index+1)%16;
    hc595_shift(segCode[index]);
}, 1000);


