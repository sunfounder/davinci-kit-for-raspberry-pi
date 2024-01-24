#!/usr/bin/env python3
from gpiozero import OutputDevice, Button
import time
import threading
import random

# GPIO pins for the 74HC595 shift register
SDI = OutputDevice(17)   # Serial Data Input
RCLK = OutputDevice(18)  # Register Clock
SRCLK = OutputDevice(27) # Shift Register Clock

# GPIO pins for buttons
AButtonPin = Button(20)  # Button A
BButtonPin = Button(26)  # Button B

# Game variables initialization
timerPlay = 0
timerCheck = 0
waypoint = "NULL"
stage = "NULL"

# Arrow glyphs for LED matrix display
arrow = {
    "right": [0xFF, 0xEF, 0xDF, 0x81, 0xDF, 0xEF, 0xFF, 0xFF],
    "left": [0xFF, 0xF7, 0xFB, 0x81, 0xFB, 0xF7, 0xFF, 0xFF]
}

# Feedback glyphs for correct/wrong answers
check = {
    "wrong": [0xFF, 0xBB, 0xD7, 0xEF, 0xD7, 0xBB, 0xFF, 0xFF],
    "right": [0xFF, 0xFF, 0xF7, 0xEB, 0xDF, 0xBF, 0xFF, 0xFF]
}

def hc595_shift(dat):
    """ Shift data to the 74HC595 shift register. """
    for i in range(8):
        SDI.value = 0x80 & (dat << i)
        SRCLK.on()
        SRCLK.off()

def display(glyphCode):
    """ Display a glyph on the LED matrix. """
    for i in range(0, 8):
        hc595_shift(glyphCode[i])
        hc595_shift(0x80 >> i)
        RCLK.on()
        RCLK.off()

def creatGlyph():
    """ Create a new glyph for the game and start the play timer. """
    global waypoint, stage, timerPlay
    waypoint = random.choice(list(arrow.keys()))
    stage = "PLAY"
    timerPlay = threading.Timer(2.0, timeOut)
    timerPlay.start()

def checkPoint(inputKey):
    """ Check player's input and update game state. """
    global waypoint, stage, timerCheck
    if inputKey == "empty" or inputKey == waypoint:
        waypoint = "wrong"
    else:
        waypoint = "right"
    timerPlay.cancel()
    stage = "CHECK"
    timerCheck = threading.Timer(1.0, creatGlyph)
    timerCheck.start()

def timeOut():
    """ Handle game timeout scenario. """
    checkPoint("empty")

def getKey():
    """ Detect button press and trigger checkpoint. """
    if AButtonPin.is_pressed and not BButtonPin.is_pressed:
        checkPoint("right")
    elif not AButtonPin.is_pressed and BButtonPin.is_pressed:
        checkPoint("left")

def main():
    """ Main game loop. """
    creatGlyph()
    while True:
        if stage == "PLAY":
            display(arrow[waypoint])
            getKey()
        elif stage == "CHECK":
            display(check[waypoint])

def destroy():
    """ Clean up resources on program exit. """
    global timerPlay, timerCheck
    timerPlay.cancel()  # Cancel the play timer
    timerCheck.cancel()  # Cancel the checkpoint timer

# Run the game, handle KeyboardInterrupt for clean exit
try:
    main()
except KeyboardInterrupt:
    destroy()
