.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Únete a otros apasionados y profundiza en el mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas posventa y supera desafíos técnicos con el apoyo de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso Exclusivo**: Obtén acceso anticipado a anuncios de nuevos productos y adelantos especiales.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones durante las festividades.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy!


Otros Lenguajes (para Pi 5)
===============================

El lanzamiento de la Raspberry Pi 5 nos ha traído un modelo más potente, pero también ha introducido algunos cambios, especialmente en el GPIO.

Aunque conserva su interfaz estándar de 40 pines, la funcionalidad ha cambiado debido a su conexión con el nuevo chip RP1 integrado como "southbridge". Este chip RP1 personalizado ahora maneja los periféricos en la Pi 5, lo que ha generado diversos problemas de compatibilidad.

Lenguaje C
--------------

La implementación en lenguaje C depende de la biblioteca wiringPi. Sin embargo, la biblioteca de la comunidad wiringPi ahora está archivada y ya no recibe actualizaciones, lo que la hace inadecuada para proyectos en Raspberry Pi 5. Para más información, consulta: https://github.com/WiringPi/WiringPi

.. image:: img/pi5_c_language.png

Processing
-------------

Al usar Processing 4 en la Raspberry Pi 5, la programación GPIO presenta desafíos. Surgen errores como "Invalid argument" y "GPIO pin 17 seems to be unavailable on your platform" durante la ejecución de código relacionado con GPIO (como se muestra en la imagen adjunta). Para más detalles, visita: https://github.com/benfry/processing4/issues/807

.. image:: img/pi5_processing.png

Node.js
----------

Node.js utiliza la biblioteca pigpio, la cual, hasta el momento, no es compatible con Raspberry Pi 5. Para más información, consulta: https://github.com/joan2937/pigpio/issues/589

.. image:: img/pi5_nodejs.png
    :width: 700

Scratch
-----------

En un sistema de 64 bits, la importación de la biblioteca GPIO de Raspberry Pi presenta problemas, lo que resulta en falta de respuesta. Para más información, visita: https://github.com/raspberrypi/bookworm-feedback/issues/91

