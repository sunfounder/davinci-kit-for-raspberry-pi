#!/usr/bin/env python3
from gpiozero import LED, Button, TonalBuzzer
import time
import threading

# Initialize TonalBuzzer on GPIO pin 22
BeepPin = TonalBuzzer(22)

# Initialize LEDs on GPIO pins 17 and 27
ALedPin = LED(17)
BLedPin = LED(27)

# Initialize Button on GPIO pin 18
switchPin = Button(18)

# Global flag to control the buzzer and LED states
flag = 0

def ledWork():
    """
    Control LED blinking pattern based on the flag state.
    When flag is set, alternately blink ALedPin and BLedPin.
    """
    while True:
        if flag:
            # Alternate blinking of LEDs
            ALedPin.on()
            time.sleep(0.5)
            ALedPin.off()
            BLedPin.on()
            time.sleep(0.5)
            BLedPin.off()
        else:
            # Turn off both LEDs if flag is not set
            ALedPin.off()
            BLedPin.off()

# Define the musical tune as a list of notes and their durations
tune = [
    ('C4', 0.1), ('E4', 0.1), ('G4', 0.1), 
    (None, 0.1), 
    ('E4', 0.1), ('G4', 0.1), ('C5', 0.1), 
    (None, 0.1), 
    ('C5', 0.1), ('G4', 0.1), ('E4', 0.1), 
    (None, 0.1), 
    ('G4', 0.1), ('E4', 0.1), ('C4', 0.1), 
    (None, 0.1)
]

def buzzerWork():
    """
    Play a tune using the buzzer based on the flag state.
    The tune is played only when the flag is set.
    """
    while True:
        for note, duration in tune:
            if flag == 0:
                break
            print(note)  # Output the current note to the console
            BeepPin.play(note)  # Play the current note
            time.sleep(duration)  # Pause for the duration of the note
        BeepPin.stop()  # Stop the buzzer after playing the tune

def main():
    """
    Monitor button press to update the flag state.
    Sets the flag when the button is pressed.
    """
    global flag
    while True:
        flag = 1 if switchPin.is_pressed else 0

try:
    # Initialize and start threads for buzzer and LED control
    tBuzz = threading.Thread(target=buzzerWork)
    tBuzz.start()
    tLed = threading.Thread(target=ledWork)
    tLed.start()
    main()

except KeyboardInterrupt:
    # Stop the buzzer and turn off LEDs on program interruption
    BeepPin.stop()
    ALedPin.off()    
    BLedPin.off()
