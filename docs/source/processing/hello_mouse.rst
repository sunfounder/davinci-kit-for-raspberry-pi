.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Hola Ratón
==================

En este proyecto, el ratón trazará líneas continuamente hacia un punto; mueve el ratón y dibujarás una línea única de estrellas. Presiona el ratón para reiniciar el dibujo.

.. image:: img/hello_mouse1.png

**Sketch**

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

    void mousePressed() {
        pointX=mouseX;
        pointY=mouseY;
        background(192, 16, 18);
    }

**¿Cómo funciona?**

El proyecto anterior dibujaba una imagen única sin animación o interacción.

Si queremos crear un sketch interactivo, necesitamos añadir las funciones ``setup()`` y ``draw()`` (estas son funciones integradas que se llaman automáticamente) para construir el marco.

* ``setup()``: Se ejecuta solo una vez al inicio del sketch.
* ``draw()``: Se ejecuta repetidamente; aquí solemos añadir el código para dibujar la animación.

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

Este sketch ya funciona fluidamente como un sketch interactivo.

Luego, puedes añadir un evento de clic del ratón. Este evento se implementa con la función ``mousePressed()``, donde añadimos instrucciones para refrescar el punto objetivo y limpiar la pantalla.

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

    void mousePressed() {
        pointX=mouseX;
        pointY=mouseY;
        background(192, 16, 18);
    }


Para más información, consulta `Processing Reference <https://processing.org/reference/>`_.
