#!/usr/bin/env python3
import smbus
import math
import time

# Power management registers for MPU-6050
power_mgmt_1 = 0x6b
power_mgmt_2 = 0x6c

# Read a single byte from a specific address
def read_byte(adr):
    return bus.read_byte_data(address, adr)

# Read a word (2 bytes) from a specific address
def read_word(adr):
    high = bus.read_byte_data(address, adr)
    low = bus.read_byte_data(address, adr+1)
    val = (high << 8) + low
    return val

# Convert a word to a signed value (2's complement)
def read_word_2c(adr):
    val = read_word(adr)
    if val >= 0x8000:
        return -((65535 - val) + 1)
    else:
        return val

# Calculate Euclidean distance
def dist(a, b):
    return math.sqrt((a * a) + (b * b))

# Calculate the Y-axis rotation
def get_y_rotation(x, y, z):
    radians = math.atan2(x, dist(y, z))
    return -math.degrees(radians)

# Calculate the X-axis rotation
def get_x_rotation(x, y, z):
    radians = math.atan2(y, dist(x, z))
    return math.degrees(radians)

# Initialize I2C communication
bus = smbus.SMBus(1) # For Raspberry Pi Revision 2 boards
address = 0x68       # I2C address of the MPU-6050

# Wake up the MPU-6050 as it starts in sleep mode
bus.write_byte_data(address, power_mgmt_1, 0)

while True:
    time.sleep(0.1)
    
    # Reading gyroscope data
    gyro_xout = read_word_2c(0x43)
    gyro_yout = read_word_2c(0x45)
    gyro_zout = read_word_2c(0x47)

    # Printing gyroscope data (raw and scaled)
    print("gyro_xout:", gyro_xout, "scaled:", (gyro_xout / 131))
    print("gyro_yout:", gyro_yout, "scaled:", (gyro_yout / 131))
    print("gyro_zout:", gyro_zout, "scaled:", (gyro_zout / 131))

    # Reading accelerometer data
    accel_xout = read_word_2c(0x3b)
    accel_yout = read_word_2c(0x3d)
    accel_zout = read_word_2c(0x3f)

    # Scaling accelerometer data
    accel_xout_scaled = accel_xout / 16384.0
    accel_yout_scaled = accel_yout / 16384.0
    accel_zout_scaled = accel_zout / 16384.0

    # Printing accelerometer data (raw and scaled)
    print("accel_xout:", accel_xout, "scaled:", accel_xout_scaled)
    print("accel_yout:", accel_yout, "scaled:", accel_yout_scaled)
    print("accel_zout:", accel_zout, "scaled:", accel_zout_scaled)

    # Printing calculated rotation angles
    print("x rotation:", get_x_rotation(accel_xout_scaled, accel_yout_scaled, accel_zout_scaled))
    print("y rotation:", get_y_rotation(accel_xout_scaled, accel_yout_scaled, accel_zout_scaled))

    time.sleep(1)
