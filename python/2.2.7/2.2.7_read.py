#!/usr/bin/env python

import time
from mfrc522 import SimpleMFRC522
import RPi.GPIO as GPIO

reader = SimpleMFRC522()

def main():
    while True:
        print("Reading...Please place the card...")
        id, text = reader.read()
        print("ID: %s\nText: %s" % (id,text))
        time.sleep(3)
        
def destroy():
    GPIO.cleanup()
    
if __name__ == '__main__':
    try:
        main()
    # When 'Ctrl+C' is pressed, the program destroy() will be  executed.
    except KeyboardInterrupt:
        destroy()