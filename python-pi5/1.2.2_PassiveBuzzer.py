#!/usr/bin/env python3
from gpiozero import TonalBuzzer
from time import sleep

# Initialize a TonalBuzzer connected to GPIO pin 17
tb = TonalBuzzer(17)  # Update this pin number based on your setup

def play(tune):
    """
    Play a musical tune using the buzzer.
    :param tune: List of tuples (note, duration), where each tuple represents a note and its duration.
    """
    for note, duration in tune:
        print(note)  # Output the current note being played
        tb.play(note)  # Play the note on the buzzer
        sleep(float(duration))  # Delay for the duration of the note
    tb.stop()  # Stop playing after the tune is complete

# Define a musical tune as a sequence of notes and durations
tune = [('C#4', 0.2), ('D4', 0.2), (None, 0.2),
    ('Eb4', 0.2), ('E4', 0.2), (None, 0.6),
    ('F#4', 0.2), ('G4', 0.2), (None, 0.6),
    ('Eb4', 0.2), ('E4', 0.2), (None, 0.2),
    ('F#4', 0.2), ('G4', 0.2), (None, 0.2),
    ('C4', 0.2), ('B4', 0.2), (None, 0.2),
    ('F#4', 0.2), ('G4', 0.2), (None, 0.2),
    ('B4', 0.2), ('Bb4', 0.5), (None, 0.6),
    ('A4', 0.2), ('G4', 0.2), ('E4', 0.2), 
    ('D4', 0.2), ('E4', 0.2)]

try:
    play(tune)  # Execute the play function to start playing the tune

except KeyboardInterrupt:
    # Handle KeyboardInterrupt for graceful termination
    pass

