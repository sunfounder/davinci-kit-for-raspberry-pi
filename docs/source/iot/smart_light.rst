.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el apasionante mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Luz Inteligente
===================

En este proyecto, aprenderemos a controlar la intensidad del brillo de un LED usando el widget Deslizador de Cloud4RPi.

Procedimiento Experimental
-----------------------------

Construye el circuito.

.. image:: img/led1.png
    :align: center

Abre el código.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano smart_light.py

Encuentra la línea a continuación y completa con el token del dispositivo correcto.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Ejecuta el código.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 smart_light.py

Accede a Cloud4RPi, agrega un nuevo panel de control llamado project3 y haz clic en **Add Widget** para añadir un widget **Slider**.

.. image:: img/led2.png
    :align: center

Una vez añadido, puedes utilizar el widget Deslizador para controlar la intensidad del brillo del LED.

.. image:: img/led3.png
    :align: center

Explicación del Código
-------------------------

.. code-block:: python

    led_val = GPIO.PWM(LED_PIN, 2000)
    led_val.start(0)

Llama a la función ``GPIO.PWM()`` para definir ``LED_PIN`` como pin PWM y configura la frecuencia del pin PWM a 2000Hz, luego usa la función ``start()`` para establecer el ciclo de trabajo inicial en 0.

.. code-block:: python

    led_val.ChangeDutyCycle(value)

El valor enviado por el widget Deslizador al Raspberry Pi se utiliza como ciclo de trabajo PWM para cambiar la intensidad del brillo del LED.

.. code-block:: python

    variables = {
        'CPU Temp': {
            'type': 'numeric',
            'value': 0,
            'bind': led_control
        },
    }

Al establecer el valor de la clave ``'value'``, podemos configurar el valor inicial del widget Deslizador y luego leer continuamente el valor de la clave ``'value'`` para enviar el nivel actual de ``LED_PIN`` (el valor devuelto por la función ``led_control``) a Cloud4RPi.

