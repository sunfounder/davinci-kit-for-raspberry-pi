const Gpio = require('pigpio').Gpio;

SERVO_MIN_ANGLE = 0
SERVO_MAX_ANGLE = 180
SERVO_MIN_PULSE = 500
SERVO_MAX_PULSE = 2500

ServoPin = new Gpio(18,{mode: Gpio.OUTPUT})

function map(value, inMin, inMax, outMin, outMax){
    return (outMax - outMin) * (value - inMin) / (inMax - inMin) + outMin
}

function angle2pulse(angle){
  return Math.floor(map(angle,SERVO_MIN_ANGLE,SERVO_MAX_ANGLE,SERVO_MIN_PULSE ,SERVO_MAX_PULSE))
}

let angle=90;
let step=5;
setInterval(() => {
  if(angle>=180||angle<=0){
    step=-step
  }
  angle+=step;
  ServoPin.servoWrite(angle2pulse(angle));
}, 20);
