.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

FAQ
============

C code is not working?
----------------------------------


* Check your wiring for problems.
* Check if the code is reporting errors, if so, refer to: :ref:`install_wiringpi`.
* Has the code been compiled before running.
* If all the above 3 conditions are OK, it may be that your wiringPi version (2.50) is not compatible with your Raspberry Pi 4B and above, refer to :ref:`install_wiringpi` to manually upgrade it to version 2.52.





.. _faq_soc:

If ``gpiozero`` doesn't work.
-------------------------------------------------------------------------

Our Raspberry Pi 5 GPIO Python tutorial is based on the gpiozero library, 
and it has been thoroughly tested during the design process. 

However, recent modifications to the Linux kernel on the Raspberry Pi OS [1] have changed the way GPIO system calls are handled, 
which has caused the original Python library to be unable to access GPIO on the Raspberry Pi 5. 
Our developers have reported this issue to the gpiozero library, 
and the gpiozero developers are aware of the issue and are actively working on an update [2]. 

* [1] https://github.com/raspberrypi/linux/pull/6144
* [2] https://github.com/gpiozero/gpiozero/issues/1166

In the meantime, 
we have found a temporary solution: by running the command below, the GPIO will function normally. 

.. code-block::

    sudo ln -s gpiochip0 /dev/gpiochip4

This solution will remain effective until the gpiozero library releases an appropriate fix.

