.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el apasionante mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Interruptor Remoto
====================

En este proyecto, aprenderemos a usar el Interruptor de Cloud4RPi para controlar el relé y, por lo tanto, la carga del relé, que es un LED. También puedes cambiar la carga del relé por electrodomésticos, siempre teniendo en cuenta la seguridad.

Procedimiento Experimental
-----------------------------

Construye el circuito.

.. image:: img/relay1.png
    :align: center

Abre el código.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano remote_switch.py

Encuentra la línea a continuación y completa con el token del dispositivo correcto.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Ejecuta el código.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 remote_switch.py

Accede a Cloud4RPi, agrega un nuevo Panel de Control llamado proyecto2 y haz clic en **Add Widget** para añadir un widget **Switch**.

.. image:: img/relay2.png
    :align: center

Una vez añadido, puedes utilizar el widget Switch para controlar el relé.

.. image:: img/relay3.png
    :align: center

Explicación del Código
-------------------------

.. code-block:: python

    RELAY_PIN = 18

Relé conectado a GPIO18 de la placa de expansión T.

.. code-block:: python

    GPIO.setmode(GPIO.BCM)
    GPIO.setup(RELAY_PIN, GPIO.OUT)

Configura en la nomenclatura BCM y establece ``RELAY_PIN`` como salida.

.. code-block:: python

    def relay_control(value=None):
        GPIO.output(RELAY_PIN, value)
        return GPIO.input(RELAY_PIN)

Esta función controla el relé de acuerdo con el ``value`` y devuelve el nivel actual del relé.

.. note::

    Como el relé funciona a nivel alto, el relé se cierra cuando el estado del interruptor es True y se abre cuando el estado es False.

.. code-block:: python

    variables = {
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': relay_control
        },
    }

Al configurar el valor de la clave ``'value'``, podemos establecer el valor inicial del widget Switch, luego leer siempre el valor de la clave ``'value'`` y enviar el nivel actual de ``RELAY_PIN`` (el valor que devuelve la función ``relay_control()``) a Cloud4RPi.
