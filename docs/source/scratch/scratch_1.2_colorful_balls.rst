.. note::

    ¡Hola! Bienvenido a la comunidad de entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Únete a otros apasionados y profundiza en el mundo de Raspberry Pi, Arduino y ESP32.

    **¿Por qué unirte?**

    - **Soporte Experto**: Resuelve problemas posventa y supera desafíos técnicos con el apoyo de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Acceso Exclusivo**: Obtén acceso anticipado a anuncios de nuevos productos y adelantos especiales.
    - **Descuentos Especiales**: Disfruta de descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones durante las festividades.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy.

1.2 Bolas de Colores
=====================

Al hacer clic en las bolas de diferentes colores en el área de escenario, el LED RGB se encenderá en colores distintos.

.. image:: img/1.2_header.png

Componentes Necesarios
-------------------------

.. image:: img/1.2_list.png

Construye el Circuito
-------------------------

.. image:: img/1.2_image61.png


Carga el Código y Observa Qué Sucede
---------------------------------------

Después de cargar el archivo de código (``1.2_colorful_balls.sb3``) en Scratch 3, el LED RGB se iluminará en amarillo, azul, rojo, verde o púrpura al hacer clic en la bola correspondiente.


Consejos sobre los Objetos
------------------------------

Elimina el objeto predeterminado y luego selecciona el objeto **Ball** (bola).

.. image:: img/1.2_ball.png

Duplícalo 5 veces.

.. image:: img/1.2_duplicate_ball.png

Selecciona diferentes disfraces para estos 5 objetos **Ball** y colócalos en las posiciones correspondientes.

.. image:: img/1.2_rgb1.png

Consejos sobre el Código
---------------------------

Antes de comprender el código, necesitamos entender el `modelo de color RGB <https://es.wikipedia.org/wiki/Modelo_de_color_RGB>`_.

El modelo de color RGB es un modelo de color aditivo en el que se suman luz roja, verde y azul de diversas maneras para reproducir una amplia gama de colores.

Mezcla de colores aditiva: al agregar rojo al verde se obtiene amarillo; al agregar verde al azul se obtiene cian; al agregar azul al rojo se obtiene magenta; y al mezclar los tres colores primarios se obtiene blanco.

.. image:: img/1.2_rgb_addition.png
  :width: 400

Un LED RGB es una combinación de 3 LEDs (LED rojo, verde y azul) en un solo paquete, y puedes producir casi cualquier color combinando estos tres colores. Tiene 4 pines, uno de los cuales es GND, y los otros 3 pines controlan los LEDs individualmente.

Por lo tanto, el código para hacer que el LED RGB ilumine en amarillo es el siguiente.

.. image:: img/1.2_rgb3.png

Cuando se hace clic en el objeto Bola (bola amarilla), configuramos gpio17 en alto (enciende el LED rojo), gpio18 en alto (enciende el LED verde) y gpio27 en bajo (apaga el LED azul) para que el LED RGB ilumine en amarillo.

Puedes escribir códigos para los otros objetos de la misma manera para hacer que los LEDs RGB se iluminen en los colores correspondientes.
