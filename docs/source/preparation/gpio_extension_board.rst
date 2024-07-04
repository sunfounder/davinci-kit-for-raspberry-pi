.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie mit anderen Enthusiasten tiefer in Raspberry Pi, Arduino und ESP32 ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

GPIO-Erweiterungsplatine
========================

Bevor Sie beginnen, die Befehle zu lernen, müssen Sie zunächst mehr über die Pins des Raspberry Pi erfahren, da dies der Schlüssel zum weiteren Studium ist.

Mit der GPIO-Erweiterungsplatine können wir die Pins des Raspberry Pi problemlos auf das Breadboard führen, um Schäden an den GPIO-Pins durch häufiges Ein- oder Ausstecken zu vermeiden. Dies ist unsere 40-Pin-GPIO-Erweiterungsplatine und das GPIO-Kabel für das Raspberry Pi Modell B+, 2 Modell B sowie 3 und 4 Modell B.

.. image:: img/image32.png
    :align: center

**Pin-Nummerierung**

Die Pins des Raspberry Pi haben drei verschiedene Benennungsschemata: wiringPi, BCM und Board.

Unter diesen Benennungsschemata verwendet die 40-Pin-GPIO-Erweiterungsplatine das Benennungsschema BCM. Für einige spezielle Pins, wie den I2C- und den SPI-Port, wird jedoch die ihnen eigene Bezeichnung verwendet.

Die folgende Tabelle zeigt uns die Benennungsschemata von WiringPi, Board und die intrinsische Bezeichnung jedes Pins auf der GPIO-Erweiterungsplatine. Zum Beispiel wird der GPIO17 nach dem Board-Benennungsschema als Pin 11, nach dem wiringPi-Benennungsschema als Pin 0 und nach der intrinsischen Benennung als GPIO0 bezeichnet.

.. note::

    1) In der Programmiersprache C wird das Benennungsschema WiringPi verwendet.
    
    2) In der Programmiersprache Python werden die Benennungsschemata Board und BCM verwendet. Die Funktion GPIO.setmode() wird verwendet, um diese zu setzen.

.. image:: img/gpio_board.png
