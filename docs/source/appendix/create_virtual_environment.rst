.. note::

    Hello, welcome to the SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebook! Dive deeper into Raspberry Pi, Arduino, and ESP32 with fellow enthusiasts.

    **Why Join?**

    - **Expert Support**: Solve post-sale issues and technical challenges with help from our community and team.
    - **Learn & Share**: Exchange tips and tutorials to enhance your skills.
    - **Exclusive Previews**: Get early access to new product announcements and sneak peeks.
    - **Special Discounts**: Enjoy exclusive discounts on our newest products.
    - **Festive Promotions and Giveaways**: Take part in giveaways and holiday promotions.

    👉 Ready to explore and create with us? Click [|link_sf_facebook|] and join today!

.. _create_virtual:

Creating a Virtual Environment
======================================
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


**3. Installing Dependencies**

With the virtual environment activated, you can use pip to install the required dependencies. For example:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install requests

This will install the requests library into the current virtual environment, rather than the global environment. This step only needs to be done once.


**4. Exiting the Virtual Environment**

When you have completed your work and wish to exit the virtual environment, simply run:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

This will return you to the system's global Python environment.

**5. Deleting the Virtual Environment**

If you no longer need a particular virtual environment, you can simply delete the directory containing the virtual environment:

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv