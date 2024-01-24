#!/usr/bin/env python3
from gpiozero import OutputDevice
from time import sleep

# Initialize motor pins to GPIO pins 18, 23, 24, 25
motorPin = [OutputDevice(pin) for pin in (18, 23, 24, 25)]

# Set motor rotation speed parameters
rotationPerMinute = 15
stepsPerRevolution = 2048
# Calculate time to wait between each step for smooth motor operation
stepSpeed = (60 / rotationPerMinute) / stepsPerRevolution

def rotary(direction):
    """
    Controls the rotation of the motor based on the specified direction.
    
    :param direction: 'c' for clockwise, 'a' for anti-clockwise
    """
    if direction == 'c':
        # Execute the stepping sequence for clockwise rotation
        for j in range(4):
            for i in range(4):
                if 0x99 << j & (0x08 >> i):
                    motorPin[i].on()
                else:
                    motorPin[i].off()
                sleep(stepSpeed)
    elif direction == 'a':
        # Execute the stepping sequence for anti-clockwise rotation
        for j in range(4):
            for i in range(4):
                if 0x99 >> j & (0x08 >> i):
                    motorPin[i].on()
                else:
                    motorPin[i].off()
                sleep(stepSpeed)

def loop():
    """
    Continuously prompts the user to select the motor rotation direction
    and controls the motor based on this input.
    """
    while True:
        direction = input('Select motor direction a=anticlockwise, c=clockwise: ')
        if direction == 'c':
            print('Motor running clockwise\n')
            break
        elif direction == 'a':
            print('Motor running anti-clockwise\n')
            break
        else:
            print('Input error, please try again!')

    # Keep the motor rotating in the selected direction
    while True:
        rotary(direction)

def destroy():
    """
    Safely turns off all motor pins, used for clean shutdown.
    """
    for pin in motorPin:
        pin.off()

# Main program execution
try:
    loop()
except KeyboardInterrupt:
    destroy()  # Handle keyboard interrupt to safely shut down the motor
