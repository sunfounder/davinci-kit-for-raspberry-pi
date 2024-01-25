#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import ADC0834
import time
import math

# Initialize the ADC0834 module
ADC0834.setup()

# Run the process in a try-except block
try:
    while True:
        # Read the analog value from the sensor
        analogVal = ADC0834.getResult()

        # Convert the analog value to a voltage
        Vr = 5 * float(analogVal) / 255

        # Calculate the resistance of the thermistor
        Rt = 10000 * Vr / (5 - Vr)

        # Calculate the temperature in Kelvin
        temp = 1 / (((math.log(Rt / 10000)) / 3950) + (1 / (273.15 + 25)))

        # Convert Kelvin to Celsius
        Cel = temp - 273.15

        # Convert Celsius to Fahrenheit
        Fah = Cel * 1.8 + 32

        # Print the temperature in both Celsius and Fahrenheit
        print('Celsius: %.2f C  Fahrenheit: %.2f F' % (Cel, Fah))

        # Wait for 0.2 seconds before the next read
        time.sleep(0.2)

# Handle KeyboardInterrupt for graceful termination
except KeyboardInterrupt:
    # Clean up ADC0834 resources
    ADC0834.destroy()
