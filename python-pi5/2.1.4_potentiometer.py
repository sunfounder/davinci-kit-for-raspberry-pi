#!/usr/bin/env python3

from gpiozero import PWMLED
import ADC0834
import time

# Initialize a PWM LED on GPIO pin 22
led = PWMLED(22)

# Set up the ADC0834 module
ADC0834.setup()

def MAP(x, in_min, in_max, out_min, out_max):
    """
    Map a value from one range to another.
    :param x: The value to be mapped.
    :param in_min: The lower bound of the value's current range.
    :param in_max: The upper bound of the value's current range.
    :param out_min: The lower bound of the value's target range.
    :param out_max: The upper bound of the value's target range.
    :return: The mapped value.
    """
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min

try:
    while True:
        # Get the current reading from the ADC0834 module
        res = ADC0834.getResult()
        print('res = %d' % res)

        # Map the ADC value to a range suitable for setting LED brightness
        R_val = MAP(res, 0, 255, 0, 100)

        # Set the LED brightness
        led.value = float(R_val / 100)

        # Wait for 0.2 seconds before reading again
        time.sleep(0.2)

# Graceful exit when 'Ctrl+C' is pressed
except KeyboardInterrupt: 
    led.value = 0  # Turn off the LED
