const Gpio = require('pigpio').Gpio;
const ADC0834 = require('./adc0834.js').ADC0834;

const adc = new ADC0834(17, 18, 22);
const btn = new Gpio(25, {
    mode: Gpio.INPUT,
    pullUpDown: Gpio.PUD_UP,
});

setInterval(async() => {

    x_val = await adc.read(0);
    y_val = await adc.read(1);

    btn_val = btn.digitalRead();
    console.log(`x = ${x_val}, y = ${y_val}, btn = ${btn_val}\n`);
}, 100);
