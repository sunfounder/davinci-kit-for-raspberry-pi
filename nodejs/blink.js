const Gpio = require('pigpio').Gpio;
const led = new Gpio(17,{mode: Gpio.OUTPUT});

var led_state = 0;

// function blink_led(){
//   led.digitalWrite(led_state);
//   led_state = !led_state;
// }

// setInterval(blink_led,300);

setInterval(() => {
  led.digitalWrite(led_state);
  led_state = !led_state;
}, 300);