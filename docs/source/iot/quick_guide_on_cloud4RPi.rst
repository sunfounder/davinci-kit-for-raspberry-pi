.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el apasionante mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Quick Guide on Cloud4RPi
================================

Instalar Cloud4RPi en tu Raspberry Pi 
------------------------------------------------

Se recomienda actualizar el sistema antes de realizar la instalación.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo apt update && sudo apt upgrade -y

Instala o actualiza los paquetes necesarios.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo apt install git python3 python3-pip -y

Instala Cloud4RPi con el siguiente comando:

.. raw:: html

   <run></run>

.. code-block:: 

    sudo pip3 install cloud4rpi

.. note::

    Este tutorial proporciona el método de instalación para Python 3.0 y versiones superiores. Para versiones anteriores de Python, es posible que debas modificar los comandos.

Iniciar sesión en Cloud4RPi en tu computadora
--------------------------------------------------

Abre el navegador web Chromium e ingresa a este enlace: https://cloud4rpi.io.

.. image:: img/cloud1.png
  :align: center

Antes de usarlo, necesitas registrarte e iniciar sesión en tu cuenta de Cloud4RPi.

.. image:: img/cloud2.png
  :align: center

Una vez que hayas iniciado sesión, deberías ver dos botones en la parte superior de Cloud4RPi, **Devices** para mostrar las conexiones del dispositivo y **Control Panels** para ver la información recibida o enviada desde el Raspberry Pi en la página web.

.. image:: img/cloud3.png
  :align: center

Conecta tu Raspberry Pi a Cloud4RPi
--------------------------------------

Después de iniciar sesión, haz clic en la opción **Devices**, y luego selecciona **New Device**.

.. image:: img/cloud4.png
  :align: center

Asigna un nombre al nuevo dispositivo y copia el **Device token** actual en el portapapeles.

.. image:: img/cloud5.png
  :align: center

Abre la terminal del Raspberry Pi y descarga los ejemplos de prueba proporcionados por Cloud4RPi.

.. raw:: html

   <run></run>

.. code-block:: 

    cd /home/pi
    git clone https://github.com/cloud4rpi/cloud4rpi-raspberrypi-python.git

Utiliza un editor de texto como Nano para modificar el contenido del archivo ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

    cd cloud4rpi-raspberrypi-python
    sudo nano control.py

Encuentra la siguiente línea de código.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Reemplaza ``__YOUR_DEVICE_TOKEN__`` con el **Device token** que copiaste de Cloud4RPi. Presiona ``Ctrl + X`` para completar la modificación.

.. code-block:: python

    DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

Ejecuta el archivo de ejemplo ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 control.py

Regresa a la página del servidor de Cloud4RPi. Si tu Raspberry Pi está conectada a Cloud4RPi, la información del dispositivo se mostrará en verde.

.. image:: img/cloud6.png
  :align: center

Uso de los Paneles de Control de Cloud4RPi
----------------------------------------------

El panel de control en el servidor de Cloud4RPi proporciona numerosos widgets útiles para aplicaciones de IoT. Estos widgets pueden usarse para controlar componentes o mostrar datos de sensores.

Tras ingresar a **Control Panels**, haz clic en el botón **New Control Panel**.

.. note::

    Siempre ejecuta el archivo ``control.py`` antes de utilizar el Panel de Control.

.. image:: img/cloud7.png
  :align: center

Ingresa un nombre para el Panel de Control y luego haz clic en el botón **Add Widget**.

.. image:: img/cloud8.png
  :align: center

Antes de hacer clic nuevamente en **Add Widget**, debes seleccionar el widget adecuado y la variable que se mostrará.

.. image:: img/cloud9.png
  :align: center

Por ejemplo, seleccionamos el widget **Text** y luego elegimos **Hot Water °C**, para que podamos verlo en el panel de control recién creado.

.. image:: img/cloud10.png
  :align: center

.. note::

    Presentaremos estos datos mostrados en detalle en el capítulo :ref:`Learn More about ``control.py```.
