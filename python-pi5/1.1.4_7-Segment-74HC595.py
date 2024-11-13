#!/usr/bin/env python3

from gpiozero import OutputDevice
from time import sleep

# GPIO pins connected to 74HC595 shift register
SDI = OutputDevice(17)   # Serial Data Input
RCLK = OutputDevice(18)  # Memory Clock Input (Register Clock)
SRCLK = OutputDevice(27) # Shift Register Clock

# Hexadecimal digit codes for a common cathode 7-segment display
segCode = [
    0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d,
    0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71
]

def hc595_shift(data):
    # Shift 8 bits of data into the 74HC595
    for bit in range(8):
        # Set SDI high or low based on data bit
        SDI.value = 0x80 & (data << bit)
        # Trigger shift register clock
        SRCLK.on()
        sleep(0.001)
        SRCLK.off()
    # Latch data to output by triggering memory clock
    RCLK.on()
    sleep(0.001)
    RCLK.off()

def display_all_on():
    # Function to turn all segments on (for common cathode 7-segment display)
    all_on_code = 0x3f
    hc595_shift(all_on_code)
    print("Displaying all segments on")

try:
    while True:
        # Display each hexadecimal digit on 7-segment display
        for code in segCode:
            hc595_shift(code)  # Shift the code into 74HC595
            # Print the displayed segment code
            print(f"Displaying segCode[{segCode.index(code)}]: 0x{code:02X}")
            sleep(0.5)  # Pause between displaying each digit

except KeyboardInterrupt:
    # Gracefully handle script interruption (e.g., Ctrl+C)
    pass
