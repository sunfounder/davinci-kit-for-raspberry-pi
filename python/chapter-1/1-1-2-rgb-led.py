from gpiozero import RGBLED
import time

COLORS = [
    (1, 0, 0),
    (0, 1, 1),
    (0, 0, 1),
    (1, 1, 0),
    (1, 0, 1),
    (0, 0, 1)
]

def main():
    led = RGBLED(17, 18, 27)
    while True:
        for color in COLORS:
            led.color = color
            time.sleep(0.5)

if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        exit()
