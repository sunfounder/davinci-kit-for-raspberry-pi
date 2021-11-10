#!/usr/bin/env python3

import RPi.GPIO as GPIO
import time

SERVO_MIN_PULSE = 500
SERVO_MAX_PULSE = 2500

ledPin = 18    # define the ledPin
pirPin = 17    # define the sensorPin
servoPin = 22  # define the servoPin
buzPin = 27    # define the buzzerpin


CL = [0, 131, 147, 165, 175, 196, 211, 248]        # Frequency of Low C notes

CM = [0, 262, 294, 330, 350, 393, 441, 495]        # Frequency of Middle C notes

CH = [0, 525, 589, 661, 700, 786, 882, 990]        # Frequency of High C notes

song = [    CH[5],CH[2],CM[6],CH[2],CH[3],CH[6],CH[3],CH[5],CH[3],CM[6],CH[2]    ]

beat = [    1,1,1,1,1,2,1,1,1,1,1,]


def setup():
    global p
    global Buzz                        # Assign a global variable to replace GPIO.PWM 
    GPIO.setmode(GPIO.BCM)       # Numbers GPIOs by physical location
    GPIO.setup(ledPin, GPIO.OUT)   # Set ledPin's mode is output
    GPIO.setup(pirPin, GPIO.IN)    # Set sensorPin's mode is input
    GPIO.setup(servoPin, GPIO.OUT)   # Set servoPin's mode is output
    GPIO.output(servoPin, GPIO.LOW)  # Set servoPin to low
    GPIO.setup(buzPin, GPIO.OUT)    # Set pins' mode is output

    Buzz = GPIO.PWM(buzPin, 440)    # 440 is initial frequency.
    Buzz.start(50)                    # Start Buzzer pin with 50% duty ration

    p = GPIO.PWM(servoPin, 50)     # set Frequece to 50Hz
    p.start(0)                     # Duty Cycle = 0

def map(value, inMin, inMax, outMin, outMax):
    return (outMax - outMin) * (value - inMin) / (inMax - inMin) + outMin

    
def setAngle(angle):      # make the servo rotate to specific angle (0-180 degrees) 
    angle = max(0, min(180, angle))
    pulse_width = map(angle, 0, 180, SERVO_MIN_PULSE, SERVO_MAX_PULSE)
    pwm = map(pulse_width, 0, 20000, 0, 100)
    p.ChangeDutyCycle(pwm)#map the angle to duty cycle and output it
    
def doorbell():
    for i in range(1, len(song)):        # Play song 1
        Buzz.ChangeFrequency(song[i])    # Change the frequency along the song note
        time.sleep(beat[i] * 0.25)        # delay a note for beat * 0.25s
    time.sleep(1)                        # Wait a second for next song.

def closedoor():
    GPIO.output(ledPin, GPIO.LOW)
    for i in range(180, -1, -1): #make servo rotate from 180 to 0 deg
        setAngle(i)
        time.sleep(0.001)
    time.sleep(1)
def opendoor():
    GPIO.output(ledPin, GPIO.LOW)
    for i in range(0, 181, 1):   #make servo rotate from 0 to 180 deg
        setAngle(i)     # Write to servo
        time.sleep(0.001)
    time.sleep(1)
    doorbell()
    closedoor()

def loop():
    while True:
        if GPIO.input(pirPin)==GPIO.HIGH:
            opendoor()


def destroy():
    GPIO.cleanup()                     # Release resource
    p.stop()
    Buzz.stop()

if __name__ == '__main__':     # Program start from here
    setup()
    try:
        loop()
    except KeyboardInterrupt:  # When 'Ctrl+C' is pressed, the program destroy() will be  executed.
        destroy()