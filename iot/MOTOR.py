#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

class motor(object):
	def __init__(self,MotorPin1,MotorPin2,MotorEnable):		
		self.MotorPin1  = MotorPin1
		self.MotorPin2  = MotorPin2
		self.MotorEnable = MotorEnable
		GPIO.setmode(GPIO.BCM)
		GPIO.setup(self.MotorPin1, GPIO.OUT)
		GPIO.setup(self.MotorPin2, GPIO.OUT)
		GPIO.setup(self.MotorEnable, GPIO.OUT, initial=GPIO.LOW)

	def clockwise(self):
		GPIO.output(self.MotorPin1, GPIO.HIGH)
		GPIO.output(self.MotorPin2, GPIO.LOW)
		# Enable the motor
		GPIO.output(self.MotorEnable, GPIO.HIGH)
		
	def contrarotate(self):
		GPIO.output(self.MotorPin1, GPIO.LOW)
		GPIO.output(self.MotorPin2, GPIO.HIGH)
		# Enable the motor
		GPIO.output(self.MotorEnable, GPIO.HIGH)
		
	def stop(self):
		GPIO.output(self.MotorEnable, GPIO.LOW)
