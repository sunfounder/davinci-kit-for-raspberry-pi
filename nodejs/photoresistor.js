const Gpio = require('pigpio').Gpio;
const ADC0834 = require('./adc0834.js').ADC0834;


const adc = new ADC0834(17, 18, 27);

const led = new Gpio(22, {mode: Gpio.OUTPUT});

setInterval(() => {
  adc.read(0).then((value) => {
    console.log(value);
    led.pwmWrite(value);
  }, (error)=>{
    console.log("Error: " + error);
  });
}, 100);

