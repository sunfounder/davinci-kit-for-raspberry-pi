.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie tiefer in Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und Vorschauen.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

Überprüfung der pigpio-Bibliothek
=================================

pigpio ist ein Modul zur Steuerung der GPIO-Kanäle des Raspberry Pi. Dieses Paket bietet einige Methoden zur Steuerung der GPIO auf dem Raspberry Pi. Für Beispiele und Dokumentation besuchen Sie bitte: https://www.npmjs.com/package/pigpio.

Geben Sie den folgenden Befehl ein, um die pigpio-Bibliothek zu installieren.

.. raw:: html

    <run></run>

.. code-block::

    npm install pigpio

Überprüfen Sie, ob die Bibliothek erfolgreich installiert wurde. Ändern Sie das Verzeichnis und geben Sie nodejs ein:

.. raw:: html

    <run></run>

.. code-block::

    cd ~/davinci-kit-for-raspberry-pi/nodejs
    nodejs

.. image:: img/pigpio1.png

Geben Sie dann require('pigpio') ein:

.. raw:: html

    <run></run>

.. code-block::

    require('pigpio')

.. image:: img/pigpio2.png   

Wenn der obige Bildschirm erscheint, ist die Installation der Bibliothek erfolgreich.

Wenn Sie die Node-CLI beenden möchten, drücken Sie bitte zweimal Strg+C.

.. image:: img/pigpio3.png
