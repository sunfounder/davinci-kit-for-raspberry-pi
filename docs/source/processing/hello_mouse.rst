.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

Hallo Maus
==================

In diesem Projekt schießt Ihre Maus weiterhin Linien auf einen Punkt; Bewegen Sie die Maus und Sie werden eine einzigartige Sternenlinie zeichnen. Drücken Sie die Maus, um die Zeichnung neu zu starten.

.. image:: img/hello_mouse1.png

**Skizzieren**

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

**Wie es funktioniert?**

Das vorherige Projekt zeichnete ein einzelnes Bild ohne Animation oder Interaktion.

Wenn wir eine interaktive Skizze erstellen möchten, müssen wir die Funktionen ``setup()`` und  ``draw()`` 
(dies sind integrierte Funktionen, die automatisch aufgerufen werden) hinzufügen, um den Rahmen zu erstellen.

* ``setup()``: Wird nur einmal zu Beginn des Sketches ausgeführt.
* ``draw()``: Wird wiederholt ausgeführt, wobei wir normalerweise die Skizze zum Zeichnen der Animation hinzufügen.

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

Diese obige Skizze funktioniert bereits reibungslos als interaktive Skizze.

Als nächstes können Sie ein Mausklick-Ereignis hinzufügen. 
Dieses Ereignis kann mit der Funktion ``mousePressed()`` implementiert werden, wo wir Anweisungen hinzufügen, 
um den Zielpunkt zu aktualisieren und den Bildschirm zu leeren.

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


Weitere Informationen finden Sie unter `Processing Reference <https://processing.org/reference/>`_.

