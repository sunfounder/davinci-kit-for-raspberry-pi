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

Virtual Environment Creation
======================================
When using a Raspberry Pi or similar devices, it is recommended to install packages with `pip` in a virtual environment. This provides dependency isolation, enhances system security, keeps the system clean, and simplifies project migration and sharing, making dependency management easier. These benefits make virtual environments an extremely important and useful tool in Python development.

Below are the steps to create a virtual environment:

**1. Create a Virtual Environment**

First, ensure that Python is installed on your system. Python versions 3.3 and later come with the `venv` module for creating virtual environments, eliminating the need for a separate installation. If you're using Python 2 or an earlier version than Python 3.3, you will need to install `virtualenv`.

* For Python 3:

Python versions 3.3 and later can directly use the `venv` module:

.. raw:: html

    <run></run>

.. code-block:: shell

    python3 -m venv myenv

This will create a virtual environment called `myenv` in the current directory.

* For Python 2:

If you’re still using Python 2, you need to first install `virtualenv`:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install virtualenv

Then, create a virtual environment:

.. raw:: html

    <run></run>

.. code-block:: shell

    virtualenv myenv

This also creates a virtual environment called `myenv` in the current directory.

**2. Activate the Virtual Environment**

After creating the virtual environment, you need to activate it for use.

.. note::

    Every time you restart the Raspberry Pi or open a new terminal, you will need to run the following command again to activate the virtual environment.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Once the virtual environment is activated, you will see the environment name before the command prompt, indicating that you are working within the virtual environment.


**3. Install Dependencies**

With the virtual environment activated, you can use `pip` to install the necessary dependencies. For example:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install requests

This will install the `requests` library in the current virtual environment instead of the global environment. This step only needs to be done once.


**4. Exit the Virtual Environment**

When you're finished working and want to exit the virtual environment, simply run:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

This will return you to the system's global Python environment.

**5. Delete the Virtual Environment**

If you no longer need a particular virtual environment, you can simply delete the directory that contains the virtual environment:

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv
