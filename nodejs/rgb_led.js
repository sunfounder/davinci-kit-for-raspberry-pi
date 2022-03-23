const Gpio = require('pigpio').Gpio;
const ledred = new Gpio(17, { mode: Gpio.OUTPUT });
const ledgreen = new Gpio(18, { mode: Gpio.OUTPUT });
const ledblue = new Gpio(27, { mode: Gpio.OUTPUT });

function colorset(r, g, b) {
  ledred.pwmWrite(r);
  ledgreen.pwmWrite(g);
  ledblue.pwmWrite(b);
}

var color_index = -1;

setInterval(() => {
  color_index += 1;
  switch (color_index) {
    case 0:
      colorset(0xff, 0x00, 0xFF);
      break;
    case 1:
      colorset(0x00, 0xff, 0x00);
      break;
    case 2:
      colorset(0x00, 0x00, 0xff);
      break;
    case 3:
      colorset(0xff, 0xff, 0x00);
      break;
    case 4:
      colorset(0xff, 0x00, 0xff);
      break;
    case 5:
      colorset(0xc0, 0xff, 0x3e);
      break;
    default:
      color_index=-1;
  }
}, 500);