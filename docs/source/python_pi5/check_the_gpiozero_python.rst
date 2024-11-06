.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Verificar ``GPIO Zero``
=================================

Si eres un usuario de Python en Raspberry Pi 5, puedes programar los GPIO 
con la API que proporciona ``GPIO Zero``.

``GPIO Zero`` es un módulo para controlar los pines GPIO de Raspberry Pi. 
Este paquete ofrece una gama de clases y funciones fáciles de usar para 
gestionar los GPIO en una Raspberry Pi. Para ejemplos y documentación, 
visita: https://gpiozero.readthedocs.io/en/latest/.

Para verificar si GPIO Zero está instalado, abre Python e ingresa:

.. raw:: html

   <run></run>

.. code-block::

    python

.. image:: ../python_pi5/img/zero_01.png
    :width: 100%

En la CLI de Python, ingresa ``import gpiozero``. Si no aparece ningún mensaje de error, significa que GPIO Zero está instalado.

.. raw:: html

   <run></run>

.. code-block::

    import gpiozero

.. image:: ../python_pi5/img/zero_02.png
    :width: 100%

Si deseas salir de la CLI de Python, ingresa:

.. raw:: html

   <run></run>

.. code-block::

    exit()

.. image:: ../python_pi5/img/zero_03.png
    :width: 100%


