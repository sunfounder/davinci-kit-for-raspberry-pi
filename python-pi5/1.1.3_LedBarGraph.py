#!/usr/bin/env python3

from gpiozero import LED
from time import sleep

# Define GPIO pins where LEDs are connected
led_pins = [18, 23, 24, 25, 8, 7, 12, 16, 20, 21]

# Create LED objects for each pin
leds = [LED(pin) for pin in led_pins]

def odd_led_bar_graph():
    # Sequentially light up odd-numbered LEDs (index 0, 2, 4, etc.)
    for i in range(5):
        j = i * 2  # Calculate odd index
        leds[j].on()  # Turn on odd-numbered LED
        sleep(0.3)    # Delay for visual effect
        leds[j].off() # Turn off LED

def even_led_bar_graph():
    # Sequentially light up even-numbered LEDs (index 1, 3, 5, etc.)
    for i in range(5):
        j = i * 2 + 1  # Calculate even index
        leds[j].on()   # Turn on even-numbered LED
        sleep(0.3)     # Delay for visual effect
        leds[j].off()  # Turn off LED

def all_led_bar_graph():
    # Sequentially light up all LEDs one by one
    for led in leds:
        led.on()       # Turn on LED
        sleep(0.3)     # Delay for visual effect
        led.off()      # Turn off LED

def turn_off_all_leds():
    # Turn off all LEDs at once
    for led in leds:
        led.off()

try:
    # Main loop to cycle through LED patterns
    while True:
        odd_led_bar_graph()   # Activate odd-numbered LEDs
        sleep(0.3)            # Pause between patterns
        even_led_bar_graph()  # Activate even-numbered LEDs
        sleep(0.3)            # Pause between patterns
        all_led_bar_graph()   # Activate all LEDs
        sleep(0.3)            # Pause before restarting

except KeyboardInterrupt:
    # Handle interruption (Ctrl+C) gracefully
    turn_off_all_leds()      # Ensure all LEDs are turned off on exit
    pass
