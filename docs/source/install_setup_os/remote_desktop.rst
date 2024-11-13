.. note::

    ¡Hola, bienvenido a la comunidad de entusiastas de SunFounder Raspberry Pi, Arduino y ESP32 en Facebook! Sumérgete más profundamente en Raspberry Pi, Arduino y ESP32 con otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Vistas previas exclusivas**: Obtén acceso anticipado a anuncios de nuevos productos y avances.
    - **Descuentos especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones festivas y sorteos**: Participa en sorteos y promociones de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

.. _remote_desktop:

Acceso a Escritorio Remoto para Raspberry Pi
==================================================

Para aquellos que prefieren una interfaz gráfica de usuario (GUI) sobre el acceso por línea de comandos, el Raspberry Pi admite funcionalidad de escritorio remoto. Esta guía te enseñará a configurar y usar VNC (Virtual Network Computing) para el acceso remoto.

Recomendamos usar `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ para este propósito.

**Habilitar el Servicio VNC en Raspberry Pi**

El servicio VNC viene preinstalado en Raspberry Pi OS pero está deshabilitado por defecto. Sigue estos pasos para habilitarlo:

#. Introduce el siguiente comando en la terminal de Raspberry Pi:

    .. raw:: html

        <run></run>

    .. code-block::

        sudo raspi-config

#. Navega hasta **Interfacing Options** usando la tecla de flecha hacia abajo, luego presiona **Enter**.

    .. image:: img/config_interface.png
        :align: center

#. Selecciona **VNC** de las opciones.

    .. image:: img/vnc.png
        :align: center

#. Usa las teclas de flecha para elegir **<Yes>** -> **<OK>** -> **<Finish>** y finaliza la activación del servicio VNC.

    .. image:: img/vnc_yes.png
        :align: center

**Iniciar Sesión a través de VNC Viewer**

#. Descarga e instala `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ en tu computadora personal.

#. Una vez instalado, inicia VNC Viewer. Introduce el nombre de host o la dirección IP de tu Raspberry Pi y presiona Enter.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Cuando se te pida, introduce el nombre de usuario y la contraseña de tu Raspberry Pi, luego haz clic en **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Ahora tendrás acceso a la interfaz de escritorio de tu Raspberry Pi.

    .. image:: img/bullseye_desktop.png
        :align: center
