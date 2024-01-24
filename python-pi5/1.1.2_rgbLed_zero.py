#!/usr/bin/env python3
from gpiozero import RGBLED
from time import sleep

# Define a list of colors for the RGB LED in RGB format (Red, Green, Blue).
# Each color component ranges from 0 (off) to 1 (full intensity).
COLORS = [(1, 0, 0), (0, 1, 0), (0.2, 0.1, 1), (1, 1, 0), (1, 0, 1), (0, 1, 1)]

# Initialize an RGB LED. Connect the red component to GPIO 17, green to GPIO 18, and blue to GPIO 27.
rgb_led = RGBLED(red=17, green=18, blue=27)

try:
    # Continuously cycle through the defined colors.
    while True:
        for color in COLORS:
            # Set the RGB LED to the current color.
            rgb_led.color = color
            # Output the current color to the console.
            print(f"Color set to: {color}")
            # Wait for 1 second before switching to the next color.
            sleep(1)

except KeyboardInterrupt:
    # Handle a KeyboardInterrupt (Ctrl+C) to exit the loop gracefully.
    # GPIO cleanup will be managed automatically by GPIO Zero on script termination.
    pass
