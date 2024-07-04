.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie tiefer in Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

Bibliotheken
==============

Zwei wichtige Bibliotheken werden bei der Programmierung mit dem Raspberry Pi verwendet: wiringPi und RPi.GPIO. Diese werden standardmäßig mit dem Raspberry Pi OS installiert, sodass Sie sie direkt verwenden können.

RPi.GPIO
--------

Wenn Sie Python-Benutzer sind, können Sie GPIOs mit der von RPi.GPIO bereitgestellten API programmieren.

RPi.GPIO ist ein Modul zur Steuerung der GPIO-Kanäle des Raspberry Pi. Dieses Paket stellt eine Klasse zur Verfügung, um die GPIOs auf einem Raspberry Pi zu steuern. Für Beispiele und Dokumentationen besuchen Sie: http://sourceforge.net/p/raspberry-gpio-python/wiki/Home/.

Um zu testen, ob RPi.GPIO installiert ist, geben Sie in Python ein:

.. raw:: html

    <run></run>

.. code-block:: 

    python

.. image:: img/image27.png

Geben Sie in der Python-CLI "import RPi.GPIO" ein. Wenn keine Fehlermeldung erscheint, bedeutet dies, dass RPi.GPIO installiert ist.

.. raw:: html

    <run></run>

.. code-block::

    import RPi.GPIO

.. image:: img/image28.png

Um die Python-CLI zu beenden, geben Sie ein:

.. raw:: html

    <run></run>

.. code-block:: 

    exit()

.. image:: img/image29.png

.. _install_wiringpi:

Installation und Überprüfung von WiringPi
-----------------------------------------

``wiringPi`` ist eine C-Sprachbibliothek für GPIO, die auf dem Raspberry Pi verwendet wird. Sie entspricht der GUN Lv3. Die Funktionen in wiringPi sind denen im wiring-System von Arduino ähnlich. Dadurch können Benutzer, die mit Arduino vertraut sind, wiringPi leichter verwenden.

``wiringPi`` umfasst viele GPIO-Befehle, die es ermöglichen, alle Arten von Schnittstellen auf dem Raspberry Pi zu steuern.

Führen Sie bitte den folgenden Befehl aus, um die ``wiringPi``-Bibliothek zu installieren.

.. raw:: html

   <run></run>

.. code-block::

    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi 
    ./build

Sie können testen, ob die wiringPi-Bibliothek erfolgreich installiert wurde, indem Sie den folgenden Befehl ausführen.

.. raw:: html

    <run></run>

.. code-block::

    gpio -v

.. image:: img/image30.png

Überprüfen Sie die GPIOs mit dem folgenden Befehl:

.. raw:: html

    <run></run>

.. code-block:: 

    gpio readall

.. image:: img/image31.png

Weitere Details zu wiringPi finden Sie unter `WiringPi <https://github.com/WiringPi/WiringPi>`_.
