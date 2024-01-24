#!/usr/bin/env python3
from gpiozero import OutputDevice
from time import sleep

# Define GPIO pins connected to the 74HC595 shift register
SDI = OutputDevice(17)   # Serial Data Input
RCLK = OutputDevice(18)  # Register Clock
SRCLK = OutputDevice(27) # Shift Register Clock

# Define patterns for matrix display; ROWs are anodes (+), COLs are cathodes (-)
# Pattern for ROWs (anode signals)
code_H = [0x01, 0xff, 0x80, 0xff, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff]
# Pattern for COLs (cathode signals)
code_L = [0x00, 0x7f, 0x00, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfe, 0xfd, 0xfb, 0xf7, 0xef, 0xdf, 0xbf, 0x7f]

# Shift data to 74HC595
def hc595_shift(dat):
    """ Shift data to the 74HC595 shift register for displaying on the matrix. """
    for i in range(8):
        # Set SDI value and trigger shift register clock
        SDI.value = 0x80 & (dat << i)
        SRCLK.on()
        SRCLK.off()
    # Trigger register clock to update display
    RCLK.on()
    sleep(0.001)
    RCLK.off()

def main():
    """ Main loop for cycling through display patterns. """
    while True:
        # Cycle through patterns in ascending order
        for i in range(len(code_H)):
            hc595_shift(code_L[i])
            hc595_shift(code_H[i])
            sleep(0.1)

        # Cycle through patterns in descending order
        for i in range(len(code_H)-1, -1, -1):
            hc595_shift(code_L[i])
            hc595_shift(code_H[i])
            sleep(0.1)

# Run main loop, handle keyboard interrupt gracefully
try:
    main()
except KeyboardInterrupt:
    pass
