#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

# Set up a color table in Hexadecimal
COLOR = [0xFF0000, 0x00FF00, 0x0000FF, 0xFFFF00, 0xFF00FF, 0x00FFFF]
# Set pins' channels with dictionary
pins = {'Red':17, 'Green':18, 'Blue':27}


def setup():
	global p_R, p_G, p_B
	# Set the GPIO modes to BCM Numbering
	GPIO.setmode(GPIO.BCM)
	# Set all LedPin's mode to output and initial level to High(3.3v)
	for i in pins:
		GPIO.setup(pins[i], GPIO.OUT, initial=GPIO.HIGH)

	# Set all led as pwm channel and frequece to 2KHz
	p_R = GPIO.PWM(pins['Red'], 2000)
	p_G = GPIO.PWM(pins['Green'], 2000)
	p_B = GPIO.PWM(pins['Blue'], 2000)

	# Set all begin with value 0
	p_R.start(0)
	p_G.start(0)
	p_B.start(0)

# Define a MAP function for mapping values.  Like from 0~255 to 0~100
def MAP(x, in_min, in_max, out_min, out_max):
	return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min

# Define a function to set up colors 
# input color should be Hexadecimal with 
# red value, blue value, green value.
def setColor(color):
 # configures the three LEDs' luminance with the inputted color value . 
	# Devide colors from 'color' veriable
	R_val = (color & 0xFF0000) >> 16
	G_val = (color & 0x00FF00) >> 8
	B_val = (color & 0x0000FF) >> 0
 # these three lines are used for analyzing the col variables 
 # assign the first two values of the hexadecimal to R, the middle two assigned to G
 # assign the last two values to B, please refer to the shift operation of the hexadecimal for details.

	# Map color value from 0~255 to 0~100
	R_val = MAP(R_val, 0, 255, 0, 100)
	G_val = MAP(G_val, 0, 255, 0, 100)
	B_val = MAP(B_val, 0, 255, 0, 100)
	
	# Change the colors
	p_R.ChangeDutyCycle(R_val)
	# Assign the mapped duty cycle value to the corresponding PWM channel to change the luminance. 
	p_G.ChangeDutyCycle(G_val)
	p_B.ChangeDutyCycle(B_val)

	print ("color_msg: R_val = %s,	G_val = %s,	B_val = %s"%(R_val, G_val, B_val))	 

def main():
	while True:
		for color in COLOR:# Assign every item in the COLOR list to the color respectively and change the color of the RGB LED via the setColor() function.
			setColor(color)# change the color of the RGB LED
			time.sleep(0.5)# set delay for 0.5s after each color changing. Modify this parameter will changed the LED's color changing rate.   

def destroy():
	# Stop all pwm channel
	p_R.stop()
	p_G.stop()
	p_B.stop()
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
