#!/usr/bin/env python3

from gpiozero import LED
import time

def main():
    led = LED(17)
    led.blink(0.5, 0.5)
    while True:
        pass

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        pass
