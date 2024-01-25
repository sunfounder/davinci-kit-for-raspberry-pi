#!/usr/bin/env python3

from gpiozero import Motor, Button
from time import sleep
import ADC0834
import math

# Initialize GPIO pins for the button and motor control
BtnPin = Button(22)
motor = Motor(forward=5, backward=6, enable=13)

# Initialize the ADC0834 module for temperature sensing
ADC0834.setup()

# Initialize variables to track the motor speed level and temperatures
level = 0
currentTemp = 0
markTemp = 0

def temperature():
    """
    Reads and calculates the current temperature from the sensor.
    Returns:
        float: The current temperature in Celsius.
    """
    # Read analog value from the ADC0834 module
    analogVal = ADC0834.getResult()
    # Convert analog value to voltage and then to resistance
    Vr = 5 * float(analogVal) / 255
    Rt = 10000 * Vr / (5 - Vr)
    # Calculate temperature in Celsius
    temp = 1 / (((math.log(Rt / 10000)) / 3950) + (1 / (273.15 + 25)))
    Cel = temp - 273.15
    return Cel

def motor_run(level):
    """
    Adjusts the motor speed based on the specified level.
    Args:
        level (int): Desired motor speed level.
    Returns:
        int: Adjusted motor speed level.
    """
    # Stop the motor if the level is 0
    if level == 0:
        motor.stop()
        return 0
    # Cap the level at 4 for maximum speed
    if level >= 4:
        level = 4
    # Set the motor speed
    motor.forward(speed=float(level / 4))
    return level

def changeLevel():
    """
    Changes the motor speed level when the button is pressed and updates the reference temperature.
    """
    global level, currentTemp, markTemp
    print("Button pressed")
    # Cycle through levels 0-4
    level = (level + 1) % 5
    # Update the reference temperature
    markTemp = currentTemp

# Bind the button press event to changeLevel function
BtnPin.when_pressed = changeLevel

def main():
    """
    Main function to continuously monitor and respond to temperature changes.
    """
    global level, currentTemp, markTemp
    # Set initial reference temperature
    markTemp = temperature()
    while True:
        # Continuously read current temperature
        currentTemp = temperature()
        # Adjust motor level based on temperature difference
        if level != 0:
            if currentTemp - markTemp <= -2:
                level -= 1
                markTemp = currentTemp
            elif currentTemp - markTemp >= 2:
                if level < 4:
                    level += 1
                markTemp = currentTemp
        # Run the motor at the adjusted level
        level = motor_run(level)

# Run the main function and handle KeyboardInterrupt
try:
    main()
except KeyboardInterrupt:
    # Stop the motor when the script is interrupted
    motor.stop()
