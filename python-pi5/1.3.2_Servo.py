#!/usr/bin/env python3
from gpiozero import Servo
from time import sleep

# Set the GPIO pin number where the servo motor is connected
myGPIO = 18

# Define a correction factor to fine-tune servo pulse width
myCorrection = 0.45
maxPW = (2.0 + myCorrection) / 1000  # Calculate maximum pulse width
minPW = (1.0 - myCorrection) / 1000  # Calculate minimum pulse width

# Initialize the Servo object with custom pulse widths
servo = Servo(myGPIO, min_pulse_width=minPW, max_pulse_width=maxPW)

try:
    while True:
        # Position the servo at the middle and wait
        servo.mid()
        print("mid")  # Indicate current position
        sleep(0.5)    # Brief pause for 0.5 seconds

        # Move the servo to its minimum position and wait
        servo.min()
        print("min")  # Indicate current position
        sleep(1)      # Hold position for 1 second

        # Return the servo to the middle position and wait
        servo.mid()
        print("mid")  # Indicate current position
        sleep(0.5)    # Brief pause for 0.5 seconds

        # Move the servo to its maximum position and wait
        servo.max()
        print("max")  # Indicate current position
        sleep(1)      # Hold position for 1 second

except KeyboardInterrupt:
    # Gracefully terminate the script on a keyboard interrupt (Ctrl+C)
    pass
