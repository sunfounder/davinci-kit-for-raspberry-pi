#!/usr/bin/env python3

import LCD1602
from gpiozero import LED, Buzzer, Button
import ADC0834
import time
import math

# Initialize joystick button, buzzer, and LED
Joy_BtnPin = Button(22)
buzzPin = Buzzer(23)
ledPin = LED(24)

# Set initial upper temperature threshold
upperTem = 40

# Setup ADC and LCD modules
ADC0834.setup()
LCD1602.init(0x27, 1)

def get_joystick_value():
    """
    Reads the joystick values and returns a change value based on the joystick's position.
    """
    x_val = ADC0834.getResult(1)
    y_val = ADC0834.getResult(2)
    if x_val > 200:
        return 1
    elif x_val < 50:
        return -1
    elif y_val > 200:
        return -10
    elif y_val < 50:
        return 10
    else:
        return 0

def upper_tem_setting():
    """
    Adjusts and displays the upper temperature threshold on the LCD.
    """
    global upperTem
    LCD1602.write(0, 0, 'Upper Adjust: ')
    change = int(get_joystick_value())
    upperTem += change
    strUpperTem = str(upperTem)
    LCD1602.write(0, 1, strUpperTem)
    LCD1602.write(len(strUpperTem), 1, '              ')
    time.sleep(0.1)

def temperature():
    """
    Reads the current temperature from the sensor and returns it in Celsius.
    """
    analogVal = ADC0834.getResult()
    Vr = 5 * float(analogVal) / 255
    Rt = 10000 * Vr / (5 - Vr)
    temp = 1 / (((math.log(Rt / 10000)) / 3950) + (1 / (273.15 + 25)))
    Cel = temp - 273.15
    return round(Cel, 2)

def monitoring_temp():
    """
    Monitors and displays the current temperature and upper temperature threshold. 
    Activates buzzer and LED if the temperature exceeds the upper limit.
    """
    global upperTem
    Cel = temperature()
    LCD1602.write(0, 0, 'Temp: ')
    LCD1602.write(0, 1, 'Upper: ')
    LCD1602.write(6, 0, str(Cel))
    LCD1602.write(7, 1, str(upperTem))
    time.sleep(0.1)
    if Cel >= upperTem:
        buzzPin.on()
        ledPin.on()
    else:
        buzzPin.off()
        ledPin.off()

# Main execution loop
try:
    lastState = 1
    stage = 0
    while True:
        currentState = Joy_BtnPin.value
        # Toggle between settings and monitoring mode
        if currentState == 1 and lastState == 0:
            stage = (stage + 1) % 2
            time.sleep(0.1)
            LCD1602.clear()
        lastState = currentState
        if stage == 1:
            upper_tem_setting()
        else:
            monitoring_temp()
except KeyboardInterrupt:
    # Clean up and exit
    LCD1602.clear()
    ADC0834.destroy()
