.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

GPIO Extension Board
====================

Before starting to learn the commands, you first need to know more about
the pins of the Raspberry Pi, which is key to the subsequent study.

We can easily lead out pins of the Raspberry Pi to breadboard by GPIO
Extension Board to avoid GPIO damage caused by frequent plugging in or
out. This is our 40-pin GPIO Extension Board and GPIO cable for
Raspberry Pi model B+, 2 model B and 3, 4 model B.

.. image:: img/image32.png
    :align: center

**Pin Number**

The pins of Raspberry Pi have three kinds of ways to name and they are wiringPi, BCM and Board.

Among these naming methods, 40-pin GPIO Extension board uses the naming method, BCM. But for some special pins, such as I2C port and SPI port, they use the Name that comes with themselves. 

The following table shows us the naming methods of WiringPi, Board and the intrinsic Name of each pin on GPIO Extension board. For example, for the GPIO17, the Board naming method of it is 11, the wiringPi naming method is 0, and the intrinsic naming method of it is GPIO0.

.. note::

    1) In C Language, what is used is the naming method WiringPi.
    
    2) In Python Language, the applied naming methods are Board and BCM, and the function GPIO.setmode() is used to set them.

.. image:: img/gpio_board.png