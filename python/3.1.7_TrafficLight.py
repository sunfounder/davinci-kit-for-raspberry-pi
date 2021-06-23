#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time
import threading

#define the pins connect to 74HC595
SDI   = 24      #serial data input(DS)
RCLK  = 23     #memory clock input(STCP)
SRCLK = 18      #shift register clock input(SHCP)
number = (0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90)

placePin = (10,22,27,17)
ledPin =(25,8,7)

greenLight = 30
yellowLight = 5
redLight = 60
lightColor=("Red","Green","Yellow")

colorState=0
counter = 60
timer1 = 0


def setup():
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(SDI, GPIO.OUT)
    GPIO.setup(RCLK, GPIO.OUT)
    GPIO.setup(SRCLK, GPIO.OUT)
    for pin in placePin:
        GPIO.setup(pin,GPIO.OUT)
    for pin in ledPin:
        GPIO.setup(pin,GPIO.OUT)
    global timer1
    timer1 = threading.Timer(1.0,timer)
    timer1.start()

def clearDisplay():
    for i in range(8):
        GPIO.output(SDI, 1)
        GPIO.output(SRCLK, GPIO.HIGH)
        GPIO.output(SRCLK, GPIO.LOW)
    GPIO.output(RCLK, GPIO.HIGH)
    GPIO.output(RCLK, GPIO.LOW)

def hc595_shift(data):
    for i in range(8):
        GPIO.output(SDI, 0x80 & (data << i))
        GPIO.output(SRCLK, GPIO.HIGH)
        GPIO.output(SRCLK, GPIO.LOW)
    GPIO.output(RCLK, GPIO.HIGH)
    GPIO.output(RCLK, GPIO.LOW)

def pickDigit(digit):
    for i in placePin:
        GPIO.output(i,GPIO.LOW)
    GPIO.output(placePin[digit], GPIO.HIGH)

def timer():        #timer function
    global counter
    global colorState
    global timer1
    timer1 = threading.Timer(1.0,timer)
    timer1.start()
    counter-=1
    if (counter is 0):
        if(colorState is 0):
            counter= greenLight
        if(colorState is 1):
            counter=yellowLight
        if (colorState is 2):
            counter=redLight
        colorState=(colorState+1)%3
    print ("counter : %d    color: %s "%(counter,lightColor[colorState]))

def lightup():
    global colorState
    for i in range(0,3):
        GPIO.output(ledPin[i], GPIO.HIGH)
    GPIO.output(ledPin[colorState], GPIO.LOW)

def display():
    global counter

    a = counter % 10000//1000 + counter % 1000//100
    b = counter % 10000//1000 + counter % 1000//100 + counter % 100//10
    c = counter % 10000//1000 + counter % 1000//100 + counter % 100//10 + counter % 10

    if (counter % 10000//1000 == 0):
        clearDisplay()
    else:
        clearDisplay()
        pickDigit(3)
        hc595_shift(number[counter % 10000//1000])

    if (a == 0):
        clearDisplay()
    else:
        clearDisplay()
        pickDigit(2)
        hc595_shift(number[counter % 1000//100])

    if (b == 0):
        clearDisplay()
    else:
        clearDisplay()
        pickDigit(1)
        hc595_shift(number[counter % 100//10])

    if(c == 0):
        clearDisplay()
    else:
        clearDisplay()
        pickDigit(0)
        hc595_shift(number[counter % 10])

def loop():
    while True:
        display()
        lightup()

def destroy():   # When "Ctrl+C" is pressed, the function is executed.
    global timer1
    GPIO.cleanup()
    timer1.cancel()      #cancel the timer

if __name__ == '__main__': # Program starting from here
    setup()
    try:
        loop()
    except KeyboardInterrupt:
        destroy()
