#!/usr/bin/env python3
from gpiozero import LED, Button

# Initialize the Button for the tilt sensor and LEDs using GPIO Zero
TiltPin = Button(17, pull_up=False)  # Tilt sensor connected to GPIO pin 17, pull-up resistor disabled
green_led = LED(27)  # Green LED connected to GPIO pin 27
red_led = LED(22)   # Red LED connected to GPIO pin 22

def detect():
    """
    Detect the tilt sensor state and control the LEDs.
    Turns on the red LED and turns off the green LED when tilted.
    Turns off the red LED and turns on the green LED when not tilted.
    """
    if TiltPin.is_pressed:  # Check if the sensor is tilted
        print('    *************')
        print('    *   Tilt!   *')
        print('    *************')
        red_led.on()   # Turn on red LED
        green_led.off()  # Turn off green LED
    else:  # If the sensor is not tilted
        red_led.off()  # Turn off red LED
        green_led.on()  # Turn on green LED

try:
    while True:
        # Continuously check the tilt sensor state and update LEDs
        TiltPin.when_pressed = detect
        TiltPin.when_released = detect

except KeyboardInterrupt:
    # Handle KeyboardInterrupt (Ctrl+C) to exit the loop gracefully
    pass
