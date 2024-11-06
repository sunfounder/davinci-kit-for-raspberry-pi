.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Únete a otros apasionados y profundiza en el mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas posventa y supera desafíos técnicos con el apoyo de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso Exclusivo**: Obtén acceso anticipado a anuncios de nuevos productos y adelantos especiales.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones durante las festividades.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy.

Para Pi 5
============================

El lanzamiento de Raspberry Pi 5 nos ha traído un modelo más potente, pero también ha introducido algunos cambios, 
especialmente en cuanto al GPIO. Aunque conserva su interfaz estándar de 40 pines, su funcionalidad ha cambiado debido 
a su conexión con el nuevo chip RP1 de "southbridge" integrado. Este chip personalizado RP1 ahora gestiona los periféricos 
en el Pi 5, lo que ha generado diversas preocupaciones de compatibilidad. Actualmente, solo la biblioteca GPIO Zero, 
mantenida oficialmente por la organización Raspberry Pi, es totalmente compatible. Hemos desarrollado una serie de cursos 
centrados específicamente en esta biblioteca.

.. toctree::
    :maxdepth: 1
    
    python_pi5/play_with_python_pi5
    c_pi5/play_with_c
    scratch_pi5/play_with_scratch


Para problemas de compatibilidad con otros lenguajes de programación, consulta la información detallada a continuación:


**Processing**

Al usar Processing 4 en Raspberry Pi 5, la programación de GPIO enfrenta dificultades. Durante la ejecución de código relacionado con GPIO, surgen errores como "Invalid argument" y "GPIO pin 17 seems to be unavailable on your platform" (como se muestra en la imagen adjunta). Para más detalles, visita: https://github.com/benfry/processing4/issues/807

.. image:: img/pi5_processing.png

**Node.js**

Node.js utiliza la biblioteca pigpio, que, hasta ahora, no es compatible con Raspberry Pi 5. Para obtener más información, visita: https://github.com/joan2937/pigpio/issues/589

.. image:: img/pi5_nodejs.png
    :width: 700


En un sistema de 64 bits, la importación de la biblioteca GPIO de Raspberry Pi presenta problemas, lo que provoca que el sistema no responda. Para más información, visita: https://github.com/raspberrypi/bookworm-feedback/issues/91.
