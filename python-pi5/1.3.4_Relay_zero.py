#!/usr/bin/env python3
from gpiozero import OutputDevice  # Import the class for controlling GPIO pins
from time import sleep  # Import the sleep function for delay

# Initialize the relay connected to GPIO pin 17
relay = OutputDevice(17)

try:
    # Loop to continuously toggle the relay's state every second
    while True:
        print('Relay open...')  # Inform that the relay is being activated
        relay.on()  # Turn on the relay (assuming active low configuration)
        sleep(1)   # Maintain the relay in the on state for 1 second

        print('...Relay close')  # Inform that the relay is being deactivated
        relay.off()  # Turn off the relay
        sleep(1)   # Maintain the relay in the off state for 1 second

except KeyboardInterrupt:
    # Handle a keyboard interrupt (Ctrl+C) to exit the loop
    relay.off()  # Ensure the relay is turned off before exiting
    pass
