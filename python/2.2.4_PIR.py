#!/usr/bin/env python3

import RPi.GPIO as GPIO

ledPin = 18    # the led connect to pin18
pirPin = 17    # the pir connect to pin17

def setup():
	GPIO.setmode(GPIO.BCM)       # Numbers GPIOs by BCM
	GPIO.setup(ledPin, GPIO.OUT)   #  Set the ledPin to output
	GPIO.setup(pirPin, GPIO.IN)    # Set pirPin to input

def loop():
	while True:
		if GPIO.input(pirPin)==GPIO.HIGH:
			GPIO.output(ledPin,GPIO.HIGH)
			print ("LED ON! \n")
		else :
			GPIO.output(ledPin,GPIO.LOW)
			print ("LED OFF!\n")

def destroy():
	GPIO.cleanup()                     # Release resource

if __name__ == '__main__':     # Program start from here
	setup()
	try:
		loop()
	except KeyboardInterrupt:  # When 'Ctrl+C' is pressed, the child program destroy() will be  executed.
		destroy()

