#!/usr/bin/env python3

from gpiozero import DigitalOutputDevice, Button
from time import sleep
import LCD1602
import random

class Keypad:
    def __init__(self, rows_pins, cols_pins, keys):
        """
        Initialize the keypad with specified row and column pins and key layout.
        :param rows_pins: List of GPIO pins for the rows.
        :param cols_pins: List of GPIO pins for the columns.
        :param keys: Layout of keys on the keypad.
        """
        self.rows = [DigitalOutputDevice(pin) for pin in rows_pins]  # Setup row pins
        self.cols = [Button(pin, pull_up=False) for pin in cols_pins]  # Setup column pins
        self.keys = keys  # Define keypad layout

    def read(self):
        """
        Read and return the currently pressed keys.
        :return: List of pressed keys.
        """
        pressed_keys = []
        for i, row in enumerate(self.rows):
            row.on()  # Activate current row
            for j, col in enumerate(self.cols):
                if col.is_pressed:
                    index = i * len(self.cols) + j
                    pressed_keys.append(self.keys[index])  # Append pressed key
            row.off()  # Deactivate row
        return pressed_keys

# Game-related variables
count = 0
pointValue = 0
upper = 99
lower = 0

def setup():
    """
    Setup function for initializing the keypad and LCD display.
    """
    global keypad, last_key_pressed, keys
    rowsPins = [18, 23, 24, 25]
    colsPins = [10, 22, 27, 17]
    keys = ["1", "2", "3", "A",
            "4", "5", "6", "B",
            "7", "8", "9", "C",
            "*", "0", "#", "D"]
    keypad = Keypad(rowsPins, colsPins, keys)
    last_key_pressed = []
    LCD1602.init(0x27, 1)  # Initialize LCD
    LCD1602.clear()
    LCD1602.write(0, 0, 'Welcome!')
    LCD1602.write(0, 1, 'Press A to Start!')

def init_new_value():
    """
    Initialize a new target value and reset game parameters.
    """
    global pointValue, upper, lower, count
    pointValue = random.randint(0, 99)
    upper = 99
    lower = 0
    count = 0
    print('point is %d' % pointValue)

def detect_point():
    """
    Check if the guessed number is the target, too high, or too low.
    :return: 1 if correct guess, 0 otherwise.
    """
    global count, upper, lower
    if count > pointValue and count < upper:
        upper = count
    elif count < pointValue and count > lower:
        lower = count
    elif count == pointValue:
        count = 0
        return 1
    count = 0
    return 0

def lcd_show_input(result):
    """
    Display the current game state and results on the LCD.
    :param result: Result of the last guess (0 or 1).
    """
    LCD1602.clear()
    if result == 1:
        LCD1602.write(0, 1, 'You have got it!')
        sleep(5)
        init_new_value()
        lcd_show_input(0)
    else:
        LCD1602.write(0, 0, 'Enter number:')
        LCD1602.write(13, 0, str(count))
        LCD1602.write(0, 1, str(lower))
        LCD1602.write(3, 1, ' < Point < ')
        LCD1602.write(13, 1, str(upper))

def loop():
    """
    Main game loop for handling keypad input and updating game state.
    """
    global keypad, last_key_pressed, count
    while True:
        result = 0
        pressed_keys = keypad.read()
        if pressed_keys and pressed_keys != last_key_pressed:
            if pressed_keys == ["A"]:
                init_new_value()
                lcd_show_input(0)
            elif pressed_keys == ["D"]:
                result = detect_point()
                lcd_show_input(result)
            elif pressed_keys[0] in keys:
                if pressed_keys[0] in ["A", "B", "C", "D", "#", "*"]:
                    continue
                count = count * 10 + int(pressed_keys[0])
                if count >= 10:
                    result = detect_point()
                lcd_show_input(result)
            print(pressed_keys)
        last_key_pressed = pressed_keys
        sleep(0.1)

try:
    setup()
    loop()
except KeyboardInterrupt:
    LCD1602.clear()  # Clear LCD on interrupt


