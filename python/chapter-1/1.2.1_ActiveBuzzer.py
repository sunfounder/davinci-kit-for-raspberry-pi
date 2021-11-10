#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

# Set #17 as buzzer pin
BeepPin = 17

def setup():
	# Set the GPIO modes to BCM Numbering
	GPIO.setmode(GPIO.BCM)
	# Set LedPin's mode to output, 
	# and initial level to High(3.3v)
	GPIO.setup(BeepPin, GPIO.OUT, initial=GPIO.HIGH)

def main():
	while True:
		# Buzzer on (Beep)
		print ('Buzzer On')
		GPIO.output(BeepPin, GPIO.LOW)
		time.sleep(0.1)
		# Buzzer off
		print ('Buzzer Off')
		GPIO.output(BeepPin, GPIO.HIGH)
		time.sleep(0.1)

def destroy():
	# Turn off buzzer
	GPIO.output(BeepPin, GPIO.HIGH)
	# Release resource
	GPIO.cleanup()    

# If run this script directly, do:
if __name__ == '__main__':
	setup()
	try:
		main()
	# When 'Ctrl+C' is pressed, the program 
	# destroy() will be  executed.
	except KeyboardInterrupt:
		destroy()