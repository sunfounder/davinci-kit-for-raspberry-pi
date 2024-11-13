.. _i2c_config:

Configuración de I2C
-----------------------

**Paso 1**: Habilita el puerto I2C de tu Raspberry Pi (Si ya lo has
habilitado, omite este paso; si no sabes si lo has hecho o no,
por favor continúa).

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo raspi-config

**3 Opciones de Interfaz**

.. image:: img/image282.png
    :align: center

**I4 I2C**

.. image:: img/I4i2c.jpeg
    :align: center

**<Sí>, luego <Ok> -> <Finalizar>**

.. image:: img/image284.png
    :align: center

**Paso 2:** Verifica si los módulos i2c están cargados y activos.

.. raw:: html

   <run></run>
 
.. code-block:: 

    lsmod | grep i2c

A continuación, aparecerán los siguientes códigos (el número puede ser diferente), si no aparece, reinicia la Raspberry Pi con ``sudo reboot``.

.. code-block:: 

    i2c_dev                     6276    0
    i2c_bcm2708                 4121    0

**Paso 3:** Instala i2c-tools.

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install i2c-tools

**Paso 4:** Verifica la dirección del dispositivo I2C.

.. raw:: html

    <run></run>
  
.. code-block:: 

    i2cdetect -y 1      # Para Raspberry Pi 2 y versiones superiores

.. raw:: html

   <run></run>
 
.. code-block:: 

    i2cdetect -y 0      # Para Raspberry Pi 1


.. code-block:: 

    pi@raspberrypi ~ $ i2cdetect -y 1
        0  1  2  3   4  5  6  7  8  9   a  b  c  d  e  f
    00:           -- -- -- -- -- -- -- -- -- -- -- -- --
    10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    40: -- -- -- -- -- -- -- -- 48 -- -- -- -- -- -- --
    50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    70: -- -- -- -- -- -- -- --

Si hay un dispositivo I2C conectado, se mostrará la dirección del dispositivo.

**Paso 5:**

**Para usuarios de lenguaje C:** Instala libi2c-dev.

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install libi2c-dev 

**Para usuarios de Python:**

1. Activar el entorno virtual.

.. note::
    
    * Antes de la activación, necesitas asegurarte de que has creado un entorno virtual, por favor consulta: :ref:`create_virtual`.

    * Cada vez que reinicies la Raspberry Pi, o abras un nuevo terminal, deberás ejecutar el siguiente comando nuevamente para activar el entorno virtual.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Una vez activado el entorno virtual, verás el nombre del entorno antes del símbolo del sistema, lo que indica que estás trabajando dentro del entorno virtual.


2. Instala smbus para I2C.

.. raw:: html

    <run></run>
 
.. code-block:: 

    sudo pip3 install smbus2


3. Salir del entorno virtual.

Cuando hayas terminado tu trabajo y desees salir del entorno virtual, simplemente ejecuta:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Esto te devolverá al entorno global de Python del sistema.
