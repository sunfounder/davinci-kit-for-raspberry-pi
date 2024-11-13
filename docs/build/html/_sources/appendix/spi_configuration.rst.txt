.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

.. _spi_configuration:

SPI Configuration
-----------------------

**Step 1**: Enable the SPI port of your Raspberry Pi (If you have
enabled it, skip this; if you do not know whether you have done that or
not, please continue).

.. raw:: html

   <run></run>

.. code-block:: 

    sudo raspi-config

**3 Interfacing options**

.. image:: img/image282.png
   :align: center

**I3 SPI**

.. image:: img/i3spi.png
   :align: center

**<YES>, then click <OK> and <Finish>.**

.. image:: img/image286.png
   :align: center 

**Step 2:** Check that the spi modules are loaded and active.

.. raw:: html

   <run></run>

.. code-block:: 

    ls /dev/sp*

Then the following codes will appear (the number may be different).


.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

**Step 3:** Install Python module SPI-Py.

.. raw:: html

   <run></run>

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::
    This step is for python users, if you use C language, please
    skip.
