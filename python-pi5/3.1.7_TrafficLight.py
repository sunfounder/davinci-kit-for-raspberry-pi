#!/usr/bin/env python3

from gpiozero import OutputDevice, LED
import threading

# Setup GPIO pins for 74HC595 shift register
SDI = OutputDevice(24)   # Serial Data Input
RCLK = OutputDevice(23)  # Register Clock
SRCLK = OutputDevice(18) # Shift Register Clock

# Setup GPIO pins for digit selection on 7-segment display
placePin = [OutputDevice(pin) for pin in (10, 22, 27, 17)]

# Segment codes for numbers 0-9 on 7-segment display
number = (0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90)

# Setup GPIO pins for traffic light LEDs
ledPinR = LED(25) # Red LED
ledPinG = LED(8)  # Green LED
ledPinY = LED(7)  # Yellow LED

# Duration settings for traffic lights
greenLight = 30
yellowLight = 5
redLight = 60

# Traffic light color names
lightColor = ("Red", "Green", "Yellow")

# Initialize state variables
colorState = 0
counter = 60
timer1 = None

def setup():
    """ Initialize the traffic light system and start the timer. """
    global timer1
    timer1 = threading.Timer(1.0, timer)
    timer1.start()

def clearDisplay():
    """ Clear the 7-segment display. """
    for _ in range(8):
        SDI.on()
        SRCLK.on()
        SRCLK.off()
    RCLK.on()
    RCLK.off()

def hc595_shift(data):
    """ Shift data to the 74HC595 shift register for digit display. """
    for i in range(8):
        SDI.value = 0x80 & (data << i)
        SRCLK.on()
        SRCLK.off()
    RCLK.on()
    RCLK.off()

def pickDigit(digit):
    """ Select a specific digit to display on the 7-segment display. """
    for pin in placePin:
        pin.off()
    placePin[digit].on()

def timer():
    """ Handle the timing for traffic light changes. """
    global counter, colorState, timer1
    timer1 = threading.Timer(1.0, timer)
    timer1.start()
    counter -= 1
    if counter == 0:
        counter = [greenLight, yellowLight, redLight][colorState]
        colorState = (colorState + 1) % 3
    print(f"counter : {counter}    color: {lightColor[colorState]}")

def lightup():
    """ Update the traffic light LED based on the current state. """
    global colorState
    ledPinR.off()
    ledPinG.off()
    ledPinY.off()
    [ledPinR, ledPinG, ledPinY][colorState].on()

def display():
    """ Display the current counter value on the 7-segment display. """
    global counter

    for i in range(4):
        digit = counter // (10 ** (3 - i)) % 10
        if i == 0 and digit == 0:
            continue
        clearDisplay()
        pickDigit(3 - i)
        hc595_shift(number[digit])

def loop():
    """ Main loop to continuously update display and lights. """
    while True:
        display()
        lightup()

def destroy():
    """ Clean up resources when the script is terminated. """
    global timer1
    timer1.cancel()
    ledPinR.off()
    ledPinG.off()
    ledPinY.off()

try:
    setup()
    loop()
except KeyboardInterrupt:
    destroy()
