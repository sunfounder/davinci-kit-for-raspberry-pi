#!/usr/bin/env python3

from gpiozero import DigitalOutputDevice, Button
from time import sleep
import LCD1602

class Keypad:
    def __init__(self, rows_pins, cols_pins, keys):
        """
        Initialize the Keypad with specified row and column pins and keys.
        :param rows_pins: List of GPIO pins for the rows.
        :param cols_pins: List of GPIO pins for the columns.
        :param keys: List of keys in the keypad layout.
        """
        self.rows = [DigitalOutputDevice(pin) for pin in rows_pins]  # Row pins setup
        self.cols = [Button(pin, pull_up=False) for pin in cols_pins]  # Column pins setup
        self.keys = keys  # Keypad key layout

    def read(self):
        """
        Read and return a list of keys that are currently pressed.
        :return: List of pressed keys.
        """
        pressed_keys = []
        for i, row in enumerate(self.rows):
            row.on()  # Activate current row
            for j, col in enumerate(self.cols):
                if col.is_pressed:
                    index = i * len(self.cols) + j
                    pressed_keys.append(self.keys[index])
            row.off()  # Deactivate row after checking
        return pressed_keys

# Password verification setup
LENS = 4
password = ['1', '9', '8', '4']  # Preset password
testword = ['0', '0', '0', '0']  # User input storage
keyIndex = 0  # Index for input keys

def check():
    """
    Check if the entered password matches the preset password.
    :return: 1 if match, 0 otherwise.
    """
    for i in range(LENS):
        if password[i] != testword[i]:
            return 0
    return 1

def setup():
    """
    Setup the keypad and LCD display.
    """
    global keypad, last_key_pressed
    # Pin configuration for keypad
    rows_pins = [18, 23, 24, 25]
    cols_pins = [10, 22, 27, 17]
    keys = ["1", "2", "3", "A",
            "4", "5", "6", "B",
            "7", "8", "9", "C",
            "*", "0", "#", "D"]

    # Initialize keypad and LCD
    keypad = Keypad(rows_pins, cols_pins, keys)
    last_key_pressed = []
    LCD1602.init(0x27, 1)  # Initialize LCD
    LCD1602.clear()
    LCD1602.write(0, 0, 'WELCOME!')
    LCD1602.write(2, 1, 'Enter password')
    sleep(2)

def loop():
    """
    Main loop for handling keypad input and password verification.
    """
    global keyIndex, LENS, keypad, last_key_pressed
    while True:
        pressed_keys = keypad.read()
        if pressed_keys and pressed_keys != last_key_pressed:
            if keyIndex < LENS:
                LCD1602.clear()
                LCD1602.write(0, 0, "Enter password:")
                LCD1602.write(15 - keyIndex, 1, pressed_keys[0])
                testword[keyIndex] = pressed_keys[0]
                keyIndex += 1

            if keyIndex == LENS:
                if check() == 0:
                    LCD1602.clear()
                    LCD1602.write(3, 0, "WRONG KEY!")
                    LCD1602.write(0, 1, "please try again")
                else:
                    LCD1602.clear()
                    LCD1602.write(4, 0, "CORRECT!")
                    LCD1602.write(2, 1, "welcome back")
                keyIndex = 0  # Reset key index after checking

        last_key_pressed = pressed_keys
        sleep(0.1)

try:
    setup()
    loop()
except KeyboardInterrupt:
    LCD1602.clear()  # Clear LCD display on interrupt
