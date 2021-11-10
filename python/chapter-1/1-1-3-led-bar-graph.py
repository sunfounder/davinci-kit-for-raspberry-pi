from gpiozero import LED
import time

ints = [17, 18, 27, 22, 23, 24, 25, 2, 3, 8]

def blink(pin):
    pin.on()
    time.sleep(0.3)
    pin.off()

def loop():
    pins = [LED(i) for i in ints]
    for pin in pins:
        pin.off()
    while True:
        for i in range(5):
            blink(pins[i * 2])
        for i in range(5):
            blink(pins[i * 2 + 1])
        for pin in pins:
            blink(pin)

if __name__ == '__main__':
    try:
        loop()
    except KeyboardInterrupt:
        exit()
