.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

Anklickbare Farbblöcke
=======================

Wir haben bereits versucht, einen anklickbaren Punkt zu zeichnen, um die LED zu steuern, also gehen wir noch einen Schritt weiter und zeichnen 3 farbige Quadrate, um die RGB-Farben anzupassen!

.. image:: img/colorful_square.png

**Verdrahtung**

.. image:: img/image61.png


**Skizzieren**

.. code-block:: arduino

    import processing.io.*; // use the GPIO library

    int[] pins = { 17, 18, 27 };

    void setup() {
        for (int i = 0; i < pins.length; i++) {
            GPIO.pinMode(pins[i], GPIO.OUTPUT);
        }
        size(300, 100);
        background(255);
    }

    void draw() {
        fill(255, 0, 0);
        rect(0, 0, width/3, height);

        fill(0,255,0);
        rect(width/3, 0, 2*width/3, height);

        fill(0,0,255);
        rect(2*width/3, 0, width, height);
    }

    void mouseClicked() {
        for (int i = 0; i < pins.length; i++) {
            GPIO.digitalWrite(pins[i],GPIO.LOW);
        }
        if (mouseX<width/3){
            GPIO.digitalWrite(pins[0],GPIO.HIGH);
        }else if (mouseX>width/3&&mouseX<2*width/3){
            GPIO.digitalWrite(pins[1],GPIO.HIGH);
        }else if (mouseX>2*width/3){
            GPIO.digitalWrite(pins[2],GPIO.HIGH);
        }        
    }


**Wie es funktioniert?**

Dieses Projekt hat viel mit :ref:`processing_clickdot` gemeinsam, außer dass es die Bedingungen für die Bestimmung des Mausklick-Ereignisses verfeinert.

Zeichnen Sie zuerst drei Farbblöcke in ``draw()`` , ermitteln Sie dann, welcher Farbblock basierend auf dem Wert von mouseX (der X-Achsen-Koordinate der Maus) angeklickt wurde, und lassen Sie schließlich RGB die entsprechende Farbe aufleuchten.

**Was mehr?**

Basierend auf der Zugabe von Licht können wir eine siebenfarbige 
RGB-LED-Anzeige erstellen - das Hinzufügen von Rot zu Grün erzeugt Gelb; 
Wenn man alle drei Primärfarben zusammen addiert, erhält man Weiß. Jetzt können Sie es selbst ausprobieren.

Weitere Informationen finden Sie unter `Processing Reference <https://processing.org/reference/>`_.