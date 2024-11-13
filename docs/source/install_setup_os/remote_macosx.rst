.. note::

    ¡Hola, bienvenido a la comunidad de entusiastas de SunFounder Raspberry Pi, Arduino y ESP32 en Facebook! Sumérgete más profundamente en Raspberry Pi, Arduino y ESP32 con otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Vistas previas exclusivas**: Obtén acceso anticipado a anuncios de nuevos productos y avances.
    - **Descuentos especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones festivas y sorteos**: Participa en sorteos y promociones de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Para Usuarios de Mac OS X
===============================

Para los usuarios de Mac OS X, SSH (Secure Shell) ofrece un método seguro y conveniente para acceder y controlar de forma remota un Raspberry Pi. Esto es particularmente útil para trabajar con el Raspberry Pi de forma remota o cuando no está conectado a un monitor. Usando la aplicación Terminal en una Mac, puedes establecer esta conexión segura. El proceso implica un comando SSH que incorpora el nombre de usuario y el nombre de host del Raspberry Pi. Durante la conexión inicial, aparecerá un mensaje de seguridad solicitando la confirmación de la autenticidad del Raspberry Pi.

#. Para conectarte al Raspberry Pi, escribe el siguiente comando SSH:

    .. code-block::

        ssh pi@raspberrypi.local

    .. image:: img/mac_vnc14.png

#. Aparecerá un mensaje de seguridad durante tu primer inicio de sesión. Responde con **yes** para continuar.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Introduce la contraseña del Raspberry Pi. Ten en cuenta que la contraseña no se mostrará en la pantalla mientras la escribes, lo cual es una característica de seguridad estándar.

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

