.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

.. _install_the_libraries:

Install the Libraries
==========================

For C User
--------------

BCM2835
~~~~~~~~~~~~~~~
This is a C library for Raspberry Pi (RPi). It provides access to GPIO and other IO functions on the Broadcom BCM 2835 chip, as used in the RaspberryPi, allowing access to the GPIO pins on the 26 pin IDE plug on the RPi board so you can control and interface with various external devices.

It provides functions for reading digital inputs and setting digital outputs, using SPI and I2C, and for accessing the system timers. Pin event detection is supported by polling (interrupts are not supported).

Works on all versions upt to and including RPI 4. Works with all versions of Debian up to and including Debian Buster 10.


Open a terminal and download the ``bcm2835`` library to the ``~`` path.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~
    wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.69.tar.gz

Unzip the package.

.. raw:: html

   <run></run>

.. code-block:: 

    tar zxvf bcm2835-1.69.tar.gz

Install the BCM2835 library with the following commands.

.. raw:: html

   <run></run>

.. code-block:: 

    cd bcm2835-1.69
    ./configure
    make
    sudo make check
    sudo make install

* Reference: `bcm2835 <http://www.airspayce.com/mikem/bcm2835/>`_  


For Python User
----------------------

.. _create_virtual:

Creating a Virtual Environment
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

When using Raspberry Pi or similar devices, it is recommended to install packages with ``pip`` in a virtual environment. It offers dependency isolation, increases system security, maintains system cleanliness, and facilitates project migration and sharing, simplifying dependency management. These benefits make virtual environments an extremely important and useful tool in Python development.

Below are the steps to create a virtual environment:

**1. Create a virtual environment**

Firstly, you need to ensure that your system has Python installed. Python version 3.3 and later come with the ``venv`` module to create virtual environments, eliminating the need for separate installation. If you are using Python 2 or a version before Python 3.3, you will need to install ``virtualenv``.

* For Python 3:

Python 3.3 and later versions can directly use the ``venv`` module:

.. raw:: html

    <run></run>

.. code-block:: shell

    python3 -m venv myenv

This will create a virtual environment named ``myenv`` in the current directory.

* For Python 2:

If you are still using Python 2, you first need to install ``virtualenv``:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install virtualenv

Then, create a virtual environment:

.. raw:: html

    <run></run>

.. code-block:: shell

    virtualenv myenv

This also creates a virtual environment named ``myenv`` in the current directory.

**2. Activating the Virtual Environment**

After creating the virtual environment, you need to activate it for use.

.. note::

    Each time you restart the Raspberry Pi, or open a new terminal, you will need to run the following command again to activate the virtual environment.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Once the virtual environment is activated, you will see the environment name before the command line prompt, indicating you are working within the virtual environment.


**3. Exiting the Virtual Environment**

When you have completed your work and wish to exit the virtual environment, simply run:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

This will return you to the system's global Python environment.

**4. Deleting the Virtual Environment**

If you no longer need a particular virtual environment, you can simply delete the directory containing the virtual environment:

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv


Luma.LED_Matrix
~~~~~~~~~~~~~~~~~~~~~~~

This is a Python 3 library for interfacing LED matrix displays using the MAX7219 driver (via SPI), WS2812 (NeoPixels, including Pimoroni Unicorn pHat/Hat and Unicorn Hat HD), and APA102 (DotStar) on the Raspberry Pi and other Linux-based single-board computers.

#. Add the user to the ``spi`` and ``gpio`` groups to ensure that the current user (replace "pi" with your own username) has permission to access the SPI and GPIO interfaces.

   .. raw:: html
   
       <run></run>
   
   .. code-block:: shell

        sudo usermod -a -G spi,gpio pi

   After executing this command, it's recommended to restart the system or log out and log back in to apply the group membership changes.

#. Install the necessary dependencies: Use ``apt`` to install build tools and related development libraries. These libraries are essential for compiling and installing certain Python packages.

   .. raw:: html
   
       <run></run>
   
   .. code-block:: shell

        sudo apt update
        sudo apt install -y build-essential python3-dev python3-pip libfreetype6-dev libjpeg-dev libopenjp2-7 libtiff-dev

#. Create a virtual environment. Here, ``~/my_env`` is the path for the virtual environment, and it can be customized.

   .. raw:: html
   
       <run></run>
   
   .. code-block:: shell
   
       python3 -m venv ~/my_env


#. After creating the virtual environment, activate it for use.

   .. note::
   
       Each time you restart the Raspberry Pi or open a new terminal, you will need to run the following command again to activate the virtual environment.

   .. raw:: html
   
       <run></run>
   
   .. code-block:: shell
   
       source ~/my_env/bin/activate

   Once the virtual environment is activated, you will see the environment name before the command prompt, indicating you are working within the virtual environment.

#. Inside the virtual environment, upgrade ``pip`` and ``setuptools`` to ensure the latest versions of packages are installed.

   .. raw:: html
   
      <run></run>
   
   .. code-block:: shell

      pip install --upgrade pip setuptools


#. Then, install ``luma.led_matrix``:

   .. raw:: html
   
      <run></run>
   
   .. code-block:: shell
   
     pip install luma.led_matrix

#. After installation, you can verify that ``luma.led_matrix`` is installed correctly by running the following command. If successful, it will display the version number of ``luma.led_matrix``.

   .. raw:: html
   
      <run></run>
   
   .. code-block:: shell

        python3 -c "import luma.led_matrix; print(luma.led_matrix.__version__)"

#. When you are done working and wish to exit the virtual environment, simply run:

   .. raw:: html
   
       <run></run>
   
   .. code-block:: shell
   
       deactivate


* Reference: `Luma.LED_Matrix <https://luma-led-matrix.readthedocs.io/en/latest/install.html>`_

Spidev and MFRC522
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``spidev`` library helps handle interactions with the SPI and is a key component to this tutorial as we need it for the Raspberry Pi to interact with the RFID RC522.

Run the following command to install ``spidev`` to your Raspberry Pi via ``pip``.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo pip3 install spidev


Continue to install the MFRC522 library.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo pip3 install mfrc522

The MFRC522 library contains two files: ``MFRC522.py`` and ``SimpleMFRC522.py``. 

Among them ``MFRC522.py`` is the realization of RFID RC522 interface, this library handles all the heavy work of communicating with RFID through Pi's SPI interface.

``SimpleMFRC522.py`` takes the ``MFRC522.py`` file and greatly simplifies it by allowing you to deal with only a few functions instead of a few functions.