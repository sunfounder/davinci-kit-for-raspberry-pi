#!/usr/bin/env python3
#-----------------------------------------------------
#
#		This is a program for all ADC chip. It 
#	convert analog singnal to digital signal.
#
#		This program is most analog signal modules' 
#	dependency. Use it like this:
#		`import ADC0834`
#		`sig = ADC0834.getResult(chn)`
#
#	*'chn' should be 0,1,2,3 represent for ch0, ch1, ch2, ch3
#	on ADC0834
#		

import RPi.GPIO as GPIO 
import time

ADC_CS  = 17
ADC_CLK = 18
ADC_DIO = 27

# using default pins for backwards compatibility
def setup(cs=17,clk=18,dio=27):
	global ADC_CS, ADC_CLK, ADC_DIO
	ADC_CS=cs
	ADC_CLK=clk
	ADC_DIO=dio
	GPIO.setwarnings(False)
	GPIO.setmode(GPIO.BCM)			# Number GPIOs by BCM mode
	GPIO.setup(ADC_CS, GPIO.OUT)		# Set pins' mode is output
	GPIO.setup(ADC_CLK, GPIO.OUT)		# Set pins' mode is output

def destroy():
	GPIO.cleanup()

# using channel = 0 as default for backwards compatibility
def getResult(channel=0):	 				# Get ADC result, input channel

	sel = int(channel > 1 & 1)
	odd = channel & 1
	# print("sel: {}, odd: {}".format(sel, odd))

	GPIO.setup(ADC_DIO, GPIO.OUT)
	GPIO.output(ADC_CS, 0)
	
	# Start bit
	GPIO.output(ADC_CLK, 0)
	GPIO.output(ADC_DIO, 1)
	time.sleep(0.000002)
	GPIO.output(ADC_CLK, 1)
	time.sleep(0.000002)

	# Single End mode
	GPIO.output(ADC_CLK, 0)
	GPIO.output(ADC_DIO, 1)
	time.sleep(0.000002)
	GPIO.output(ADC_CLK, 1)
	time.sleep(0.000002)

	# ODD
	GPIO.output(ADC_CLK, 0)
	GPIO.output(ADC_DIO, odd)
	time.sleep(0.000002)
	GPIO.output(ADC_CLK, 1)
	time.sleep(0.000002)

	# Select
	GPIO.output(ADC_CLK, 0)
	GPIO.output(ADC_DIO, sel)
	time.sleep(0.000002)
	GPIO.output(ADC_CLK, 1)

	GPIO.output(ADC_DIO, 1)
	time.sleep(0.000002)
	GPIO.output(ADC_CLK, 0)
	GPIO.output(ADC_DIO, 1)
	time.sleep(0.000002)

	# ODD
	# GPIO.output(ADC_CLK, 0)
	# GPIO.output(ADC_DIO, channel)
	# time.sleep(0.000002)
	# GPIO.output(ADC_CLK, 1)
	# GPIO.output(ADC_DIO, 1)
	# time.sleep(0.000002)
	# GPIO.output(ADC_CLK, 0)
	# GPIO.output(ADC_DIO, 1)
	# time.sleep(0.000002)

	dat1 = 0
	for i in range(0, 8):
		GPIO.output(ADC_CLK, 1);  time.sleep(0.000002)
		GPIO.output(ADC_CLK, 0);  time.sleep(0.000002)
		GPIO.setup(ADC_DIO, GPIO.IN)
		dat1 = dat1 << 1 | GPIO.input(ADC_DIO)  
	
	dat2 = 0
	for i in range(0, 8):
		dat2 = dat2 | GPIO.input(ADC_DIO) << i
		GPIO.output(ADC_CLK, 1);  time.sleep(0.000002)
		GPIO.output(ADC_CLK, 0);  time.sleep(0.000002)
	
	GPIO.output(ADC_CS, 1)
	GPIO.setup(ADC_DIO, GPIO.OUT)

	if dat1 == dat2:
		return dat1
	else:
		return 0

def getResult1():
	return getResult(1)


def loop():
	while True:
		for i in range(4):
			res = getResult(i)
			print ('res{} = {}'.format(i,res))
			time.sleep(0.1)
		time.sleep(1)

if __name__ == '__main__':		# Program start from here
	setup()
	try:
		loop()
	except KeyboardInterrupt:  	# When 'Ctrl+C' is pressed, the child program destroy() will be  executed.
		destroy()

