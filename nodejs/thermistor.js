const Gpio = require('pigpio').Gpio;
const ADC0834 = require('./adc0834.js').ADC0834;


const adc = new ADC0834(17, 18, 27);

setInterval(() => {
  adc.read(0).then((value) => {
    var Vr = 5 * value / 255;
    var Rt = 10000 * Vr / (5 - Vr);
    var temp = 1 / ((Math.log(Rt/10000) / 3950)+(1 / (273.15 + 25)));
    var cel = (temp - 273.15).toFixed(2);
    var Fah = (cel * 1.8 + 32).toFixed(2);
    console.log(`Celsius: ${cel} C  Fahrenheit: ${Fah} F\n`);
  }, (error)=>{
    console.log("Error: " + error);
  });
}, 1000);