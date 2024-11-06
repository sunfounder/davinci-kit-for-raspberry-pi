.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Usuarios de Mac OS X
==========================

Para los usuarios de Mac, acceder al escritorio de Raspberry Pi a través 
de VNC es más conveniente que usar solo la línea de comandos. Puedes acceder 
a través de Finder ingresando la contraseña de la cuenta después de habilitar 
VNC en el lado de Raspberry Pi.

Ten en cuenta que este método no cifra la comunicación entre el Mac y 
Raspberry Pi. La comunicación tendrá lugar dentro de tu red doméstica 
o de oficina, por lo que, aunque esté sin protección, no debería ser un 
problema. Sin embargo, si te preocupa, puedes instalar una aplicación de 
VNC como `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

Alternativamente, sería útil si pudieras usar un monitor temporal (TV), mouse 
y teclado para abrir el escritorio de Raspberry Pi directamente y configurar 
VNC. Si no, no te preocupes, también puedes usar el comando SSH para abrir la 
shell Bash de Raspberry Pi y luego configurar VNC.

* :ref:`have_temp_monitor`
* :ref:`no_temp_monitor`


.. _have_temp_monitor:

¿Tienes un Monitor Temporal (o TV)?
------------------------------------------

#. Conecta un monitor (o TV), mouse y teclado a la Raspberry Pi y enciéndela. Selecciona el menú según los números en la imagen.

    .. image:: img/mac_vnc1.png
        :align: center

#. Aparecerá la siguiente pantalla. Configura **VNC** en **Enabled** en la pestaña **Interfaces** y haz clic en **OK**.

    .. image:: img/mac_vnc2.png
        :align: center

#. Aparece un icono de VNC en la parte superior derecha de la pantalla, y el servidor VNC se inicia.

    .. image:: img/login1.png
        :align: center

#. Abre la ventana del servidor VNC haciendo clic en el icono **VNC**, luego haz clic en el botón **Menu** en la esquina superior derecha y selecciona **Options**.

    .. image:: img/mac_vnc4.png
        :align: center

#. Se presentará la siguiente pantalla donde puedes cambiar las opciones.

    .. image:: img/mac_vnc5.png
        :align: center

    Configura **Encryption** en **Prefer off** y **Authentication** en **VNC password**.
    
#. Al hacer clic en el botón **OK**, se mostrará la pantalla de entrada de contraseña. Puedes usar la misma contraseña de Raspberry Pi u otra diferente, así que ingrésala y haz clic en **OK**.

    .. image:: img/mac_vnc16.png
        :align: center

    Ahora estás listo para conectarte desde tu Mac. Puedes desconectar el monitor.

**Desde aquí, será la operación en el lado del Mac.**

#. Selecciona **Conectar a Servidor** en el menú de Finder, el cual puedes abrir haciendo clic derecho.

    .. image:: img/mac_vnc10.png
        :align: center

#. Escribe ``vnc://<username>@<hostname>.local`` (o ``vnc://<username>@<IP address>``). Después de ingresar, haz clic en **Conectar**.

    .. image:: img/mac_vnc11.png
        :align: center


#. Se te pedirá una contraseña, así que por favor ingrésala.

    .. image:: img/mac_vnc12.png
        :align: center

#. Se mostrará el escritorio de Raspberry Pi y podrás operarlo desde el Mac.

    .. image:: img/mac_vnc13.png
        :align: center

.. _no_temp_monitor:

¿No tienes un Monitor Temporal (o TV)?
--------------------------------------------

* Puedes aplicar el comando SSH para abrir la shell Bash de Raspberry Pi.
* Bash es la shell predeterminada estándar para Linux.
* La shell misma es un comando (instrucción) cuando el usuario usa Unix/Linux.
* La mayoría de las tareas que necesitas realizar se pueden hacer a través de la shell.
* Después de configurar Raspberry Pi, puedes acceder al escritorio de Raspberry Pi usando **Finder** desde el Mac.

#. Escribe ``ssh <username>@<hostname>.local`` para conectarte a la Raspberry Pi.

    .. code-block:: shell

        ssh pi@raspberrypi.local

    .. image:: img/mac_vnc14.png

#. Solo cuando inicies sesión por primera vez, se mostrará el siguiente mensaje. Ingresa **yes**.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Ingresa la contraseña para Raspberry Pi. La contraseña que ingreses no se mostrará, así que ten cuidado de no cometer errores.

    .. code-block::

        pi@raspberrypi.local's password: 
        Linux raspberrypi 5.15.61-v8+ #1579 SMP PREEMPT Fri Aug 26 11:16:44 BST 2022 aarch64

        The programs included with the Debian GNU/Linux system are free software;
        the exact distribution terms for each program are described in the
        individual files in /usr/share/doc/*/copyright.

        Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
        permitted by applicable law.
        Last login: Thu Sep 22 12:18:22 2022
        pi@raspberrypi:~ $

#. Configura tu Raspberry Pi para que puedas iniciar sesión a través de VNC desde tu Mac una vez que hayas iniciado sesión. El primer paso es actualizar el sistema operativo con los siguientes comandos.

    .. code-block:: shell

        sudo apt update
        sudo apt upgrade


    Cuando se te pregunte, ``Do you want to continue? [Y/n]``, ingresa ``Y``.

    La actualización puede tardar un poco. (Depende de la cantidad de actualizaciones en ese momento).

#. Ingresa el siguiente comando para habilitar el **Servidor VNC**.

    .. code-block:: shell

        sudo raspi-config

#. Aparecerá la siguiente pantalla. Selecciona **3 Interface Options** con las teclas de flecha en el teclado y presiona **Enter**.

    .. image:: img/image282.png
        :align: center

#. Luego selecciona **P3 VNC**.

    .. image:: img/image288.png
        :align: center

#. Usa las teclas de flecha en el teclado para seleccionar **<Yes>** -> **<OK>** -> **<Finish>** y completa la configuración.

    .. image:: img/mac_vnc8.png
        :align: center


#. Ahora que el servidor VNC ha comenzado, cambiemos los ajustes para conectar desde un Mac.

    Para especificar parámetros para todos los programas de todas las cuentas de usuario en la computadora, crea ``/etc/vnc/config.d/common.custom``.

    .. code-block:: shell

        sudo nano /etc/vnc/config.d/common.custom

    Después de ingresar ``Authentication=VncAuthenter``, presiona ``Ctrl+X`` -> ``Y`` -> ``Enter`` para guardar y salir.

    .. image:: img/mac_vnc15.png
        :align: center

#. Además, establece una contraseña para iniciar sesión a través de VNC desde un Mac. Puedes usar la misma contraseña de Raspberry Pi u otra diferente.

    .. code-block:: shell

        sudo vncpasswd -service

#. Una vez que la configuración esté completa, reinicia la Raspberry Pi para aplicar los cambios.

    .. code-block:: shell

        sudo sudo reboot

#. Ahora, selecciona **Conectar a Servidor** en el menú de **Finder**, el cual puedes abrir haciendo clic derecho.

    .. image:: img/mac_vnc10.png
        :align: center

#. Escribe ``vnc://<username>@<hostname>.local`` (o ``vnc://<username>@<IP address>``). Después de ingresar, haz clic en **Conectar**.

    .. image:: img/mac_vnc11.png
        :align: center

#. Se te pedirá una contraseña, así que por favor ingrésala.

    .. image:: img/mac_vnc12.png
        :align: center

#. Se mostrará el escritorio de Raspberry Pi y podrás operarlo desde el Mac.

    .. image:: img/mac_vnc13.png
        :align: center
