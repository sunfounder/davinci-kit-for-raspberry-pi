
import RPi.GPIO as GPIO
import ADC0834
import time

ledPins = [25, 12, 16, 20, 21, 5, 6, 13, 19, 26]

def setup():
    GPIO.setmode(GPIO.BCM)
    ADC0834.setup()
    for i in ledPins:
        GPIO.setup(i, GPIO.OUT)
        GPIO.output(i, GPIO.HIGH)

def LedBarGraph(value):
    for i in ledPins:
        GPIO.output(i,GPIO.HIGH)
    for i in range(value):
        GPIO.output(ledPins[i],GPIO.LOW)

def destroy():
    GPIO.cleanup()

def loop():
    while True:
        analogVal = ADC0834.getResult()
        LedBarGraph(int(analogVal/25))

if __name__ == '__main__':
    setup()
    try:
        loop()
    except KeyboardInterrupt: # When 'Ctrl+C' is pressed, the program destroy() will be executed.
        destroy()