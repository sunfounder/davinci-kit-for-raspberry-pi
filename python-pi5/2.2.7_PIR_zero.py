#!/usr/bin/env python3
from gpiozero import RGBLED, MotionSensor
from time import sleep

# Initialize RGB LED and PIR motion sensor using GPIO Zero library
led = RGBLED(red=18, green=27, blue=22)  # RGB LED connected to GPIO pins 18 (Red), 27 (Green), 22 (Blue)
pir = MotionSensor(17)  # PIR sensor connected to GPIO pin 17

try:
    # Continuously monitor for motion and update LED color
    while True:
        if pir.motion_detected:  # Check for motion detected by PIR sensor
            led.color = (1, 1, 0)  # Set LED color to yellow (Red + Green)
        else:
            led.color = (0, 0, 1)  # Set LED color to blue (only Blue)
        sleep(0.1)  # Short delay to reduce CPU load

except KeyboardInterrupt:
    # Handle KeyboardInterrupt (Ctrl+C) to exit the loop gracefully
    pass
