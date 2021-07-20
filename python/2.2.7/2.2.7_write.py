#!/usr/bin/env python

from mfrc522 import SimpleMFRC522
import RPi.GPIO as GPIO

reader = SimpleMFRC522()

def main():
    while True:
        text = input('Please write new data:')
        print("Please place the card to complete writing")
        reader.write(text)
        print("Data writing is complete")
        
def destroy():
    GPIO.cleanup()
    
if __name__ == '__main__':
    try:
        main()
    # When 'Ctrl+C' is pressed, the program destroy() will be  executed.
    except KeyboardInterrupt:
        destroy()