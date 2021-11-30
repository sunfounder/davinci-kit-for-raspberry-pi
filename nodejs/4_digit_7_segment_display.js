
const Gpio = require('pigpio').Gpio;

var counter = 0;

const number = [0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90];
const SDI = new Gpio(24, {
    mode: Gpio.OUTPUT,
    pullUpDown: Gpio.PUD_DOWN,             
});
const RCLK = new Gpio(23, {
    mode: Gpio.OUTPUT,
    pullUpDown: Gpio.PUD_DOWN,             
});
const SRCLK = new Gpio(18, {
    mode: Gpio.OUTPUT,
    pullUpDown: Gpio.PUD_DOWN,             
});

const pin1 = new Gpio(10, {mode: Gpio.OUTPUT});
const pin2 = new Gpio(25, {mode: Gpio.OUTPUT});
const pin3 = new Gpio(27, {mode: Gpio.OUTPUT});
const pin4 = new Gpio(17, {mode: Gpio.OUTPUT});
const placePin = [pin1,pin2,pin3,pin4];

function delay(ms){
  var start = new Date().getTime();	
  while(true){
    if(new Date().getTime() - start > ms){
      break;		
	}	  
  }
}

function clearDisplay(){
    for (let i=0;i<8;i++){
        SDI.digitalWrite(1);
        SRCLK.digitalWrite(1);
        SRCLK.digitalWrite(0);
    }    
    RCLK.digitalWrite(1);
    RCLK.digitalWrite(0);    
}

function hc595_shift(dat){
    for (let j=0;j<8;j++){
        let code = 0x80 & (dat << j);
        if (code != 0){
            code = 1;
        }
        SDI.digitalWrite(code);
        SRCLK.digitalWrite(1);
        SRCLK.digitalWrite(0);
    }
    RCLK.digitalWrite(1);
    RCLK.digitalWrite(0);
}

function pickDigit(digit){
    pin1.digitalWrite(0);
    pin2.digitalWrite(0);
    pin3.digitalWrite(0);
    pin4.digitalWrite(0);
    placePin[digit].digitalWrite(1);
}

function A(){
    clearDisplay();
    pickDigit(0);
    hc595_shift(number[Math.floor(counter%10)]);    //Math.floor()向下取整
    delay(1);
    
    clearDisplay();
    pickDigit(1);
    hc595_shift(number[Math.floor(counter%100/10)]);
    delay(1);

    clearDisplay();
    pickDigit(2);
    hc595_shift(number[Math.floor(counter%1000/100)]);
    delay(1);

    clearDisplay();
    pickDigit(3);
    hc595_shift(number[Math.floor(counter%10000/1000)]);    
    delay(1);    
}

var start = new Date().getTime()
setInterval(() => {

    A();  
    let now = new Date().getTime()
    if (now - start >= 1000){
        counter++
        console.log(counter)
        start = now
    }
   
}, 1);

