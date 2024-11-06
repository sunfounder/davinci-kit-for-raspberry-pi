.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Usuarios de Windows
=======================


Si eres usuario de Windows, puedes utilizar Windows PowerShell para iniciar sesión en Raspberry Pi de forma remota.

#. Presiona las teclas de acceso rápido ``windows`` + ``R`` en tu teclado para abrir el programa **Ejecutar**. Luego escribe **powershell** en el cuadro de entrada.

    .. image:: img/sp221221_135900.png
        :align: center

#. Verifica si tu Raspberry Pi está en la misma red escribiendo ``ping <hostname>.local``.

    .. code-block:: shell

        ping raspberrypi.local

    .. image:: img/sp221221_145225.png
        :width: 550
        :align: center

    * Si el terminal muestra ``Ping request could not find host <hostname>.local``, es posible que Raspberry Pi no se haya conectado a la red. Por favor verifica la conexión.
    * Si realmente no puedes hacer ping a ``<hostname>.local``, intenta obtener la :ref:`get_ip` y hacer ``ping <IP address>`` en su lugar (ej., ``ping 192.168.6.116``).
    * Si aparecen varios mensajes como "Reply from <IP address>: bytes=32 time<1ms TTL=64", significa que tu computadora puede acceder a Raspberry Pi.

#. Escribe ``ssh <username>@<hostname>.local`` (o ``ssh <username>@<IP address>``).

    .. code-block:: shell

        ssh pi@raspberrypi.local

#. Puede aparecer el siguiente mensaje:

    .. code-block::

        The authenticity of host 'raspberrypi.local (192.168.6.116)' can't be established.
        ECDSA key fingerprint is SHA256:7ggckKZ2EEgS76a557cddfxFNDOBBuzcJsgaqA/igz4.
        Are you sure you want to continue connecting (yes/no/[fingerprint])? 

    Escribe \"yes\".

#. Ingresa la contraseña que configuraste previamente. (En mi caso, es ``raspberry``.)

    .. note::
        Cuando ingreses la contraseña, los caracteres no se mostrarán en la ventana, lo cual es normal. Solo necesitas ingresar la contraseña correcta.

#. Ahora hemos conectado la Raspberry Pi y estamos listos para pasar al siguiente paso.

    .. image:: img/sp221221_140628.png
        :width: 550
        :align: center

Escritorio Remoto
---------------------

Si no estás satisfecho usando solo la ventana de comandos para acceder a tu Raspberry Pi, también puedes usar la función de escritorio remoto para gestionar archivos en tu Raspberry Pi de forma gráfica.

Aquí utilizaremos `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

**Habilitar el servicio VNC**

El servicio VNC ya está instalado en el sistema. Por defecto, VNC está desactivado. Debes habilitarlo en la configuración.

#. Ingresa el siguiente comando:

    .. raw:: html

        <run></run>

    .. code-block:: shell 

        sudo raspi-config

#. Elige **3** **Interfacing Options** presionando la tecla de flecha hacia abajo en tu teclado y luego presiona la tecla **Enter**.

    .. image:: img/image282.png
        :align: center

#. Luego selecciona **P3 VNC**. 

    .. image:: img/image288.png
        :align: center

#. Usa las teclas de flecha en el teclado para seleccionar **<Yes>** -> **<OK>** -> **<Finish>** para completar la configuración.

    .. image:: img/mac_vnc8.png
        :align: center

**Iniciar sesión en VNC**

#. Necesitas descargar e instalar `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ en tu computadora.

#. Ábrelo una vez que la instalación esté completa. Luego, ingresa el nombre del host o la dirección IP y presiona Enter.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Después de ingresar el nombre y la contraseña de Raspberry Pi, haz clic en **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Ahora puedes ver el escritorio de la Raspberry Pi.

    .. image:: img/login1.png
        :align: center
