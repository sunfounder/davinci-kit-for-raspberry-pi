.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

What is Nodejs？
===================

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