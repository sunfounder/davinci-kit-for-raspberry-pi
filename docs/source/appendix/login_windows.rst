.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete más en el mundo de Raspberry Pi, Arduino y ESP32 con otros entusiastas.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Preestrenos Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones y Sorteos Festivos**: Participa en sorteos y promociones de temporada.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo!

.. _login_windows:

PuTTY
=========================

Si eres usuario de Windows, puedes utilizar algunas aplicaciones de SSH. Aquí, te recomendamos `PuTTY <https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html>`_.

**Paso 1**

Descarga PuTTY.

**Paso 2**

Abre PuTTY y haz clic en **Session** en la estructura de árbol a la izquierda. 
Introduce la dirección IP de la RPi en el cuadro de texto bajo 
**Host Name (or IP address)** y **22** bajo **Port** (por defecto es 22).

.. image:: img/image25.png
    :align: center

**Paso 3**

Haz clic en **Open**. Ten en cuenta que la primera vez que inicies 
sesión en la Raspberry Pi con la dirección IP, aparecerá un recordatorio 
de seguridad. Simplemente haz clic en **Yes**.

**Paso 4**

Cuando la ventana de PuTTY solicite \"**login as:**\", escribe \"**pi**\" 
(el nombre de usuario de la RPi) y **password**: \"raspberry\" (el predeterminado, 
si no lo has cambiado).

.. note::

    Cuando ingreses la contraseña, los caracteres no se mostrarán en la ventana, lo cual es normal. Solo necesitas ingresar la contraseña correcta.
    
    Si aparece "inactive" junto a PuTTY, significa que la conexión se ha interrumpido y necesita ser reconectada.
    
.. image:: img/image26.png
    :align: center

**Paso 5**

Aquí, hemos conectado la Raspberry Pi y es momento de realizar los siguientes pasos.
