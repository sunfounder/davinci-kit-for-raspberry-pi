#!/usr/bin/env python3
from gpiozero import Motor
from time import sleep

# Initialize the Motor with GPIO Zero, specifying GPIO pins for forward (17), backward (27), and enable (22) control
motor = Motor(forward=17, backward=27, enable=22)

try:
    # Main function to control the motor's direction and movement.
    # Alternates motor rotation between clockwise and counterclockwise with stops in between.
    actions = {'CW': motor.forward, 'CCW': motor.backward, 'STOP': motor.stop}  # Define motor actions for readability
    
    while True:
        # Loop through the defined actions to control motor direction
        for action in ['CW', 'STOP', 'CCW', 'STOP']:
            actions[action]()  # Execute the current action (forward, stop, backward, stop)
            print(f"{action}")  # Display the current action in the console
            sleep(5)  # Pause for 5 seconds before proceeding to the next action

except KeyboardInterrupt:
    # Gracefully handle a keyboard interrupt (e.g., Ctrl+C) to stop the program
    pass
