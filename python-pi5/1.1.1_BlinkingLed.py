#!/usr/bin/env python3
from gpiozero import LED
from time import sleep

# Initialize an LED connected to GPIO pin 17 using the GPIO Zero library.
led = LED(17)

try:
    # Start an infinite loop to toggle the LED state.
    while True:
        # Turn on the LED and print a message to the console.
        led.on()
        print('...LED ON')

        # Wait for 0.5 seconds with the LED on.
        sleep(0.5)

        # Turn off the LED and print a message to the console.
        led.off()
        print('LED OFF...')

        # Wait for 0.5 seconds with the LED off.
        sleep(0.5)

except KeyboardInterrupt:
    # Gracefully handle a keyboard interrupt (Ctrl+C) by breaking the loop.
    # GPIO Zero handles cleanup of GPIO settings automatically on exit.
    pass
