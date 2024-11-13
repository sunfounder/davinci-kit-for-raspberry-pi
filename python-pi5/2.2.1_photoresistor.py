#!/usr/bin/env python3
from gpiozero import PWMLED
import ADC0834
import time

# Initialize a PWM LED on GPIO pin 22
led = PWMLED(22)

# Set up the ADC0834 module
ADC0834.setup()

# Define a function for mapping values from one range to another
def MAP(x, in_min, in_max, out_min, out_max):
    """
    Maps a number from one range to another.
    :param x: the number to map
    :param in_min: the lower bound of the input range
    :param in_max: the upper bound of the input range
    :param out_min: the lower bound of the output range
    :param out_max: the upper bound of the output range
    :return: the mapped value
    """
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min

# Main loop for reading ADC value and controlling LED brightness
def loop():
    while True:
        # Read analog value from ADC
        analogVal = ADC0834.getResult()
        print('value = %d' % analogVal)

        # Map the ADC value to a PWM value and set LED brightness
        led.value = float(analogVal/255)

        # Wait for 0.2 seconds
        time.sleep(0.2)

# Run the main loop and handle KeyboardInterrupt for graceful shutdown
try:
    loop()
except KeyboardInterrupt: 
    # Turn off LED before exiting
    led.value = 0
