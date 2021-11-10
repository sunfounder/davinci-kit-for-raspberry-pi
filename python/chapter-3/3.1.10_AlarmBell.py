#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time
import threading

BeepPin=22
ALedPin=17
BLedPin=27
switchPin=18

Buzz=0
flag =0
note=150
pitch=20

def setup():
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(BeepPin, GPIO.OUT)
    GPIO.setup(ALedPin,GPIO.OUT,initial=GPIO.LOW)
    GPIO.setup(BLedPin,GPIO.OUT,initial=GPIO.LOW)
    GPIO.setup(switchPin,GPIO.IN)
    global Buzz
    Buzz=GPIO.PWM(BeepPin,note)

def ledWork():
    while flag:
        GPIO.output(ALedPin,GPIO.HIGH)
        time.sleep(0.5)
        GPIO.output(ALedPin,GPIO.LOW)
        GPIO.output(BLedPin,GPIO.HIGH)
        time.sleep(0.5)
        GPIO.output(BLedPin,GPIO.LOW)

def buzzerWork():
    global pitch
    global note
    while flag:
        if note >= 800 or note <=130:
            pitch = -pitch
        note = note + pitch 
        Buzz.ChangeFrequency(note)
        time.sleep(0.01)


def on():
    global flag
    flag = 1
    Buzz.start(50)
    tBuzz = threading.Thread(target=buzzerWork) 
    tBuzz.start()
    tLed = threading.Thread(target=ledWork) 
    tLed.start()    

def off():
    global flag
    flag = 0
    Buzz.stop()
    GPIO.output(ALedPin,GPIO.LOW)
    GPIO.output(BLedPin,GPIO.LOW)      


def main():
    lastState=0
    while True:
        currentState =GPIO.input(switchPin)
        if currentState == 1 and lastState == 0:
            on()
        elif currentState == 0 and lastState == 1:
            off()
        lastState=currentState

 
def destroy():
    off()
    GPIO.cleanup()


if __name__ == '__main__':
    setup()
    try:
        main()
    except KeyboardInterrupt:
        destroy()