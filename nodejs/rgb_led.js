const Gpio = require('pigpio').Gpio;
const ledred = new Gpio(17,{mode: Gpio.OUTPUT});
const ledgreen = new Gpio(18,{mode: Gpio.OUTPUT});
const ledblue = new Gpio(27,{mode: Gpio.OUTPUT});

function colorset(r,g,b){
    ledred.pwmWrite(r);
    ledgreen.pwmWrite(g);
    ledblue.pwmWrite(b);
}

function delay(ms){
  var start = new Date().getTime();	
  while(true){
    if(new Date().getTime() - start > ms){
      break;		
	}	  
  }
}

setInterval(() => {
  colorset(0xff,0x00,0x00);
  delay(500);
  colorset(0x00,0xff,0x00);
  delay(500);
  colorset(0x00,0x00,0xff);
  delay(500);
  colorset(0xff,0xff,0x00);
  delay(500);
  colorset(0xff,0x00,0xff);
  delay(500);
  colorset(0xc0,0xff,0x3e);
  delay(500);      
}, 500);