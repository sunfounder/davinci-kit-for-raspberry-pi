Clickable Dot
==================

We've tried drawing motion graphics, responding to mouse events, and controlling LED.  So, we might as well combine these functions, draw a clickable dot, to control the LED!  

.. image:: img/clickable_dot_on.png

**Wiring**

.. image:: img/image49.png

**Code**

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
            GPIO.digitalWrite(ledPin, GPIO.HIGH);
            fill(255, 0, 0);
        }else { 
            GPIO.digitalWrite(ledPin, GPIO.LOW);
            fill(155);
        }
        ellipse(width/2, height/2, width*0.75, height*0.75);
    }

    void mouseClicked() {
        //  toggles state:
        if (2*dist(mouseX,mouseY,width/2, height/2)<=width*0.75)
            {state = !state;}
    }

**How it works?**

This project has a lot in common with :ref:`Blingking Dot`, the difference is that it puts the statement to state states in the mouse event.
This causes the LED to not blink automatically, but to light up and go off with a mouse click.

And in the ``mouseClicked()`` event, the ``dist()`` function is used to determine the position of the mouse at the time of the click. When the click event is triggered, the mouse is considered to have clicked on the dot when its distance from the center of the dot is less than the radius.

