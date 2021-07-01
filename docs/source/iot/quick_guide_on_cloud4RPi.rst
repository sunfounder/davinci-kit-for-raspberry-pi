Quick Guide about Cloud4RPi
================================

Install Cloud4RPi in Your Raspberry Pi 
------------------------------------------------

It is advisable to update your system before installing.

.. code-block:: shell

    sudo apt update && sudo apt upgrade -y

Install/update the required packages.

.. code-block:: shell

    sudo apt install git python3 python3-pip -y

Install Cloud4RPi with the following command:

.. code-block:: shell

    sudo pip3 install cloud4rpi

.. note::

  This tutorial provides the installation method for Python 3.0 and above. For lower versions of Python, the commands may need to be modified.

Login to Cloud4RPi on Your Computer
-------------------------------------

Open Chromium Web Browser and enter this link: https://cloud4rpi.io.

.. image:: img/cloud1.png
  :align: center

Before using it, you need to register and log in to your Cloud4RPi account.

.. image:: img/cloud2.png
  :align: center

Once logged in, you should see two buttons at the top of Cloud4RPi's webpage, **Devices** to display the device connections and **Control Panels** to display the information received or sent from the Raspberry Pi on the webpage.

.. image:: img/cloud3.png
  :align: center

Connect Your Raspberry Pi to Cloud4RPi
----------------------------------------

After logging in, click the **Devices** option above, and then click **New Device**.


.. image:: img/cloud4.png
  :align: center

Give the new device a name, and copy the current **Device token** to the clipboard.

.. image:: img/cloud5.png
  :align: center

Open the terminal of the Raspberry Pi and download the test examples provided by Cloud4RPi to your Raspberry Pi.

.. code-block:: shell

  cd /home/pi
  git clone https://github.com/cloud4rpi/cloud4rpi-raspberrypi-python.git

Use a text editor such as Nano to modify the content of the control.py file.

.. code-block:: shell

  cd cloud4rpi-raspberrypi-python
  sudo nano control.py

Find the following line of code.

.. code-block:: python

  DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Replace __YOUR_DEVICE_TOKEN__ with the Device token copied from the Cloud4RPi server. Press Ctrl + X to complete the modification.

.. code-block:: python

  DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

Run the sample file ``control.py``.

.. code-block:: shell

  sudo python3 control.py

Browse back to the Cloud4RPi server page. If your Raspberry Pi is connected to Cloud4RPi, the device information will turn green.

.. image:: img/cloud6.png
  :align: center

Using the Cloud4RPi Control Panels
-----------------------------------

The control panel on the Cloud4RPi server provides many useful widgets for IoT applications. These widgets can be used to control the conponents or display sensor data.

After entering **Control Panels**, click the **New Control Panel** button.

.. note::

  Always run the control.py file before using the Control Panel.

.. image:: img/cloud7.png
  :align: center

Enter a Control Panel name, and then click on the **Add Widget** button.

.. image:: img/cloud8.png
  :align: center

Before clicking the **Add Widget** button again, you need to select the appropriate widget and the variable to be displayed.

.. image:: img/cloud9.png
  :align: center

For example, we select the **Text** widget and then select **Hot Water °C**, so that we can see it on the newly created control panel.

.. image:: img/cloud10.png
  :align: center

.. note::
  
  We will introduce these displayed data in detail in the chapter :ref:`Learn More about ``control.py```.