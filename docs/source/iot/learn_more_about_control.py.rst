.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el apasionante mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Learn More about ``control.py``
================================

Para entender mejor los proyectos que vienen a continuación, echemos un vistazo al código de ejemplo oficial proporcionado por Cloud4RPi.

.. note::

    Completa la sección anterior  :ref:`Quick Guide on Cloud4RPi` antes de revisar esta sección.

Abre el archivo ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

    cd cloud4rpi-raspberrypi-python
    sudo nano control.py

Cloud4RPi asignará un token de dispositivo para cada uno, y es necesario rellenar la variable DEVICE_TOKEN con el token de dispositivo correcto para conectar con el dispositivo correspondiente.

.. code-block:: python

    DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

``variables`` es un diccionario de 2 dimensiones, y el valor correspondiente a cada una de sus claves también es un diccionario.

Las claves del diccionario ``variables`` son ``'Room Temp'``, ``'LED On'``, ``'CPU Temp'``, ``'STATUS'``, ``'Location'``, todos estos datos se muestran en los widgets del Panel de Control.

El valor de cada clave en el diccionario ``variables`` también es un diccionario, y las claves de estos diccionarios son iguales; el valor de la clave ``'bind'`` es una función que puede devolver el contenido transferido, y el ``'type'`` indica el tipo de datos del contenido transferido (``'numeric'`` es numérico, ``'string'`` es una cadena de texto, ``'bool'`` es un tipo booleano y ``'location'`` es una lista que contiene dos diccionarios).

A través del análisis del diccionario ``variables``, sabemos que Cloud4RPi leerá las claves de ``variables`` y mostrará el valor correspondiente en el Panel de Control. Evidentemente, no podemos cambiar las claves del diccionario ``variables``, pero sí podemos modificar el valor de cada clave (el valor del diccionario ``'bind'``) para que los widgets muestren el contenido deseado.

Por ejemplo, si queremos enviar valores de humedad a Cloud4RPi, no podemos agregar una nueva clave al diccionario ``variables``, pero podemos usar una clave existente, como la clave ``'Room Temp'``, y escribir en la clave ``'bind'`` una función que devuelva el valor de la humedad.

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

``vdiagnostics`` almacena información sobre la Raspberry Pi y se utiliza para verificar y prevenir conexiones incorrectas.

.. code-block:: python

    vdiagnostics = {
        'CPU Temp': rpi.cpu_temp,
        'IP Address': rpi.ip_address,
        'Host': rpi.host_name,
        'Operating System': rpi.os_name,
        'Client Version:': cloud4rpi.__version__,
    }
