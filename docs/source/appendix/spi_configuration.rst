.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder Raspberry Pi, Arduino y ESP32 en Facebook. Profundiza en Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte experto**: Resuelve problemas post-venta y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso exclusivo**: Obtén acceso anticipado a anuncios y adelantos de nuevos productos.
    - **Descuentos especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones y sorteos**: Participa en sorteos y promociones festivas.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo!

.. _spi_configuration:

SPI Configuration
-----------------------

**Paso 1**: Habilita el puerto SPI de tu Raspberry Pi (si ya lo has habilitado, 
omite esto; si no estás seguro, continúa).

.. raw:: html

   <run></run>

.. code-block:: 

    sudo raspi-config

**3 Opciones de interfaz**

.. image:: img/image282.png
   :align: center

**I3 SPI**

.. image:: img/i3spi.png
   :align: center

**<SÍ>, luego haz clic en <OK> y <Finalizar>.**

.. image:: img/image286.png
   :align: center 

**Paso 2:** Verifica que los módulos SPI estén cargados y activos.

.. raw:: html

   <run></run>

.. code-block:: 

    ls /dev/sp*

Aparecerán los siguientes códigos (el número puede variar).

.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

**Paso 3:** Instala el módulo SPI-Py para Python.

.. raw:: html

   <run></run>

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::
    Este paso es para usuarios de Python; si usas el lenguaje C, por favor
    omite este paso.

