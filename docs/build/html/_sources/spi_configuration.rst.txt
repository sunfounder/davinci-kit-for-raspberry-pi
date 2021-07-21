SPI Configuration
-----------------------

**Step 1**: Enable the SPI port of your Raspberry Pi (If you have
enabled it, skip this; if you do not know whether you have done that or
not, please continue).

.. code-block:: 

    sudo raspi-config

**3 Interfacing options**

.. image:: media/image282.png
   :width: 6.69792in
   :height: 3.02083in

**P4 SPI**

.. image:: media/image285.png
   :width: 6.66667in
   :height: 3.05208in

**<YES>, then click <OK> and <Finish>.**

.. image:: media/image286.png
   :width: 5.11458in
   :height: 3.55208in
   :align: center 

**Step 2:** Check that the i2c modules are loaded and active.

.. code-block:: 

    ls /dev/sp*

Then the following codes will appear (the number may be different).

.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

**Step 3:** Install Python module SPI-Py.

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::
    This step is for python users, if you use C language, please
    skip.
