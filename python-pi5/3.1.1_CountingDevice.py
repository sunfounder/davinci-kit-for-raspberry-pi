#!/usr/bin/env python3
from gpiozero import OutputDevice, MotionSensor

# Initialize PIR motion sensor on GPIO 26
pir = MotionSensor(26)

# Initialize shift register pins
SDI = OutputDevice(24)    # Serial Data Input
RCLK = OutputDevice(23)   # Register Clock Input
SRCLK = OutputDevice(18)  # Shift Register Clock Input

# Initialize 7-segment display pins
placePin = [OutputDevice(pin) for pin in (10, 22, 27, 17)]

# Define digit codes for 7-segment display
number = (0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90)

# Counter for the displayed number
counter = 0

def clearDisplay():
    # Clears the display by setting all segments off
    for _ in range(8):
        SDI.on()
        SRCLK.on()
        SRCLK.off()
    RCLK.on()
    RCLK.off()

def hc595_shift(data):
    # Shifts data into the 74HC595 shift register
    for i in range(8):
        SDI.value = 0x80 & (data << i)
        SRCLK.on()
        SRCLK.off()
    RCLK.on()
    RCLK.off()

def pickDigit(digit):
    # Activates a specific digit of the 7-segment display
    for pin in placePin:
        pin.off()
    placePin[digit].on()

def display():
    # Updates the display with the current counter value
    global counter
    clearDisplay()
    pickDigit(0)
    hc595_shift(number[counter % 10])

    clearDisplay()
    pickDigit(1)
    hc595_shift(number[counter % 100//10])

    clearDisplay()
    pickDigit(2)
    hc595_shift(number[counter % 1000//100])

    clearDisplay()
    pickDigit(3)
    hc595_shift(number[counter % 10000//1000])

def loop():
    # Main loop to update display and check for motion
    global counter
    currentState = 0
    lastState = 0
    while True:
        display()
        currentState = 1 if pir.motion_detected else 0
        if currentState == 1 and lastState == 0:
            counter += 1
        lastState = currentState

try:
    loop()
except KeyboardInterrupt:
    # Turn off all pins when the script is interrupted
    SDI.off()
    SRCLK.off()
    RCLK.off()
    pass
