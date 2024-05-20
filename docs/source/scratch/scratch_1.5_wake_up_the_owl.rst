.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

1.5 Weck die Eule auf
============================

Heute werden wir ein Spiel spielen, bei dem es darum geht, die Eule zu wecken.

Wenn sich jemand dem PIR-Sensormodul nähert, erwacht die Eule aus dem Schlaf.

There are two potentiometers on the PIR module: one is to adjust sensitivity and the other is to adjust the detection distance. To make the PIR module work better, you You need to turn both of them counterclockwise to the end.

.. image:: media/1.5_header.png

Erforderliche Komponenten
-----------------------------------

.. image:: media/1.5_component.png

Bauen Sie den Stromkreis auf
--------------------------------

.. image:: media/1.5_fritzing.png

Laden Sie den Code und sehen Sie, was passiert
----------------------------------------------------

Laden Sie die Codedatei (``1.5_wake_up_the_owl.sb3``) in Scratch 3.

Wenn Sie sich dem PIR-Sensormodul nähern, sehen Sie, wie die Eule auf dem Bühnenbereich ihre Flügel öffnet und aufwacht, und wenn Sie gehen, schläft die Eule wieder ein.

Tipps zu Figur
----------------

Wählen Sie Sprite1 und klicken Sie auf **Costumes** in der oberen linken Ecke; 
laden Sie **owl1.png** und **owl2.png** aus dem Pfad ``home/pi/davinci-kit-for-raspberry-pi/scratch/picture`` 
über die Schaltfläche **Upload Costume** hoch; löschen Sie die 2 Standardkostüme und benennen Sie das Sprite in **owl** um.

.. image:: media/1.5_pir1.png

Tipps zu Codes
-----------------------

.. image:: media/1.3_title2.png


Wenn die grüne Flagge angeklickt wird, wird der Ausgangszustand von gpio17 auf low gesetzt.


.. image:: media/1.5_owl1.png
  :width: 400

Wenn Pin17 niedrig ist (es nähert sich niemand), schalte das Kostüm des Eulen-Sprites auf Eule1 (Schlafzustand).

.. image:: media/1.5_owl2.png
  :width: 400

Wenn Pin17 hoch ist (jemand nähert sich), schalten wir das Kostüm des Eulen-Sprites auf Eule2 (Wachzustand).