#!/usr/bin/env python3

from gpiozero import OutputDevice, Button
import time
import threading

# Initialize the button connected to GPIO 26
sensorPin = Button(26)

# Define GPIO pins connected to the 74HC595 shift register
SDI = OutputDevice(24)   # Serial Data Input
RCLK = OutputDevice(23)  # Register Clock
SRCLK = OutputDevice(18) # Shift Register Clock

# Define GPIO pins for digit selection on the 7-segment display
placePin = [OutputDevice(pin) for pin in (10, 22, 27, 17)]

# Define segment codes for numbers 0 to 9 on the 7-segment display
number = (0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90)

# Counter and timer variables
counter = 0
timer1 = None
gameState = 0

def clearDisplay():
    """ Clear all segments on the 7-segment display. """
    for _ in range(8):
        SDI.on()
        SRCLK.on()
        SRCLK.off()
    RCLK.on()
    RCLK.off()

def hc595_shift(data):
    """ Shift data to the 74HC595 shift register to display a digit. """
    for i in range(8):
        SDI.value = 0x80 & (data << i)
        SRCLK.on()
        SRCLK.off()
    RCLK.on()
    RCLK.off()

def pickDigit(digit):
    """ Select which digit to display on the 7-segment display. """
    for pin in placePin:
        pin.off()
    placePin[digit].on()

def display():
    """ Display the current counter value on the 7-segment display. """
    global counter
    clearDisplay()
    pickDigit(0)
    hc595_shift(number[counter % 10])

    clearDisplay()
    pickDigit(1)
    hc595_shift(number[counter % 100 // 10])

    clearDisplay()
    pickDigit(2)
    hc595_shift(number[counter % 1000 // 100] - 0x80)

    clearDisplay()
    pickDigit(3)
    hc595_shift(number[counter % 10000 // 1000])

def stateChange():
    """ Handle state changes for the counter based on button presses. """
    global gameState, counter, timer1
    if gameState == 0:
        counter = 0
        time.sleep(1)
        timer()
    elif gameState == 1 and timer1 is not None:
        timer1.cancel()
        time.sleep(1)
    gameState = (gameState + 1) % 2

def loop():
    """ Main loop to check for button presses and update the display. """
    global counter
    currentState = 0
    lastState = 0
    while True:
        display()
        currentState = sensorPin.value
        if (currentState == 0) and (lastState == 1):
            stateChange()
        lastState = currentState

def timer():
    """ Timer function that increments the counter every 0.01 second. """
    global counter, timer1
    timer1 = threading.Timer(0.01, timer)
    timer1.start()
    counter += 1

try:
    loop()
except KeyboardInterrupt:
    if timer1:
        timer1.cancel()
