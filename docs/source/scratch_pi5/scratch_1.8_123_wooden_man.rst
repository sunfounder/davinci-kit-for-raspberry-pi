.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Únete a otros apasionados y profundiza en el mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas posventa y supera desafíos técnicos con el apoyo de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso Exclusivo**: Obtén acceso anticipado a anuncios de nuevos productos y adelantos especiales.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones durante las festividades.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy.

1.8 123 Hombre de Madera
============================

Hoy, vamos a jugar al juego de "123 hombre de madera".

Haz clic en la bandera verde para iniciar el juego, mantén presionada la tecla de flecha derecha en el teclado para hacer que el sprite se desplace hacia la derecha. Si la luz verde está encendida, el sprite puede moverse; pero cuando el LED rojo está encendido, debes detener el movimiento del sprite; de lo contrario, el zumbador seguirá sonando.

.. image:: img/1.14_header.png

Componentes Necesarios
-------------------------

.. image:: img/1.14_component.png

Construye el Circuito
-------------------------

.. image:: img/1.14_fritzing.png


Carga el Código y Observa Qué Sucede
---------------------------------------

Carga el archivo de código (``1.8_123_wooden_man.sb3``) en Scratch 3.

Cuando el LED verde está encendido, puedes usar la flecha derecha para controlar que **Avery** camine hacia la derecha; cuando el LED rojo está encendido, si sigues permitiendo que **Avery** se mueva a la derecha, sonará una alarma.

Consejos sobre el Sprite
---------------------------

Elimina el sprite predeterminado y selecciona el sprite **Avery Caminando**.

.. image:: img/1.14_wooden1.png
  :width: 400

Consejos sobre el Código
---------------------------

.. image:: img/1.14_wooden2.png
  :width: 400

Inicializa todos los pines a alto.

.. image:: img/1.14_wooden3.png
  :width: 400

Cuando el juego comienza, asigna a la variable estado el valor 1, lo que indica que el sprite Avery Caminando es movible, y luego establece gpio18 en bajo, lo cual enciende el LED verde por 5 segundos.

.. image:: img/1.14_wooden4.png
  :width: 400

Configura gpio18 en alto, luego establece gpio27 en bajo, lo cual apaga el LED verde y enciende el LED amarillo por 0.5 segundos.

.. image:: img/1.14_wooden5.png
  :width: 400

Asigna a la variable estado el valor 0, lo cual significa que el sprite Avery Caminando no se mueve; luego establece gpio27 en bajo y gpio17 en alto, lo cual apaga el LED amarillo y enciende el LED rojo por 3 segundos. Finalmente, establece gpio17 en alto para apagar el LED rojo.

.. image:: img/1.14_wooden6.png
  :width: 400

Cuando presionamos la tecla de flecha derecha en el teclado, necesitamos cambiar el disfraz del sprite **Avery Caminando** al siguiente para que podamos ver a Avery caminar hacia la derecha. Luego necesitamos determinar el valor de la variable **estado**. Si es 0, significa que el sprite Avery Caminando no se está moviendo en ese momento, y el zumbador sonará para advertirte que no puedes presionar la tecla de flecha derecha nuevamente.

