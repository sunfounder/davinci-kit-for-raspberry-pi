#!/usr/bin/env python3
from gpiozero import Buzzer, LED
import time

# Initialize Buzzer and LED to GPIO pins
BeepPin = Buzzer(22)
ALedPin = LED(17)

# Morse code representation for characters
MORSECODE = {
    'A': '01', 'B': '1000', 'C': '1010', 'D': '100', 'E': '0', 'F': '0010', 'G': '110',
    'H': '0000', 'I': '00', 'J': '0111', 'K': '101', 'L': '0100', 'M': '11', 'N': '10',
    'O': '111', 'P': '0110', 'Q': '1101', 'R': '010', 'S': '000', 'T': '1',
    'U': '001', 'V': '0001', 'W': '011', 'X': '1001', 'Y': '1011', 'Z': '1100',
    '1': '01111', '2': '00111', '3': '00011', '4': '00001', '5': '00000',
    '6': '10000', '7': '11000', '8': '11100', '9': '11110', '0': '11111',
    '?': '001100', '/': '10010', ',': '110011', '.': '010101', ';': '101010',
    '!': '101011', '@': '011010', ':': '111000',
}

def on():
    """ Turn on the buzzer and LED. """
    BeepPin.on()
    ALedPin.on()

def off():
    """ Turn off the buzzer and LED. """
    BeepPin.off()
    ALedPin.off()

def beep(dt):  # dt for delay time.
    """
    Produce a beep sound and LED flash for the specified duration.
    :param dt: Duration for the beep and flash.
    """
    on()
    time.sleep(dt)
    off()
    time.sleep(dt)

def morsecode(code):
    """
    Convert the input code into Morse code and signal it using the buzzer and LED.
    :param code: The text to be converted to Morse code.
    """
    pause = 0.25
    for letter in code:
        for tap in MORSECODE[letter]:
            if tap == '0':
                beep(pause / 2)  # Short beep for dot
            if tap == '1':
                beep(pause)      # Long beep for dash
        time.sleep(pause)  # Pause between letters

def destroy():
    """ Clean up resources on script termination. """
    print("")
    BeepPin.off()
    ALedPin.off()

try:
    while True:
        code = input("Please input the messenger:")
        code = code.upper()  # Convert to uppercase for Morse code lookup
        print(code)
        morsecode(code)
except KeyboardInterrupt:
    destroy()
