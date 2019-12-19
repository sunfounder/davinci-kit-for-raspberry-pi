#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import RPi.GPIO as GPIO
import ADC0834
import time
import math

def init():
	ADC0834.setup()

def loop():
	while True:
		analogVal = ADC0834.getResult()
		Vr = 5 * float(analogVal) / 255
		Rt = 10000 * Vr / (5 - Vr)
		temp = 1/(((math.log(Rt / 10000)) / 3950) + (1 / (273.15+25)))
		Cel = temp - 273.15
		Fah = Cel * 1.8 + 32
		print ('Celsius: %.2f C  Fahrenheit: %.2f F' % (Cel, Fah))
		time.sleep(0.2)

if __name__ == '__main__':
	init()
	try:
		loop()
	except KeyboardInterrupt:
		ADC0834.destroy()