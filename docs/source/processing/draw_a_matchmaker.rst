.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

Zeichne einen Matchman
===============================

Sie führen jetzt die Processing Development Environment (oder PDE) aus. Es ist nicht viel dabei; der große Bereich ist der Texteditor, und oben gibt es eine Reihe von Schaltflächen; Dies ist die Symbolleiste. Unterhalb des Editors befindet sich der Nachrichtenbereich und darunter die Konsole. Der Nachrichtenbereich wird für einzeilige Nachrichten verwendet, und die Konsole wird für weitere technische Details verwendet.

Machen wir uns mit der Verwendung von Processing vertraut und ziehen wir einen Matchman.

**Skizzieren**

Kopieren Sie die folgende Skizze in Processing und führen Sie sie aus. Ein neues Anzeigefenster erscheint und ein jubelnder Matchmaker wird ausgelost.

.. code-block:: arduino

    size(200,200);
    background(92, 168, 0); 
    rectMode(CENTER);
    rect(100,120,20,60);
    ellipse(100,80,45,45);
    line(90,150,80,170);
    line(110,150,120,170);
    line(90,110,70,100);
    line(110,110,130,100);

.. image:: img/draw_one1.png

.. note:: 

    Wenn Sie es ausführen und der Nachrichtenbereich rot wird und einige Fehler melden, dann stimmt etwas mit der Skizze nicht. Stellen Sie sicher, dass Sie die Beispielskizze genau kopieren: Zahlen sollten in Klammern eingeschlossen werden, mit Kommas zwischen jeder Zahl, und Zeilen sollten mit Semikolon enden.


**Wie es funktioniert?**

Der Schlüssel hier ist zu erkennen, dass das Anzeigefenster wie ein Quadrat aus Papier behandelt werden kann.

Jedes Pixel des Anzeigefensters ist eine Koordinate ``(x,y)`` die die Position eines Punktes im Raum bestimmt. 
Der Ursprung ``(0,0)`` der Koordinaten liegt in der oberen linken Ecke, die positive Richtung der X-Achse liegt horizontal nach rechts und die positive Richtung der Y-Achse ist vertikal nach unten.

Was wir tun müssen, ist anzugeben, welche Form und Farbe an diesen Pixelkoordinaten erscheinen soll.

Zeichnen Sie beispielsweise ein Rechteck der Breite 20 und Höhe 60 mit den Koordinate ``(100,120)`` als Mittelpunkt.

.. code-block:: arduino

    rectMode(CENTER);
    rect(100,120,20,60);

.. image:: img/draw_one_coodinate.png

Sobald wir die Beziehung zwischen dem Anzeigefenster und den Achsen verstanden haben, fällt uns diese Skizze nicht schwer, wir müssen nur einige einfache grafische Zeichenanweisungen verstehen.

    * ``size(width, height)`` : Definiert die Dimension der Breite und Höhe des Anzeigefensters in Pixeleinheiten.
    * ``background(red, green, blue)`` : Stellen Sie die Hintergrundfarbe des Anzeigefensters ein.
    * ``rectMode(mode)`` : Ändert die Position, von der aus Rechtecke gezeichnet werden, indem die Art und Weise geändert wird, wie die an ``rect()`` übergebenen Parameter interpretiert werden.
    * ``rect(x, y, width, height)`` : Zeichnet ein Rechteck auf den Bildschirm.
    * ``ellipse(x, y, width, height)`` : Zeichnet eine Ellipse (oval) auf den Bildschirm.
    * ``line(x1, y1, x2, y2)`` : Zeichnet eine Linie (einen direkten Pfad zwischen zwei Punkten) zum Bildschirm.

Weitere Informationen finden Sie unter `Processing Reference <https://processing.org/reference/>`_.






