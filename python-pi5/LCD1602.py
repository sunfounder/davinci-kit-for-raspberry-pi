#!/usr/bin/env python3

import time
import smbus2 as smbus
import subprocess

BUS = smbus.SMBus(1)

def write_word(addr, data):
	global BLEN
	temp = data
	if BLEN == 1:
		temp |= 0x08
	else:
		temp &= 0xF7
	BUS.write_byte(addr ,temp)

def send_command(comm):
	# Send bit7-4 firstly
	buf = comm & 0xF0
	buf |= 0x04               # RS = 0, RW = 0, EN = 1
	write_word(LCD_ADDR ,buf)
	time.sleep(0.002)
	buf &= 0xFB               # Make EN = 0
	write_word(LCD_ADDR ,buf)

	# Send bit3-0 secondly
	buf = (comm & 0x0F) << 4
	buf |= 0x04               # RS = 0, RW = 0, EN = 1
	write_word(LCD_ADDR ,buf)
	time.sleep(0.002)
	buf &= 0xFB               # Make EN = 0
	write_word(LCD_ADDR ,buf)

def send_data(data):
	# Send bit7-4 firstly
	buf = data & 0xF0
	buf |= 0x05               # RS = 1, RW = 0, EN = 1
	write_word(LCD_ADDR ,buf)
	time.sleep(0.002)
	buf &= 0xFB               # Make EN = 0
	write_word(LCD_ADDR ,buf)

	# Send bit3-0 secondly
	buf = (data & 0x0F) << 4
	buf |= 0x05               # RS = 1, RW = 0, EN = 1
	write_word(LCD_ADDR ,buf)
	time.sleep(0.002)
	buf &= 0xFB               # Make EN = 0
	write_word(LCD_ADDR ,buf)

def i2c_scan():
    cmd = "i2cdetect -y 1 |awk \'NR>1 {$1=\"\";print}\'"
    result = subprocess.check_output(cmd, shell=True).decode()
    result = result.replace("\n", "").replace(" --", "")
    i2c_list = result.split(' ')
    return i2c_list

def init(addr=None, bl=1):
	global LCD_ADDR
	global BLEN

	i2c_list = i2c_scan()
	print(f"i2c_list: {i2c_list}")

	if addr is None:
		if '27' in i2c_list:
			LCD_ADDR = 0x27
		elif '3f' in i2c_list:
			LCD_ADDR = 0x3f
		else:
			raise IOError("I2C address 0x27 or 0x3f no found.")
	else:
		LCD_ADDR = addr
		if str(hex(addr)).strip('0x') not in i2c_list:
			raise IOError(f"I2C address {str(hex(addr))} or 0x3f no found.")
		
	BLEN = bl
	try:
		send_command(0x33) # Must initialize to 8-line mode at first
		time.sleep(0.005)
		send_command(0x32) # Then initialize to 4-line mode
		time.sleep(0.005)
		send_command(0x28) # 2 Lines & 5*7 dots
		time.sleep(0.005)
		send_command(0x0C) # Enable display without cursor
		time.sleep(0.005)
		send_command(0x01) # Clear Screen
		BUS.write_byte(LCD_ADDR, 0x08)
	except:
		return False
	else:
		return True

def clear():
	send_command(0x01) # Clear Screen

def openlight():  # Enable the backlight
	BUS.write_byte(0x27,0x08)
	BUS.close()

def write(x, y, str):
	if x < 0:
		x = 0
	if x > 15:
		x = 15
	if y <0:
		y = 0
	if y > 1:
		y = 1

	# Move cursor
	addr = 0x80 + 0x40 * y + x
	send_command(addr)

	for chr in str:
		send_data(ord(chr))

if __name__ == '__main__':
	init(0x27, 1)
	write(4, 0, 'Hello')
	write(7, 1, 'world!')

