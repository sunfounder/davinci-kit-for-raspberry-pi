.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

Aufblasen des Dot
===========================

Als nächstes bauen wir eine Schaltung, die es der Schaltfläche ermöglicht, 
die Größe des Punkts zu steuern. Wenn wir die Taste drücken, wird der Punkt schnell größer; 
Wenn wir die Taste loslassen, wird der Punkt allmählich kleiner, 
wodurch der Punkt wie ein aufgeblasener Ballon aussieht.

.. image:: img/dot_size.png

**Verdrahtung**

.. image:: img/button_pressed.png

**Skizzieren**

.. code-block:: arduino

    import processing.io.*;
    int buttonPin = 18; 

    float diameter;

    void setup() {
        size(200, 200);
        frameRate(64); //set frame rate
        GPIO.pinMode(buttonPin, GPIO.INPUT_PULLUP); 
        diameter = width*0.5;
    }

    void draw() {
        if (GPIO.digitalRead(buttonPin)==GPIO.LOW) {
            if(diameter<width*0.8) {diameter=diameter+5;}
        } else {
            if(diameter>=width*0.2) {diameter--;}
        } 
        background(192, 16, 18);
        ellipse(width/2, height/2,diameter, diameter);
    }

**Wie es funktioniert?**

Dieses Projekt verwendet die Eingabefunktion im Vergleich zu den vorherigen 2 Projekten, 
die die Ausgabefunktion des GPIO verwendet haben.

Die Funktion ``GPIO.pinMode()`` wird verwendet, um ``buttonPin`` in den Pull-Up-Eingangsmodus zu setzen, wodurch der Pin im Standardzustand automatisch hoch wird.

Verwenden Sie dann die Funktion ``GPIO.digitalRead()`` , um den Wert von ``buttonPin`` auszulesen. Wenn der Wert NIEDRIG ist, bedeutet dies, dass die Taste gedrückt wird. Lassen Sie dann den Durchmesser des Punkts um 5 zunehmen; Wird die Taste losgelassen, verringert sich der Durchmesser des Punktes um 1.

Weitere Informationen finden Sie unter `Processing Reference <https://processing.org/reference/>`_.