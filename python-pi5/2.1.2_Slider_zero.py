#!/usr/bin/env python3
from gpiozero import LED, Button  # Import LED and Button classes for GPIO control
from time import sleep  # Import sleep function for adding delays

# Initialize the micro switch on GPIO pin 17 with the pull-up resistor disabled
micro_switch = Button(17, pull_up=False)
# Initialize LED1 on GPIO pin 22
led1 = LED(22)
# Initialize LED2 on GPIO pin 27
led2 = LED(27)

try:
    # Main loop to control LED states based on the micro switch's state
    while True:
        if micro_switch.is_pressed:  # Check if the micro switch is pressed
            print('    LED1 ON    ')  # Print status message
            led1.on()   # Turn on LED1
            led2.off()  # Turn off LED2
        else:  # If the micro switch is not pressed
            print('    LED2 ON    ')  # Print status message
            led1.off()  # Turn off LED1
            led2.on()   # Turn on LED2

        sleep(0.5)  # Wait for 0.5 seconds before rechecking the switch state

except KeyboardInterrupt:
    # Handle a keyboard interrupt (Ctrl+C) for a clean exit from the loop
    pass
