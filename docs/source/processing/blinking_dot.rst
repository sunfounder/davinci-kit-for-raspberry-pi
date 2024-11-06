.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Blinking Dot
===========================

En este proyecto, dibujaremos un punto en Processing que parpadea al mismo ritmo que el LED. Por favor, construye el circuito según el diagrama y ejecuta el código.

.. image:: img/blinking_dot.png
.. image:: img/clickable_dot_on.png


**Conexión**

.. image:: img/image49.png

**Código**

.. code-block:: arduino

    import processing.io.*;
    int ledPin = 17; 
    boolean state = true; 

    void setup() {
        size(100, 100);
        frameRate(2); // establece la frecuencia de fotogramas
        GPIO.pinMode(ledPin, GPIO.OUTPUT); // configura el ledPin en modo salida 
    }

    void draw() {
        state = !state;
        if (state==true) {
            GPIO.digitalWrite(ledPin, GPIO.LOW); // enciende el LED
            fill(255, 0, 0); // establece el color de relleno cuando el LED está encendido
        } else {
            GPIO.digitalWrite(ledPin, GPIO.HIGH); // apaga el LED
            fill(155); // establece el color de relleno cuando el LED está apagado
        } 
        ellipse(width/2, height/2, width*0.75, height*0.75);
    }

**¿Cómo funciona?**

Al inicio del código, necesitas incorporar la biblioteca de funciones GPIO de Processing mediante ``import processing.io.*;``, lo cual es indispensable para los experimentos de circuitos.

La **frecuencia de fotogramas** es la cantidad de veces que un fotograma aparece en la pantalla por segundo, expresada en hercios (Hz). Es decir, también es la frecuencia con la que se llama a la función ``draw()``. En ``setup()``, configurar la **frecuencia de fotogramas** a 2 llamará a ``draw()`` cada 0.5 segundos.

Cada llamada de la función ``draw()`` invierte el valor de ``state`` y, luego, lo determina. Si el valor es ``true``, el LED se enciende y el pincel se llena de rojo; si no, el LED se apaga y el pincel se llena de gris.

Después de realizar esta verificación, usa la función ``ellipse()`` para dibujar un círculo. Cabe destacar que ``width`` y ``height`` son variables de sistema que almacenan el ancho y alto de la ventana de visualización.

Hay otros dos puntos importantes a tener en cuenta. Cuando utilices GPIOs, debes usar la función ``GPIO.pinMode()`` para configurar el estado de ENTRADA/SALIDA del pin, y luego usar la función ``GPIO.digitalWrite()`` para asignarle un valor (HIGH/LOW).

.. note::

    Por favor, intenta evitar el uso de ``delay()`` en ``draw()`` ya que afectará la actualización de la ventana de visualización.


Para más información, consulta `Processing Reference <https://processing.org/reference/>`_.
