const Gpio = require('pigpio').Gpio;

var pins = [17, 18, 27, 22, 23, 24, 25, 2, 3, 8];
var leds = [];
for (let i = 0; i < pins.length; i++) {
    leds[i] = new Gpio(pins[i], { mode: Gpio.OUTPUT });
}

function oddLedBarGraph() {
    for (let i = 0; i < leds.length; i++) {
        if (i % 2 == 1) {
            leds[i].digitalWrite(1);
        } else {
            leds[i].digitalWrite(0);
        }
    }
}

function evenLedBarGraph() {
    for (let i = 0; i < leds.length; i++) {
        if (i % 2 == 0) {
            leds[i].digitalWrite(1);
        } else {
            leds[i].digitalWrite(0);
        }
    };
}

var odd_even = 0;

setInterval(() => {
    odd_even = (odd_even + 1) % 2;
    if (odd_even == 1) {
        oddLedBarGraph();
    } else {
        evenLedBarGraph();
    }
}, 500);
