#!/usr/bin/env python3
from gpiozero import OutputDevice
import smbus
import math
import time

# Initialize power management registers for MPU6050
power_mgmt_1 = 0x6b
power_mgmt_2 = 0x6c

# Set up I2C communication with MPU6050
bus = smbus.SMBus(1)  # Initialize SMBus
address = 0x68        # MPU6050 I2C address
bus.write_byte_data(address, power_mgmt_1, 0)  # Wake up MPU6050

# Initialize motor pins to GPIO pins 18, 23, 24, 25
motorPin = [OutputDevice(pin) for pin in (18, 23, 24, 25)]

# Set motor rotation speed parameters
rolePerMinute = 15
stepsPerRevolution = 2048
# Calculate delay between steps for desired RPM
stepSpeed = (60 / rolePerMinute) / stepsPerRevolution

# Read a single byte from the specified I2C address
def read_byte(adr):
    return bus.read_byte_data(address, adr)

# Read a word (2 bytes) from the specified I2C address
def read_word(adr):
    high = bus.read_byte_data(address, adr)
    low = bus.read_byte_data(address, adr + 1)
    val = (high << 8) + low
    return val

# Read a word in 2's complement form
def read_word_2c(adr):
    val = read_word(adr)
    if val >= 0x8000:
        return -((65535 - val) + 1)
    else:
        return val

# Calculate Euclidean distance between two points
def dist(a, b):
    return math.sqrt((a * a) + (b * b))

# Calculate Y-axis rotation
def get_y_rotation(x, y, z):
    radians = math.atan2(x, dist(y, z))
    return -math.degrees(radians)

# Calculate X-axis rotation
def get_x_rotation(x, y, z):
    radians = math.atan2(y, dist(x, z))
    return math.degrees(radians)

# Get tilt angle from MPU6050
def mpu6050():
    accel_xout = read_word_2c(0x3b)
    accel_yout = read_word_2c(0x3d)
    accel_zout = read_word_2c(0x3f)
    accel_xout_scaled = accel_xout / 16384.0
    accel_yout_scaled = accel_yout / 16384.0
    accel_zout_scaled = accel_zout / 16384.0
    angle = get_y_rotation(accel_xout_scaled, accel_yout_scaled, accel_zout_scaled)
    return angle

# Control stepper motor rotation
def rotary(direction):
    if direction == 'c':
        # Clockwise rotation sequence
        for j in range(4):
            for i in range(4):
                if 0x99 >> j & (0x08 >> i):
                    motorPin[i].on()
                else:
                    motorPin[i].off()
                time.sleep(stepSpeed)
    elif direction == 'a':
        # Anti-clockwise rotation sequence
        for j in range(4):
            for i in range(4):
                if 0x99 << j & (0x08 >> i):
                    motorPin[i].on()
                else:
                    motorPin[i].off()
                time.sleep(stepSpeed)

# Main loop for continuously reading tilt angle and controlling motor
try:
    while True:
        angle = mpu6050()
        if angle >= 45:
            rotary('a')  # Rotate anti-clockwise for positive tilt
        elif angle <= -45:
            rotary('c')  # Rotate clockwise for negative tilt
except KeyboardInterrupt:
    # Turn off all motor pins on keyboard interrupt
    for pin in motorPin:
        pin.off()
