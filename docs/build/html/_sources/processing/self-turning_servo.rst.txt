Self-turning Servo
====================

In Procesing, set the angle to the servo and let it turn by itself.


**Wiring**

.. image:: img/image125.png


**Sketch**

.. code-block:: arduino

    import processing.io.*;
    SoftwareServo myServo;

    void setup() {
        myServo = new SoftwareServo(this);
        myServo.attach(18);
    }

    void draw() {
        float angle = 90 + sin(frameCount / 100.0)*80;
        myServo.write(angle);
    }


**How it works?**


The ``processing.io.*`` library has the ``SoftwareServo`` class , it controls RC servo motors attached to General Purpose I/O pins.

It has four simple and straightforward methods:

    * ``.attach(pin)``: Attaches a servo motor to a GPIO pin.
    * ``.detach()``: Detatches a servo motor from a GPIO pin.
    * ``.attached()``: Returns whether a servo motor is attached to a pin.
    * ``.write(angle)`` : Moves a servo motor to a given orientation.

Similar to the previous project, we use the ``sin()`` function to make the angle of the servo change periodically.
The seed used this time is ``frameCount``, which is related to ``frameRate``.
By default ``frameRate`` is 60, which means that ``frameCount`` will accumulate 60 times per second.