#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

ledPins = [11, 12, 13, 15, 16, 18, 22, 3, 5, 24]

def oddLedBarGraph():
	for i in range(5):
		j = i*2
		GPIO.output(ledPins[j],GPIO.HIGH)
		time.sleep(0.3)
		GPIO.output(ledPins[j],GPIO.LOW)

def evenLedBarGraph():
	for i in range(5):
		j = i*2+1
		GPIO.output(ledPins[j],GPIO.HIGH)
		time.sleep(0.3)
		GPIO.output(ledPins[j],GPIO.LOW)

def allLedBarGraph():
	for i in ledPins:
		GPIO.output(i,GPIO.HIGH)
		time.sleep(0.3)
		GPIO.output(i,GPIO.LOW)

def setup():
	GPIO.setwarnings(False)
	GPIO.setmode(GPIO.BOARD)        # Numbers GPIOs by physical location
	for i in ledPins:
		GPIO.setup(i, GPIO.OUT)   # Set all ledPins' mode is output
		GPIO.output(i, GPIO.LOW) # Set all ledPins to high(+3.3V) to off led

def loop():
	while True:
		oddLedBarGraph()
		time.sleep(0.3)
		evenLedBarGraph()
		time.sleep(0.3)
		allLedBarGraph()
		time.sleep(0.3)

def destroy():
	for pin in ledPins:
		GPIO.output(pin, GPIO.LOW)    # turn off all leds
	GPIO.cleanup()                     # Release resource

if __name__ == '__main__':     # Program start from here
	setup()
	try:
		loop()
	except KeyboardInterrupt:  # When 'Ctrl+C' is pressed, the program destroy() will be  executed.
		destroy()

