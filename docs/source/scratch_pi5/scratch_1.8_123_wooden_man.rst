.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

1.8 123 Holzmann
===========================

Heute spielen wir 123 Holzmann.

Klicken Sie auf die grüne Flagge, um das Spiel zu starten, 
halten Sie die rechte Pfeiltaste auf der Tastatur gedrückt, 
um das Sprite nach rechts zu bewegen. Wenn das grüne Licht leuchtet, 
kann sich das Sprite bewegen; aber wenn die rote LED leuchtet, 
müssen Sie die Bewegung des Sprites stoppen; andernfalls klingelt der Summer weiter.

.. image:: media/1.14_header.png

Erforderliche Komponenten
---------------------------------------

.. image:: media/1.14_component.png

Baue die Schaltung
---------------------

.. image:: media/1.14_fritzing.png


Laden Sie den Code und sehen Sie, was passiert
-----------------------------------------------------------

Laden Sie die Codedatei (``1.8_123_wooden_man.sb3``) in Scratch 3.

Wenn die grüne LED leuchtet, 
können Sie **Avery** mit der rechten Pfeiltaste so steuern, 
dass sie nach rechts geht; Wenn die rote LED leuchtet und Sie **Avery** weiter nach rechts bewegen lassen, ertönt ein Alarm.

Tipps zu Sprite
----------------

Löschen Sie das Standard-Sprite und wählen Sie dann das **Avery Walking** -Sprite.

.. image:: media/1.14_wooden1.png
  :width: 400

Tipps zu Codes
----------------------

.. image:: media/1.14_wooden2.png
  :width: 400

Initialisieren Sie alle Pins auf High.

.. image:: media/1.14_wooden3.png
  :width: 400

Wenn das Spiel startet, weisen Sie die Statusvariable auf 1 zu, um anzuzeigen, dass das Avery Walking-Sprite beweglich ist, und setzen Sie dann gpio18 auf niedrig, wodurch die grüne LED 5 Sekunden lang aufleuchtet.



.. image:: media/1.14_wooden4.png
  :width: 400

Setzen Sie gpio18 auf hoch und dann gpio27 auf niedrig, d.h. schalten Sie die grüne LED aus und leuchten Sie die gelbe LED für 0,5s auf.

.. image:: media/1.14_wooden5.png
  :width: 400

Weisen Sie die Statusvariable auf 0 zu, was bedeutet, dass sich das Avery Walking-Sprite nicht bewegt; setze dann gpio27 auf low und gpio17 auf high, was die gelbe LED ausschaltet und dann die rote LED für 3s aufleuchtet. Setzen Sie schließlich gpio17 auf hoch, um die rote LED auszuschalten.

.. image:: media/1.14_wooden6.png
  :width: 400

Wenn wir die rechte Pfeiltaste auf der Tastatur drücken, müssen wir das Sprite Avery Walking auf das nächste Kostüm umschalten, damit wir Avery nach rechts gehen sehen. Dann müssen wir den Wert der Variable status bestimmen. Wenn es 0 ist, bedeutet dies, dass sich das Avery Walking-Sprite in diesem Moment nicht bewegt, und der Summer ertönt, um Sie zu warnen, dass Sie die rechte Pfeiltaste nicht erneut drücken können.