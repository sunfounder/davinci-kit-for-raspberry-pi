.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

Richten Sie Ihren Raspberry Pi ein
========================================


Wenn Sie einen Bildschirm haben
-------------------------------------


Wenn Sie einen Bildschirm haben, können Sie den Raspberry Pi problemlos bedienen.

**Erforderliche Komponenten**

================== =========================
Raspberry Pi       1 \* Netzteil
1 * Micro SD Karte 1 \* Bildschirm Netzteil
1 \* HDMI Kabel    1 \* Bildschirm
1 \* Maus          1 \* Tastatur
================== =========================

1. Legen Sie die mit Raspberry Pi OS eingerichtete SD-Karte in den Micro-SD-Kartensteckplatz an der Unterseite Ihres Raspberry Pi ein.

#. Stecken Sie die Maus und Tastatur ein.

#. Schließen Sie den Bildschirm an den HDMI-Anschluss von Raspberry Pi an und stellen Sie sicher, dass Ihr Bildschirm an eine Wand Steckdose angeschlossen und eingeschaltet ist.

    .. note::

        note: Wenn Sie einen Raspberry Pi 4 verwenden, müssen Sie den Bildschirm an den HDMI0 anschließen (der dem Stromanschluss am nächsten liegt).

#. Verwenden Sie das Netzteil und versorgen den Raspberry Pi mit Strom. Nach einigen Sekunden wird der Raspberry Pi OS-Bildschirm angezeigt.

    .. image:: media/image20.png
        :align: center

Wenn Sie keinen Bildschirm haben
------------------------------------


Wenn Sie keine Anzeige haben, können Sie sich aus der Ferne beim Raspberry Pi anmelden. Zuvor müssen Sie jedoch die IP-Addresse des Raspberry Pi abrufen.

Die IP-Adresse bekommen
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Nachdem der Raspberry Pi mit WIFI verbunden ist, müssen wir die IP-Adresse davon erhalten. 
Es gibt viele Möglichkeiten, die IP-Adresse zu ermitteln, und zwei davon sind wie folgt aufgeführt.

**1.  Überprüfung über den Router**

Wenn Sie berechtigt sind, sich beim Router anzumelden (z. B. in einem Heimnetzwerk), können Sie die Raspberry Pi zugewiesenen Adressen auf der Administrationsoberfläche des Routers überprüfen.

Der Default Hostname des Raspberry Pi-Betriebssystems ist raspberrypi, und bitte Sie ihn finden. (Wenn Sie das ArchLinuxARM-System verwenden, suchen Sie bitte alarmpi.)

**2. Scannen von Netzwerksegmenten**

Sie können auch Netzwerk Scannen verwenden, um die IP-Adresse von Raspberry Pi zu ermitteln. Sie können die Software anwenden, den **Advanced IP scanner** usw.

Scannen Sie den eingestellten IP-Bereich, und alle angeschlossenen Gerätsnamen wird angezeigt. 
Ebenso, der Default Hostname des Raspberry Pi-Betriebssystems ist *raspberrypi* , wenn Sie ihn nicht geändert haben.

Verwenden Sie die SSH-Fernbedienung
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Wir können die Bash Shell von Raspberry Pi öffnen, mit Anwendung von SSH. 
Bash ist die Default Standard Shell von Linux. Die Shell selbst ist ein in C geschriebenes Programm und stellt die Brücke zwischen den Kunden und Unix / Linux dar. 
Darüber hinaus kann es helfen, den größten Teil der erforderlichen Arbeit zu erledigen.

**Für Linux- oder Mac OS X-Benutzer**

Schritt 1

Gehen Sie zu **Applications**->\ **Utilities**, suchen Sie das **Terminal**, und öffnen Sie es.

.. image:: media/image21.png
    :align: center

Schritt 2

Geben Sie ``ssh pi@ip_address`` ein. ``Pi`` ist Ihr Benutzername und ``ip_address`` ist Ihre IP-Adresse. Z. B. :

.. code-block::

    ssh pi@192.168.18.197

Schritt 3

Geben Sie ``yes`` ein.

.. image:: media/image22.png
    :align: center

Schritt 4

Geben Sie den Password ein und das Default Passwort lautet **raspberry**.

.. image:: media/image23.png
    :align: center

Schritt 5

Wir verbinden jetzt den Raspberry Pi und sind bereit, mit dem nächsten Schritt fortzufahren.

.. image:: media/image24.png
    :align: center

.. note::
    Wenn Sie das Kennwort eingeben, werden die Zeichen im Fenster nicht entsprechend angezeigt, was normal ist. Sie brauchen lediglich das richtige Passwort einzugeben.

**Für Windows-Benutzer**

Wenn Sie ein Windows-Benutzer sind, können Sie SSH mit der Anwendung einiger Software verwenden. Hier empfehlen wir **PuTTY** .

Schritt** 1

Laden** Sie PuTTY herunter.

**Schritt 2**

Öffnen Sie PuTTY und klicken Sie auf **Session** in der linken baumähnlichen Struktur. 
Geben Sie die IP-Adresse des RPi in das Textfeld unter **Host Name (or IP address)** und **22** unter **Port** ein (Default ist 22).

.. image:: media/image25.png
    :align: center

**Schritt 3**

Klicken Sie auf **Open**. Beachten Sie bitte, beim ersten Anmelden am Raspberry Pi mit der IP-Adresse eine Sicherheitserinnerung wird anzeigen. 
Klicken Sie einfach auf **Yes**.


**Schritt 4**

Wenn das PuTTY-Fenster **login as:** auffordert, geben Sie ``pi`` (den Benutzernamen des RPi) und das **password** ein: ``raspberry`` (die Standardeinstellung, wenn Sie sie nicht geändert haben).

.. note::

    Wenn Sie das Kennwort eingeben, werden die Zeichen im Fenster nicht entsprechend angezeigt, was normal ist. Sie brauchen lediglich das richtige Passwort einzugeben.

    Wenn neben PuTTY inaktiv angezeigt wird, bedeutet dies, dass die Verbindung unterbrochen wurde und erneut verbunden werden muss.
    
.. image:: media/image26.png
    :align: center

**Schritt 5**

Hier wird der Raspberry Pi angeschlossen und es ist Zeit, die nächsten Schritte durchzuführen.


.. note::

    Wenn Sie mit der Verwendung des Befehlsfensters zur Steuerung des Raspberry Pi nicht zufrieden sind, können Sie auch die Remote-Desktop-Funktion verwenden, die uns helfen kann, die Dateien im Raspberry Pi einfach zu verwalten.

    Einzelheiten dazu finden Sie unter :ref:`appendix_remote_desktop`.
