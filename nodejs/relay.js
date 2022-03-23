const Gpio = require('pigpio').Gpio;
const relay = new Gpio(17,{mode: Gpio.OUTPUT});

setInterval(() => {
  relay.digitalWrite(!relay.digitalRead());
}, 500);

process.on('SIGINT',function(){
  relay.digitalWrite(0);
  process.exit();
});
