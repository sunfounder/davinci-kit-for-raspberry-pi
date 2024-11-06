.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Únete a otros apasionados y profundiza en el mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas posventa y supera desafíos técnicos con el apoyo de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso Exclusivo**: Obtén acceso anticipado a anuncios de nuevos productos y adelantos especiales.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones durante las festividades.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy.

Tarjeta de Extensión GPIO
=========================

Antes de comenzar a aprender los comandos, es importante familiarizarse con 
los pines de la Raspberry Pi, lo cual será fundamental para el estudio posterior.

Podemos conectar los pines de la Raspberry Pi a una protoboard mediante la 
Tarjeta de Extensión GPIO, evitando así daños en el GPIO debido a la inserción 
y extracción frecuentes de conexiones. Esta es nuestra Tarjeta de Extensión 
GPIO de 40 pines y el cable GPIO para los modelos Raspberry Pi B+, 2 B, 3, y 4 B.

.. image:: img/image32.png
    :align: center

**Numeración de Pines**

Los pines de la Raspberry Pi tienen tres formas de nomenclatura: wiringPi, BCM y Board.

Entre estos métodos de nomenclatura, la tarjeta de extensión GPIO de 40 pines utiliza la nomenclatura BCM. Sin embargo, para algunos pines específicos, como los puertos I2C y SPI, se usa el nombre que tienen de fábrica.

La siguiente tabla muestra los métodos de nomenclatura de WiringPi, Board y el nombre propio de cada pin en la tarjeta de extensión GPIO. Por ejemplo, para el GPIO17, el número de pin en el método Board es 11, en el método wiringPi es 0, y su nombre propio es GPIO0.

.. note::

    1) En el lenguaje C, se utiliza la nomenclatura WiringPi.

    2) En el lenguaje Python, se aplican los métodos de nomenclatura Board y BCM, y la función GPIO.setmode() se usa para definirlos.

.. image:: img/gpio_board.png