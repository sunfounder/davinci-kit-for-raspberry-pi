.. note::

    ¡Hola! Bienvenido a la Comunidad de Entusiastas de SunFounder para Raspberry Pi, Arduino y ESP32 en Facebook. Sumérgete en el mundo de Raspberry Pi, Arduino y ESP32 junto a otros entusiastas.

    **¿Por qué unirse?**

    - **Soporte Experto**: Resuelve problemas postventa y desafíos técnicos con la ayuda de nuestra comunidad y equipo.
    - **Aprende y Comparte**: Intercambia consejos y tutoriales para mejorar tus habilidades.
    - **Avances Exclusivos**: Accede anticipadamente a anuncios de nuevos productos y adelantos exclusivos.
    - **Descuentos Especiales**: Aprovecha descuentos exclusivos en nuestros productos más recientes.
    - **Promociones Festivas y Sorteos**: Participa en sorteos y promociones especiales.

    👉 ¿Listo para explorar y crear con nosotros? Haz clic en [|link_sf_facebook|] y únete hoy mismo.

Punto en el Oscilador
==============================

En este proyecto, conectaremos 3 botones: uno para cambiar el tamaño del punto, otro para cambiar su posición y el último para cambiar su color. Si presionas los 3 botones al mismo tiempo, obtendrás un punto que oscila y cambia de color.

.. image:: img/dancing_dot.png

**Conexión**

.. image:: img/circuit_dancing_dot.png

**Código**

.. code-block:: arduino

    import processing.io.*;

    // Definir una instancia del objeto Dot
    Dot myDot;

    // Definir los pines que leerán las pulsaciones de los botones
    int[] pins = { 18, 23, 24 };

    void setup() {
        size(400, 400);
        // Cambiar el modo de color a HSB
        colorMode(HSB, 360, 100, 100);
        noStroke();

        for (int i = 0; i < pins.length; i++) {
            GPIO.pinMode(pins[i], GPIO.INPUT_PULLUP);
        }

        // Crear un punto en el centro de la pantalla 
        myDot = new Dot(width / 2, height / 2, 100, 255);
    }

    void draw() {
        background(0); 

        // Modificar atributos del punto según los botones presionados
        if (GPIO.digitalRead(pins[0]) == GPIO.LOW) {myDot.setSize();} 
        if (GPIO.digitalRead(pins[1]) == GPIO.LOW) {myDot.setPosition();} 
        if (GPIO.digitalRead(pins[2]) == GPIO.LOW) {myDot.setColor();} 

        // Actualizar el estado del punto
        myDot.update();
        // Y dibujarlo en la pantalla
        myDot.show();
    }

    class Dot { 

        float initX;
        float initY;
        float currentX;
        float currentY;
        int positionRange = 60;

        float initSize;
        float currentSize;
        int sizeRange = 50;

        int initColor;
        int currentColor;
        int ColorRange = 80;

        float timer = 0.0;
        float speed = 0.06;

        Dot(float x, float y, float s, int c) {
            initX = x;
            initY = y;
            currentX = x;
            currentY = y;

            initSize = s;
            currentSize = s;

            initColor = c;
            currentColor = c;
        }

        void setSize() {
            currentSize = initSize + sizeRange * sin( timer );
        }

        void setPosition() {
            currentY = initY + positionRange * cos( timer *2);
        }

        void setColor() {
            currentColor = int(initColor + ColorRange * sin( timer ));
        }

        void update() {
            timer += speed;
        }

        void show() {
            fill(currentColor, 100, 100); 
            ellipse(currentX, currentY, currentSize, currentSize);
        }
    }

**¿Cómo funciona?**

En lugar de dibujar el punto directamente, aquí creamos una clase ``Dot``.
Luego, declaramos el objeto (en este caso, ``myDot``).

Esta es una forma sencilla de dibujar puntos con múltiples propiedades idénticas. 
Por ejemplo, si agregamos tres funciones al punto en este proyecto - cambiar tamaño, 
cambiar posición y cambiar color - cada punto que declaremos tendrá la misma funcionalidad. 
Podemos usar el mismo botón para que realicen la misma acción o botones diferentes para controlar cada punto por separado.

Usar **clases** hace que tu código sea más limpio, poderoso y flexible.

`Class (computer programming) - Wikipedia <https://en.wikipedia.org/wiki/Class_(computer_programming)>`_

Veamos más de cerca la clase ``Dot``.

.. code-block:: arduino

    Dot(float x, float y, float s, int c)

En la declaración, se deben pasar cuatro parámetros: las coordenadas X e Y de la posición, el tamaño y el color (aquí se usa el `HSB color mode <https://en.wikipedia.org/wiki/HSL_and_HSV>`_).

Cada parámetro se asignará a dos conjuntos de valores (valor inicial y valor actual).

.. code-block:: arduino

    float initX;
    float initY;
    float currentX;
    float currentY;
    int positionRange = 60;

    float initSize;
    float currentSize;
    int sizeRange = 50;

    int initColor;
    int currentColor;
    int ColorRange = 80;

Además del valor inicial y el valor actual, hay un conjunto de valores de rango. No es difícil entender que el valor inicial se usa para determinar el estado inicial del punto (definido por los parámetros de entrada), mientras que el valor actual cambiará dentro del rango para hacer que el punto se mueva.

Así, excepto el valor X, los valores actuales de los otros tres parámetros se calculan como sigue:

.. code-block:: arduino

    void setSize() {
        currentSize = initSize + sizeRange * sin( timer );
    }

    void setPosition() {
        currentY = initY + positionRange * cos( timer *2);
    }

    void setColor() {
        currentColor = int(initColor + ColorRange * sin( timer ));
    }


Si estás familiarizado con las funciones trigonométricas, no te resultará difícil entender `sine and cosine <https://en.wikipedia.org/wiki/Sine>`_, que dan un cambio periódico y suave (de -1 a 1) en el valor actual del punto.

También necesitamos un temporizador, ``timer``, para la variación periódica. Este se incrementa en el método ``update()``, llamado en ``draw()``.

.. code-block:: arduino

    void update() {
        timer += speed;
    }

Finalmente, el punto se muestra según el valor actual mediante el método ``show()``, que también se llama en ``draw()``.

.. code-block:: arduino

    void show() {
        fill(currentColor, 100, 100); 
        ellipse(currentX, currentY, currentSize, currentSize);
    }

**¿Algo más?**

Al dominar el uso de clases, ya puedes dibujar múltiples puntos con las mismas propiedades, así que ¿por qué no intentar algo más interesante?
Por ejemplo, podrías dibujar un sistema binario estable, o crear un juego al estilo de 'DUET'.


Para más detalles consulta `Processing Reference <https://processing.org/reference/>`_.
