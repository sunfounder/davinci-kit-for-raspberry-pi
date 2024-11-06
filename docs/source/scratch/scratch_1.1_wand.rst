.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Únete a otros apasionados para profundizar en el mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas posventa y supera desafíos técnicos con el apoyo de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso Exclusivo**: Obtén acceso anticipado a anuncios y adelantos de nuevos productos.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales durante las festividades.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy.

1.1 Varita Mágica
=======================

Hoy usaremos un LED, una Raspberry Pi y Scratch para hacer un juego divertido. Cuando agitemos la varita mágica, el LED parpadeará.

.. image:: img/1.1_header.png

Componentes Necesarios
-------------------------

.. image:: img/1.1_list.png

Construye el Circuito
--------------------------

.. image:: img/1.1_image49.png

Agregar Extensión GPIO
-------------------------

Haz clic en el botón **Agregar Extensión** en la esquina inferior izquierda y luego agrega **Raspberry Pi GPIO**, una extensión que usaremos para todos nuestros proyectos en Scratch.

.. image:: img/1.1_scratchled1.png
    :align: center

.. image:: img/1.1_scratchled2.png
    :align: center

.. image:: img/1.1_scratchled3.png
    :align: center

Carga el Código y Observa Qué Sucede
-------------------------------------

Carga el archivo de código desde tu computadora (``home/pi/davinci-kit-for-raspberry-pi/scratch/code``) en Scratch 3.

.. image:: img/1.1_scratch_step1.png

.. image:: img/1.1_scratch_step2.png

Después de hacer clic en la varita mágica en el área de escenario, verás que el LED parpadea durante dos segundos.

.. image:: img/1.1_step3.png


Consejos sobre los Objetos
---------------------------

Haz clic en **Cargar Objeto**.

.. image:: img/1.1_upload_sprite.png

Sube **Wand.png** desde la ruta ``home/pi/davinci-kit-for-raspberry-pi/scratch/picture`` a Scratch 3.

.. image:: img/1.1_upload.png

Finalmente, elimina **Sprite1**.

.. image:: img/1.1_delete.png

Consejos sobre el Código
-------------------------

.. image:: img/1.1_LED1.png
  :width: 300

Este es un bloque de evento cuya condición de activación es hacer clic en la bandera verde en el escenario. Se requiere un evento de activación al inicio de todo código, y puedes seleccionar otros eventos en la categoría **Eventos** de la **paleta de bloques**.

.. image:: img/1.1_events.png
  :width: 300

Por ejemplo, ahora podemos cambiar el evento de activación a un clic en el objeto.

.. image:: img/1.1_LED2.png
  :width: 300

Este es un bloque con un número definido de ciclos. Al ingresar el número 10, los eventos en el bloque se ejecutarán 10 veces.

.. image:: img/1.1_LED4.png
  :width: 300

Este bloque se usa para pausar el programa por un tiempo determinado en segundos.

.. image:: img/1.1_LED3.png
  :width: 500

Dado que en Scratch se utiliza el método de nomenclatura BCM, este código está configurando GPIO17 (BCM17) a 0V (nivel bajo). Como el cátodo del LED está conectado a GPIO17, el LED se encenderá. Por el contrario, si configuras GPIO (BCM17) en alto, el LED se apagará.
