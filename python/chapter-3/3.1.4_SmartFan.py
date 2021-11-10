import RPi.GPIO as GPIO
import time
import ADC0834
import math

# Set up pins
MotorPin1   = 5
MotorPin2   = 6
MotorEnable = 13
BtnPin  = 22


def setup():
    global p_M1,p_M2
    ADC0834.setup()
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(MotorPin1, GPIO.OUT)
    GPIO.setup(MotorPin2, GPIO.OUT)
    p_M1=GPIO.PWM(MotorPin1,2000)
    p_M2=GPIO.PWM(MotorPin2,2000)
    p_M1.start(0)
    p_M2.start(0)
    GPIO.setup(MotorEnable, GPIO.OUT, initial=GPIO.LOW)
    GPIO.setup(BtnPin, GPIO.IN)

def temperature():
    analogVal = ADC0834.getResult()
    Vr = 5 * float(analogVal) / 255
    Rt = 10000 * Vr / (5 - Vr)
    temp = 1/(((math.log(Rt / 10000)) / 3950) + (1 / (273.15+25)))
    Cel = temp - 273.15
    Fah = Cel * 1.8 + 32
    return Cel

def motor(level):
    if level == 0:
        GPIO.output(MotorEnable, GPIO.LOW)
        return 0
    if level>=4:
        level = 4
    GPIO.output(MotorEnable, GPIO.HIGH)
    p_M1.ChangeDutyCycle(level*25)
    return level


def main():
    lastState=0
    level=0
    markTemp = temperature()
    while True:
        currentState =GPIO.input(BtnPin)
        currentTemp=temperature()
        if currentState == 1 and lastState == 0:
            level=(level+1)%5
            markTemp = currentTemp
            time.sleep(0.5)
        lastState=currentState
        if level!=0:
            if currentTemp-markTemp <= -2:
                level = level -1
                markTemp=currentTemp            
            if currentTemp-markTemp >= 2:
                level = level +1
                markTemp=currentTemp             
        level = motor(level)
		

def destroy():
	GPIO.output(MotorEnable, GPIO.LOW)
	p_M1.stop()
	p_M2.stop()
	GPIO.cleanup()    

if __name__ == '__main__':
	setup()
	try:
		main()
	except KeyboardInterrupt:
		destroy()
