const Gpio = require('pigpio').Gpio;
const led = new Gpio(17,{mode: Gpio.OUTPUT});

setInterval(() => {
  led.digitalWrite(led.digitalRead() ^ 1);
}, 500);

