.. _processing_clickdot:

Anklickbarer Punkt
=========================

Wir haben versucht, Animationen zu zeichnen, auf Mausereignisse zu reagieren und die LED zu steuern. Wir können diese Funktionen also genauso gut kombinieren, einen anklickbaren Punkt zeichnen, um die LED zu steuern!

.. image:: img/clickable_dot_on.png

**Verdrahtung**

.. image:: img/image49.png

**Skizzieren**

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
        //  toggles state:
        if (2*dist(mouseX,mouseY,width/2, height/2)<=width*0.75)
            {state = !state;}
    }

**Wie es funktioniert?**

Dieses Projekt hat viel mit :ref:`processing_blinkdot` gemeinsam, der Unterschied besteht darin, dass es den Toggle-Status in das Mausereignis versetzt. Dadurch blinkt die LED nicht automatisch, sondern leuchtet auf und erlischt mit einem Mausklick.

Und im Ereignis ``mouseClicked()`` wird die Funktion ``dist()`` verwendet, um die Position der Maus zum Zeitpunkt des Klickens zu bestimmen, und der Punkt wird nur dann als angeklickt betrachtet, wenn der Abstand zwischen der Maus und der Mittelpunkt des Punktes ist kleiner als der Radius.

Weitere Informationen finden Sie unter `Processing Reference <https://processing.org/reference/>`_.