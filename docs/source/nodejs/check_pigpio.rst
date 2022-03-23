Check the pigpio
===================

pigpio is a module used to control Raspberry Pi GPIO channels. This package provides some methods to control GPIO on Raspberry Pi. For examples and documentation, please visit: https://www.npmjs.com/package/pigpio.

Enter the following command to install the pigpio library.

.. raw:: html

    <run></run>

.. code-block::

    npm install pigpio

Check if the library is installed successfully, change the directory and enter nodejs:

.. raw:: html

    <run></run>

.. code-block::

    cd /home/pi/davinci-kit-for-raspberry-pi/nodejs
    nodejs

.. image:: img/pigpio1.png

Then enter require('pigpio'):

.. raw:: html

    <run></run>

.. code-block::

    require('pigpio')

.. image:: img/pigpio2.png   

If the above screen appears, the library installation is successful.


If you want to exit node CLI, please press Ctrl+C twice.

.. image:: img/pigpio3.png