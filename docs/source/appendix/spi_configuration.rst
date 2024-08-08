.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

.. _spi_config:

SPI-Konfiguration
====================


Schritt 1: Aktivieren Sie den SPI-Port Ihres Raspberry Pi (Wenn Sie ihn aktiviert haben, überspringen Sie diesen; 
wenn Sie nicht wissen, ob Sie das getan haben oder nicht, fahren Sie bitte fort).

.. raw:: html

    <run></run>

.. code-block:: 

    sudo raspi-config

**3 Interfacing options**

.. image:: media/image282.png
   :align: center

**I3 SPI**

.. image:: img/i3spi.png
   :align: center

**<YES>**, dann auf **<OK>** und **<Finish>** klicken. Jetzt können Sie den Raspberry Pi mit dem Befehl ``sudo reboot`` neu starten.

.. image:: media/image286.png
   :align: center 


Schritt 2: Überprüfen Sie, ob die Spi-Module geladen und aktiv sind.

.. raw:: html

    <run></run>

.. code-block:: 

    ls /dev/sp*

Dann erscheinen die folgenden Codes (die Nummer kann abweichen).

.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

Schritt 3: Installieren Sie das Python-Modul SPI-Py.

.. raw:: html

    <run></run>

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::

    Dieser Schritt ist für Python-Benutzer, wenn Sie die Sprache C verwenden, überspringen Sie bitte.
