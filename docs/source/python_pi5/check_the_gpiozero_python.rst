.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

Überprüfen Sie ``GPIO Zero``
=================================

Wenn Sie ein Raspberry Pi 5 Python-Nutzer sind, können Sie GPIOs mit der von
``GPIO Zero`` bereitgestellten API programmieren.

``GPIO Zero`` ist ein Modul zur Steuerung der GPIO-Pins des Raspberry Pi. Dieses Paket bietet eine Reihe benutzerfreundlicher Klassen und Funktionen zur Steuerung der GPIOs auf einem Raspberry Pi. Für Beispiele und Dokumentationen besuchen Sie: https://gpiozero.readthedocs.io/en/latest/.

Um zu testen, ob GPIO Zero installiert ist, geben Sie in Python ein:

.. raw:: html

   <run></run>

.. code-block::

    python

.. image:: ../python_pi5/img/zero_01.png
    :width: 100%


Im Python-CLI, geben Sie ``import gpiozero`` ein. Wenn keine Fehlermeldung erscheint, bedeutet dies,
dass GPIO Zero installiert ist.

.. raw:: html

   <run></run>

.. code-block::

    import gpiozero

.. image:: ../python_pi5/img/zero_02.png
    :width: 100%


Um die Python-CLI zu verlassen, tippen Sie:

.. raw:: html

   <run></run>

.. code-block::

    exit()

.. image:: ../python_pi5/img/zero_03.png
    :width: 100%

