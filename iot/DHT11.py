'''
**********************************************************************
* Filename    : DHT11.py
* Description : test for SunFoudner DHT11 humiture & temperature module
* Author      : sunfounder
* E-mail      : service@sunfounder.com
* Website     : www.sunfounder.com
* Update      : Dream    2016-09-30    New release
**********************************************************************
'''
#!/usr/bin/env python3
import RPi.GPIO as GPIO
import time

class DHT11(object):
	def __init__(self, dhtPin):
		GPIO.setmode(GPIO.BCM)
		self.MAX_UNCHANGE_COUNT = 100
		self.STATE_INIT_PULL_DOWN = 1
		self.STATE_INIT_PULL_UP = 2
		self.STATE_DATA_FIRST_PULL_DOWN = 3
		self.STATE_DATA_PULL_UP = 4
		self.STATE_DATA_PULL_DOWN = 5
		self.dhtPin = dhtPin

	def get_result(self):
		result = self.readDht11()
		return result

	def readDht11(self):
		GPIO.setup(self.dhtPin, GPIO.OUT)
		GPIO.output(self.dhtPin, GPIO.HIGH)
		time.sleep(0.05)
		GPIO.output(self.dhtPin, GPIO.LOW)
		time.sleep(0.02)
		GPIO.setup(self.dhtPin, GPIO.IN, GPIO.PUD_UP)

		unchanged_count = 0
		last = -1
		data = []
		while True:
			current = GPIO.input(self.dhtPin)
			data.append(current)
			if last != current:
				unchanged_count = 0
				last = current
			else:
				unchanged_count += 1
				if unchanged_count > self.MAX_UNCHANGE_COUNT:
					break

		state = self.STATE_INIT_PULL_DOWN

		lengths = []
		current_length = 0

		for current in data:
			current_length += 1

			if state == self.STATE_INIT_PULL_DOWN:
				if current == GPIO.LOW:
					state = self.STATE_INIT_PULL_UP
				else:
					continue
			if state == self.STATE_INIT_PULL_UP:
				if current == GPIO.HIGH:
					state = self.STATE_DATA_FIRST_PULL_DOWN
				else:
					continue
			if state == self.STATE_DATA_FIRST_PULL_DOWN:
				if current == GPIO.LOW:
					state = self.STATE_DATA_PULL_UP
				else:
					continue
			if state == self.STATE_DATA_PULL_UP:
				if current == GPIO.HIGH:
					current_length = 0
					state = self.STATE_DATA_PULL_DOWN
				else:
					continue
			if state == self.STATE_DATA_PULL_DOWN:
				if current == GPIO.LOW:
					lengths.append(current_length)
					state = self.STATE_DATA_PULL_UP
				else:
					continue
		if len(lengths) != 40:
			#print ("Data not good, skip")
			return False

		shortest_pull_up = min(lengths)
		longest_pull_up = max(lengths)
		halfway = (longest_pull_up + shortest_pull_up) / 2
		bits = []
		the_bytes = []
		byte = 0

		for length in lengths:
			bit = 0
			if length > halfway:
				bit = 1
			bits.append(bit)
		#print ("bits: %s, length: %d" % (bits, len(bits)))
		for i in range(0, len(bits)):
			byte = byte << 1
			if (bits[i]):
				byte = byte | 1
			else:
				byte = byte | 0
			if ((i + 1) % 8 == 0):
				the_bytes.append(byte)
				byte = 0
		#print (the_bytes)
		checksum = (the_bytes[0] + the_bytes[1] + the_bytes[2] + the_bytes[3]) & 0xFF
		if the_bytes[4] != checksum:
			#print ("Data not good, skip")
			return False
		return [the_bytes[0], the_bytes[2]]