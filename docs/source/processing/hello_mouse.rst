Hello Mouse
==================

In this code, your mouse will keep shooting lines towards a point.
Move the mouse and you will draw a unique line starburst. Pressing the mouse will restart the drawing.

.. image:: img/hello_mouse1.png

**Code**

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

**How it works?**

The previous project was drawing a single image without any animation or interaction.

If we want to make an interactive program, we need to add the ``setup()`` and ``draw()`` functions (these are built-in functions that are called automatically) to build the frame.

* ``setup()``: Executed only once at the start of the program.
* ``draw()``: Executed repeatedly, where we usually add the code for drawing the animation.

As shown in the following code.

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

This code above already works smoothly as an interactive program.

Next we can add a more advanced event, the mouse click. This event can be implemented with the ``mousePressed()`` function, in which I added statements to refresh the target point and clear the screen.

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


For more please refer to `Processing Reference <https://processing.org/reference/>`_.

