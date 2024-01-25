#!/usr/bin/env python3
from gpiozero import Button
import ADC0834
import time

# Initialize the button connected to GPIO pin 22
BtnPin = Button(22)

# Setup the ADC0834 ADC
ADC0834.setup()

try:
    # Main loop to read and print ADC values and button state
    while True:
        # Read X and Y values from ADC channels 0 and 1
        x_val = ADC0834.getResult(0)
        y_val = ADC0834.getResult(1)

        # Read the state of the button (pressed or not)
        Btn_val = BtnPin.value

        # Print the X, Y, and button values
        print('X: %d  Y: %d  Btn: %d' % (x_val, y_val, Btn_val))

        # Delay of 0.2 seconds before the next read
        time.sleep(0.2)

# Gracefully handle script termination (e.g., via KeyboardInterrupt)
except KeyboardInterrupt: 
    pass
