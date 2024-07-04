.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie mit anderen Enthusiasten tiefer in Raspberry Pi, Arduino und ESP32 ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

Was ist Node.js?
================

Node.js wurde im Mai 2009 veröffentlicht und von Ryan Dahl entwickelt. Es ist eine JavaScript-Laufzeitumgebung, die auf der Chrome V8-Engine basiert. Es verwendet ein ereignisgesteuertes, nicht blockierendes I/O-Modell, das es ermöglicht, JavaScript auf der serverseitigen Entwicklungsplattform auszuführen.

Einfach ausgedrückt, Node.js ist JavaScript, das auf dem Server läuft. Wenn Sie mit JavaScript vertraut sind, werden Sie Node.js leicht erlernen.

Node.js verwendet normalerweise den Befehl ``npm install xxx``, um Drittanbieter-Pakete zu installieren, was uns dazu verpflichtet, das npm-Tool zu installieren, ähnlich dem pip-Tool in Python.

Installation oder Aktualisierung von Node.js und npm
----------------------------------------------------

Führen Sie die folgenden Befehle aus, um Node.js und npm zu installieren und zu aktualisieren.

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

Überprüfen Sie dann die aktuelle Node-Version mit dem folgenden Befehl.

.. raw:: html

    <run></run>

.. code-block::

    node -v

Der folgende Befehl überprüft die aktuelle npm-Version.

.. raw:: html

    <run></run>

.. code-block::

    npm -v
