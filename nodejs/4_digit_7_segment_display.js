
const Gpio = require('pigpio').Gpio;

var counter = 0;

const number = [0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90]; //for BS
// const number = [0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f]; //for AS

const SDI = new Gpio(24, { mode: Gpio.OUTPUT });
const RCLK = new Gpio(23, { mode: Gpio.OUTPUT });
const SRCLK = new Gpio(18, { mode: Gpio.OUTPUT });

const pin1 = new Gpio(10, { mode: Gpio.OUTPUT });
const pin2 = new Gpio(22, { mode: Gpio.OUTPUT });
const pin3 = new Gpio(27, { mode: Gpio.OUTPUT });
const pin4 = new Gpio(17, { mode: Gpio.OUTPUT });
const placePin = [pin1, pin2, pin3, pin4];

function clearDisplay() {
    hc595_shift(0xff); //for BS
    // hc595_shift(0x00); //for AS
}

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

function pickDigit(digit) {
    // for BS
    for(let i=0;i<4;i++){
        placePin[i].digitalWrite(0);
    }
    placePin[digit].digitalWrite(1);

    // // for AS
    // for (let i = 0; i < 4; i++) {
    //     placePin[i].digitalWrite(1);
    // }
    // placePin[digit].digitalWrite(0);

}


let digit = -1
setInterval(() => {
    digit = (digit +1)% 4
    clearDisplay();
    pickDigit(digit);
    switch(digit){
        case 0:
            hc595_shift(number[Math.floor(counter % 10)]);  
            break;
        case 1:
            hc595_shift(number[Math.floor(counter % 100 / 10)]);
            break;        
        case 2:
            hc595_shift(number[Math.floor(counter % 1000 / 100)]);
            break;        
        case 3:
            hc595_shift(number[Math.floor(counter % 10000 / 1000)]);
            break;
    }
}, 5);

setInterval(() => {
    counter++;
}, 1000);

