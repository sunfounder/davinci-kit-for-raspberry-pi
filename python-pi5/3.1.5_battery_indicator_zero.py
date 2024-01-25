#!/usr/bin/env python3
from gpiozero import LED
import ADC0834
import time

# List of GPIO pins to which LEDs are connected
ledPins = [25, 12, 16, 20, 21, 5, 6, 13, 19, 26]
# Initialize LED objects for each pin in the list
leds = [LED(pin) for pin in ledPins]

# Setup ADC0834 module
ADC0834.setup()

def LedBarGraph(value):
    # Turn off all LEDs
    for i in range(10):
        leds[i].off()
    # Turn on LEDs up to the specified value
    for i in range(value):
        leds[i].on()

try:
    # Main loop to continuously update LED bar graph
    while True:
        # Read analog value from ADC0834
        analogVal = ADC0834.getResult()
        # Convert analog value to LED bar graph level
        LedBarGraph(int(analogVal/25))
except KeyboardInterrupt: 
    # Turn off all LEDs when program is interrupted
    for i in range(10):
        leds[i].off()
