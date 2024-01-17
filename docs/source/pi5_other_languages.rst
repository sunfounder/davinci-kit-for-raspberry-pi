Other Language (for Pi 5)
============================

The release of the Raspberry Pi 5 has brought us a more powerful model, but it also introduced some changes, most notably to the GPIO.

Although it retains its standard 40-pin interface, functionality has shifted due to its connection with the newly integrated RP1 southbridge chip. This custom RP1 chip now handles peripherals on the Pi 5 and has resulted in various compatibility concerns.

C Language
-----------
The C language implementation relies on the wiringPi library. However, the wiringPi community library is now archived and no longer receives updates, rendering it unsuitable for Raspberry Pi 5 projects. For additional information, refer to: https://github.com/WiringPi/WiringPi

.. image:: img/pi5_c_language.png

Processing
-----------
When using Processing 4 on Raspberry Pi 5, GPIO programming encounters challenges. Errors such as "Invalid argument" and "GPIO pin 17 seems to be unavailable on your platform" arise during the execution of GPIO-related code (as depicted in the accompanying image). For further details, visit: https://github.com/benfry/processing4/issues/807

.. image:: img/pi5_processing.png

Node.js
--------
Node.js utilizes the pigpio library, which, as of now, does not support Raspberry Pi 5. For more insights, visit: https://github.com/joan2937/pigpio/issues/589

.. image:: img/pi5_nodejs.png
    :width: 700

Scratch
--------
On a 64-bit system, the importation of the Raspberry Pi GPIO library faces issues, leading to unresponsiveness. For more information, visit: https://github.com/raspberrypi/bookworm-feedback/issues/91
