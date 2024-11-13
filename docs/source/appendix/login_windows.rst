.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

.. _login_windows:

PuTTY
=========================

Falls Sie Windows-Benutzer sind, können Sie einige SSH-Anwendungen verwenden. Hier empfehlen wir `PuTTY <https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html>`_.

**Schritt 1**

Laden Sie PuTTY herunter.

**Schritt 2**

Öffnen Sie PuTTY und klicken Sie auf **Session** in der linken baumartigen Struktur. Geben Sie die IP-Adresse des Raspberry Pi in das Textfeld unter **Host Name (or IP address)** ein und **22** unter **Port** (standardmäßig ist es 22).

.. image:: img/image25.png
    :align: center

**Schritt 3**

Klicken Sie auf **Open**. Beachten Sie, dass bei der ersten Anmeldung am Raspberry Pi mit der IP-Adresse eine Sicherheitsmeldung erscheint. Klicken Sie einfach auf **Yes**.

**Schritt 4**

Wenn das PuTTY-Fenster „**login as:**“ anzeigt, geben Sie „**pi**“ (den Benutzernamen des Raspberry Pi) ein und **Passwort**: „raspberry“ (das Standardpasswort, falls Sie es nicht geändert haben).

.. note::

    Wenn Sie das Passwort eingeben, werden die Zeichen im Fenster nicht angezeigt, was normal ist. Wichtig ist, dass Sie das richtige Passwort eingeben.
    
    Wenn neben PuTTY „inaktiv“ erscheint, bedeutet dies, dass die Verbindung unterbrochen wurde und neu hergestellt werden muss.
    
.. image:: img/image26.png
    :align: center

**Schritt 5**

Nun ist der Raspberry Pi verbunden, und Sie können die nächsten Schritte durchführen.
