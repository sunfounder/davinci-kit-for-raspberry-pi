.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

1.4 Hase
==============

Heute werden wir Button, Raspberry Pi und Scratch verwenden, um einen Hasen mit verschiedenen Veränderungen zu erstellen!

Wenn wir den ersten Knopf drücken, ändert der Hase im Bühnenbereich seine Körperfarbe; wenn wir den zweiten Knopf drücken, ändert der Hase seine Körpergröße; wenn wir den dritten Knopf drücken, macht der Hase einen Schritt nach vorne.

.. image:: media/1.4_header.png

Erforderliche Komponenten
----------------------------

.. image:: media/1.4_list.png

Bauen Sie den Stromkreis auf
-----------------------------------

.. image:: media/1.4_scratch_button.png

Laden Sie den Code und sehen Sie, was passiert
--------------------------------------------------------

Lade die Code-Datei (``1.4_hare.sb3``) in Scratch 3.

Jetzt kannst du versuchen, jeden der 3 Knöpfe zu drücken, um zu sehen, wie sich der Hase auf der Bühne verändert.

Tipps zu Figur
----------------

Klicken Sie auf die Schaltfläche **Choose a Sprite** in der unteren rechten Ecke des Sprite-Bereichs, geben Sie **Hare** in das Suchfeld ein, und klicken Sie dann, um es hinzuzufügen.

.. image:: media/1.4_button1.png

Löschen Sie Figur1.

.. image:: media/1.4_button2.png


Tipps zu Codes
-----------------------

.. image:: media/1.4_button3.png
  :width: 400

Dies ist ein Ereignisblock, der ausgelöst wird, wenn der Pegel von GPIO17 hoch ist, was bedeutet, dass die Taste zu diesem Zeitpunkt gedrückt wird.

.. image:: media/1.4_button4.png
  :width: 400

Dies ist ein Block, um die Farbe von **Hare** zu ändern, der Bereich des Wertes ist 0 ~ 199, über 199 wird wieder von 0 geändert.

.. image:: media/1.4_button5.png
  :width: 250

Dies ist ein Block, der verwendet wird, um die Größe für das Sprite zu ändern. Je höher der Wert, desto größer das Sprite.

.. note::
  Das Sprite ist auch nicht unendlich groß, und seine maximale Größe hängt von der Größe des Originalbildes ab.

.. image:: media/1.4_button6.png
  :width: 200

Dies ist ein Block, der die Kostüme der Sprites wechselt. Wenn **Hare**
sein Kostüm wechselt, führt er eine Reihe von kohärenten Aktionen aus. In diesem Projekt soll **Hare** zum Beispiel einen Schritt nach vorne machen.
