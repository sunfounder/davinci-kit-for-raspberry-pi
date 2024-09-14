.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

FAQ
============

.. _faq_c_nowork:


C-Code funktioniert nicht?
--------------------------


* Überprüfen Sie Ihre Verkabelung auf Probleme.

* Check if the code is reporting errors, if so, refer to: :ref:`install_wiringpi` .

* Wurde der Code vor der Ausführung kompiliert.

* If all the above 3 conditions are OK, it may be that your wiringPi version (2.50) is not compatible with your Raspberry Pi 4B and above, refer to Check and Install the WiringPi to manually upgrade it to version 2.52.



.. _faq_soc:

Wenn ``gpiozero`` nicht funktioniert.
-------------------------------------------------------------------------

Unser Raspberry Pi 5 GPIO Python-Tutorial basiert auf der gpiozero-Bibliothek,
und wurde während des Designprozesses gründlich getestet.

Jüngste Änderungen am Linux-Kernel auf dem Raspberry Pi OS [1] haben jedoch die Art und Weise geändert, wie GPIO-Systemaufrufe gehandhabt werden,
was dazu geführt hat, dass die ursprüngliche Python-Bibliothek nicht auf GPIO auf dem Raspberry Pi 5 zugreifen kann.
Unsere Entwickler haben dieses Problem an die gpiozero-Bibliothek gemeldet,
und die gpiozero-Entwickler sind sich des Problems bewusst und arbeiten aktiv an einem Update [2].

* [1] https://github.com/raspberrypi/linux/pull/6144
* [2] https://github.com/gpiozero/gpiozero/issues/1166

In der Zwischenzeit
haben wir eine vorübergehende Lösung gefunden: Durch Ausführen des folgenden Befehls funktioniert der GPIO normal.

.. code-block::

    sudo ln -s gpiochip0 /dev/gpiochip4

Diese Lösung bleibt wirksam, bis die gpiozero-Bibliothek einen entsprechenden Fix veröffentlicht.

