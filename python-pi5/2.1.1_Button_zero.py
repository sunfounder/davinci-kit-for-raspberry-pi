#!/usr/bin/env python3
from gpiozero import LED, Button  # Import LED and Button classes from gpiozero
from signal import pause  # Import pause function from signal module

# Initialize an LED object on GPIO pin 17
led = LED(17)
# Initialize a Button object on GPIO pin 18
button = Button(18)

# Link the button's "when_pressed" event to the LED's on() method
button.when_pressed = led.on
# Link the button's "when_released" event to the LED's off() method
button.when_released = led.off

# Run an event loop that waits for button events and keeps the script running
pause()
