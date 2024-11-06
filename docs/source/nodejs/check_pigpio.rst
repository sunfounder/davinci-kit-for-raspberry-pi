.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Obtén acceso anticipado a nuevos anuncios de productos y adelantos exclusivos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Comprobación de pigpio
============================

pigpio es un módulo utilizado para controlar los canales GPIO en Raspberry Pi. Este paquete proporciona algunos métodos para controlar el GPIO en Raspberry Pi. Para ejemplos y documentación, visita: https://www.npmjs.com/package/pigpio.

Introduce el siguiente comando para instalar la biblioteca pigpio.

.. raw:: html

    <run></run>

.. code-block::

    npm install pigpio

Para verificar si la biblioteca se ha instalado correctamente, cambia de directorio e ingresa a nodejs:

.. raw:: html

    <run></run>

.. code-block::

    cd ~/davinci-kit-for-raspberry-pi/nodejs
    nodejs

.. image:: img/pigpio1.png

Luego ingresa require('pigpio'):

.. raw:: html

    <run></run>

.. code-block::

    require('pigpio')

.. image:: img/pigpio2.png   

Si aparece la pantalla anterior, la instalación de la biblioteca se ha realizado con éxito.

Para salir de la CLI de node, presiona Ctrl+C dos veces.

.. image:: img/pigpio3.png