const Gpio = require('pigpio').Gpio;

MotorPin1 = new Gpio(17, { mode: Gpio.OUTPUT });
MotorPin2 = new Gpio(27, { mode: Gpio.OUTPUT });
MotorEnable = new Gpio(22, { mode: Gpio.OUTPUT });

// Define a motor function to spin the motor
// direction should be
// 2(clockwise), 1(counterclockwise), 0(stop)
function motor(direction) {
    switch (direction) {
        case 2: // Clockwise
            // Set direction
            MotorPin1.digitalWrite(1)
            MotorPin2.digitalWrite(0)
            // Enable the motor
            MotorEnable.digitalWrite(1)
            console.log('Clockwise')
            break;
        case 1:  // Counterclockwise
            // Set direction
            MotorPin1.digitalWrite(0)
            MotorPin2.digitalWrite(1)
            // Enable the motor
            MotorEnable.digitalWrite(1)
            console.log('Counterclockwise')
            break;
        case 0: // Stop
            // Disable the motor
            MotorEnable.digitalWrite(0)
            console.log('Stop')

    }
}

process.on('SIGINT', function () {
    MotorEnable.digitalWrite(0)
    process.exit();
})

let index=-1
setInterval(() => {
    index=(index+1)%3
    motor(index)
}, 1000)    

