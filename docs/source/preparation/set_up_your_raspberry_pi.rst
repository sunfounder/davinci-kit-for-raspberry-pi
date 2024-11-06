.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Configura tu Raspberry Pi
============================

Si Tienes una Pantalla
-------------------------

Si tienes una pantalla, será fácil operar directamente en tu Raspberry Pi.

**Componentes Requeridos**

* Cualquier modelo de Raspberry Pi   
* 1 * Adaptador de Corriente
* 1 * Tarjeta Micro SD
* 1 * Adaptador de Corriente para Pantalla
* 1 * Cable HDMI
* 1 * Pantalla
* 1 * Ratón
* 1 * Teclado

#. Inserta la tarjeta SD con Raspberry Pi OS en la ranura para micro SD en la parte inferior de tu Raspberry Pi.

#. Conecta el ratón y el teclado.

#. Conecta la pantalla al puerto HDMI de la Raspberry Pi y asegúrate de que la pantalla esté enchufada y encendida.

    .. note::

        Si usas una Raspberry Pi 4, debes conectar la pantalla al puerto HDMI0 (el más cercano al puerto de alimentación).

#. Usa el adaptador de corriente para encender la Raspberry Pi. Después de unos segundos, se mostrará el escritorio de Raspberry Pi OS.

    .. image:: img/login1.png
        :align: center

.. _no_screen:

Si No Tienes una Pantalla
-------------------------------

Si no tienes un monitor, puedes iniciar sesión en tu Raspberry Pi de forma remota.

Puedes utilizar el comando SSH para abrir la consola Bash de la Raspberry Pi. Bash es la shell predeterminada en Linux. La shell es en sí misma un comando (instrucción) cuando el usuario utiliza Unix/Linux. La mayoría de las tareas que necesitas realizar se pueden hacer a través de la shell.

Si prefieres no usar solo la ventana de comandos para acceder a tu Raspberry Pi, también puedes usar la función de escritorio remoto para gestionar archivos en tu Raspberry Pi de manera gráfica.

A continuación, se presentan los tutoriales detallados para cada sistema operativo.


.. toctree::

    remote_macosx
    remote_windows
    remote_linux

