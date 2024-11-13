#!/usr/bin/env python3
import LCD1602
import time
from gpiozero import DistanceSensor, Buzzer

# Initialize the ultrasonic sensor with GPIO pins
sensor = DistanceSensor(echo=24, trigger=23)  # Echo pin is GPIO 24, Trigger pin is GPIO 23

# Initialize the buzzer connected to GPIO pin 17
buzzer = Buzzer(17)

def lcdsetup():
    # Initialize the LCD with I2C address and enable backlight
    LCD1602.init(0x27, 1)  # 0x27 is the I2C address of the LCD
    LCD1602.clear()  # Clear the LCD display
    # Display startup messages on LCD
    LCD1602.write(0, 0, 'Ultrasonic Starting')
    LCD1602.write(1, 1, 'By SunFounder')
    time.sleep(2)  # Wait for 2 seconds

def distance():
    # Calculate and return the distance measured by the sensor
    dis = sensor.distance * 100  # Convert distance to centimeters
    print('Distance: {:.2f} cm'.format(dis))  # Print distance with two decimal places
    time.sleep(0.3)  # Wait for 0.3 seconds before next measurement
    return dis

def loop():
    # Continuously measure distance and update LCD and buzzer
    while True:
        dis = distance()  # Get the current distance
        # Display distance and handle alerts based on distance
        if dis > 400:  # Check if distance is out of range
            LCD1602.clear()
            LCD1602.write(0, 0, 'Error')
            LCD1602.write(3, 1, 'Out of range')
            time.sleep(0.5)
        else:
            # Display current distance on LCD
            LCD1602.clear()
            LCD1602.write(0, 0, 'Distance is')
            LCD1602.write(5, 1, str(round(dis, 2)) + ' cm')
            # Adjust buzzer frequency based on distance
            if dis >= 50:
                time.sleep(0.5)
            elif 20 < dis < 50:
                # Medium distance: medium buzzer frequency
                for _ in range(2):
                    buzzer.on()
                    time.sleep(0.05)
                    buzzer.off()
                    time.sleep(0.2)
            elif dis <= 20:
                # Close distance: high buzzer frequency
                for _ in range(5):
                    buzzer.on()
                    time.sleep(0.05)
                    buzzer.off()
                    time.sleep(0.05)

try:
    lcdsetup()  # Setup the LCD display
    loop()      # Start the measurement loop
except KeyboardInterrupt:
    # Turn off buzzer and clear LCD on user interrupt (e.g., Ctrl+C)
    buzzer.off()
    LCD1602.clear()
