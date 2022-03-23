const Gpio = require('pigpio').Gpio;
const active = new Gpio(17,{mode: Gpio.OUTPUT});

setInterval(() => {
  active.digitalWrite(!active.digitalRead());
}, 500);

process.on('SIGINT',function(){
  active.digitalWrite(1);
  process.exit();
});