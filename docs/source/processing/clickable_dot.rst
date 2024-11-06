.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Clickable Dot
==================

Ya hemos probado dibujar gráficos en movimiento, responder a eventos del ratón y controlar el LED. ¡Así que podríamos combinar estas funciones, dibujar un punto clicable y controlar el LED!

.. image:: img/clickable_dot_on.png

**Conexión**

.. image:: img/image49.png

**Código**

.. code-block:: arduino

    import processing.io.*; 
    boolean state = false;
    int ledPin = 17;

    void setup() {
        GPIO.pinMode(ledPin, GPIO.OUTPUT);
        background(255);
    }

    void draw() {
        if (state == true) { 
            GPIO.digitalWrite(ledPin, GPIO.LOW);
            fill(255, 0, 0);
        }else { 
            GPIO.digitalWrite(ledPin, GPIO.HIGH);
            fill(155);
        }
        ellipse(width/2, height/2, width*0.75, height*0.75);
    }

    void mouseClicked() {
        // alterna el estado:
        if (2*dist(mouseX,mouseY,width/2, height/2)<=width*0.75)
            {state = !state;}
    }

**¿Cómo funciona?**


Este proyecto tiene mucho en común con :ref:`Blinking Dot`, la diferencia es que coloca el estado de alternancia en el evento del ratón.
Esto hace que el LED no parpadee automáticamente, sino que se encienda y apague con cada clic del ratón.

En el evento ``mouseClicked()``, se usa la función ``dist()`` para determinar la posición del ratón en el momento del clic, y se considera que el punto ha sido clicado solo si la distancia entre el ratón y el centro del punto es menor que el radio.

Para más información, consulta `Processing Reference <https://processing.org/reference/>`_.
