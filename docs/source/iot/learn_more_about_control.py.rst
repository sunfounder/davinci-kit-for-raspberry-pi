Learn More about ``control.py``
================================

In order to better understand the projects that follow, let's take a look at the official sample code provided by Cloud4RPi.

.. note::

    Please complete the previous section :ref:`Quick Guide about Cloud4RPi` before viewing this section.

Open the ``control.py`` file.

.. code-block:: shell

    cd cloud4rpi-raspberrypi-python
    sudo nano control.py

Cloud4RPi will set a device token for each one, and you need to fill in the variable DEVICE_TOKEN with the correct device token in order to connect to the corresponding device.

.. code-block:: python

    DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

``variables`` is a 2-dimensional dictionary, and the value corresponding to each of its keys is also a dictionary.

The keys of the ``variables`` dictionary are ``'Room Temp'``, ``'LED On'``, ``'CPU Temp'``, ``'STATUS'``, ``'Location'``, which are all data displayed on the Control Panel's widgets.
    
The value of each key in the ``variables`` dictionary is also a dictionary, and the keys of these dictionaries are the same, where the value of the ``'bind'`` key is a function that can return the transferred content, and the ``'type'`` is the data type of the transferred content (``'numeric'`` is a numeric type, ``'string'`` is a string type, ``'bool'`` is a boolean type, and ``'location'`` is a list containing two dictionaries).

Through the analysis of the ``variables`` dictionary, we can know that Cloud4RPi will read the keys of the ``variables`` dictionary and display the value corresponding to the key in the Control Panel. Obviously we cannot change the keys of the ``variables`` dictionary, but we can change the value in the key (the value of the ``'bind'`` dictionary) to let the widgets display the content we want.

For example, if we want to send humidity values to Cloud4RPi, we cannot add a new key to the ``variables`` dictionary, but we can borrow a key, such as the ``'Room Temp'`` key, and then write the function that returns the humidity value in the corresponding ``'bind'`` key.

.. code-block:: python

    variables = {
        'Room Temp': {
            'type': 'numeric' if ds_sensors else 'string',
            'bind': ds_sensors[0] if ds_sensors else sensor_not_connected
        },
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': led_control
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': rpi.cpu_temp
        },
        'STATUS': {
            'type': 'string',
            'bind': listen_for_events
        },
        'Location': {
            'type': 'location',
            'bind': get_location
        }

The ``vdiagnostics`` stores information about the Raspberry Pi and is used to verify and prevent misconnections.

.. code-block:: python

    vdiagnostics = {
        'CPU Temp': rpi.cpu_temp,
        'IP Address': rpi.ip_address,
        'Host': rpi.host_name,
        'Operating System': rpi.os_name,
        'Client Version:': cloud4rpi.__version__,
    }
