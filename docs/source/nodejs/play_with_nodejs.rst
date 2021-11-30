Play with Nodejs
==========================

What is Nodejs？
---------------------------

Node.js was released in May 2009 and developed by Ryan Dahl. It is a JavaScript runtime environment based on the Chrome V8 engine. It uses an event-driven, non-blocking I/O model to allow JavaScript to run on the server-side development platform.

Simply put, Node.js is JavaScript running on the server. If you are familiar with Javascript, then you will easily learn Node.js.

Nodejs usually uses the command ``npm install xxx`` to install third-party packages, which requires us to install the npm tool, similar to the pip tool in python.

Install or update nodejs and npm
------------------------------------------

Run the following commands to install and update nodejs and npm.

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

Then check the current Node version with the following command.

.. raw:: html

    <run></run>

.. code-block::

    node -v

The following command checks the current npm version.

.. raw:: html

    <run></run>

.. code-block::

    npm -v

Check the pigpio
----------------------

pigpio is a module used to control Raspberry Pi GPIO channels. This package provides some methods to control GPIO on Raspberry Pi. For examples and documentation, please visit: https://www.npmjs.com/package/pigpio.

We have installed the pigpio package in the davinci-kit-for-raspberry-pi/nodejs directory, you only need to test whether it is available.

Enter the nodejs sample directory of Davinci and enter nodejs:

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

If the above screen does not appear, you can use the command to reinstall.

.. raw:: html

    <run></run>

.. code-block::

    npm install pigpio

If you want to exit node CLI, please press Ctrl+C twice.

.. image:: img/pigpio3.png

Projects
---------------

.. toctree::
    1.1.1_blinking_led_js
    1.1.2_rgb_led_js
    1.1.3_led_bar_graph_js
    1.1.4_7-segment_display_js
    1.1.5_4_digit_7_segment_display_js
