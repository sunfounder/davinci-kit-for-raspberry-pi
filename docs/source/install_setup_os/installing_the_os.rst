.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

.. _install_os:

Betriebssystem installieren
==================================

**Erforderliche Komponenten**

* Raspberry Pi
* Ein Personal Computer
* Eine Micro-SD-Karte

**Installationsschritte**

#. Besuchen Sie die Raspberry Pi Software-Downloadseite unter `Raspberry Pi Imager <https://www.raspberrypi.org/software/>`_. Wählen Sie die Imager-Version, die mit Ihrem Betriebssystem kompatibel ist. Laden Sie die Datei herunter und öffnen Sie sie, um die Installation zu starten.

    .. image:: img/os_install_imager.png

#. Abhängig von Ihrem Betriebssystem kann während der Installation eine Sicherheitsabfrage erscheinen. Zum Beispiel könnte Windows eine Warnmeldung anzeigen. Wählen Sie in diesem Fall **Weitere Informationen** und dann **Trotzdem ausführen**. Befolgen Sie die Anweisungen auf dem Bildschirm, um die Installation des Raspberry Pi Imager abzuschließen.

    .. image:: img/os_info.png

#. Stecken Sie Ihre SD-Karte in den SD-Karten-Slot Ihres Computers oder Laptops.

#. Starten Sie die Raspberry Pi Imager-Anwendung, indem Sie auf das Symbol klicken oder ``rpi-imager`` in Ihr Terminal eingeben.

    .. image:: img/os_open_imager.png

#. Klicken Sie auf **GERÄT AUSWÄHLEN** und wählen Sie Ihr spezifisches Raspberry Pi-Modell aus der Liste.

    .. image:: img/os_choose_device.png

#. Klicken Sie dann auf **Betriebssystem auswählen** und wählen Sie ein Betriebssystem zur Installation aus.

    .. image:: img/os_choose_os.png

#. Klicken Sie auf **Speicher auswählen** und wählen Sie das entsprechende Speichermedium für die Installation.

    .. note::

        Stellen Sie sicher, dass Sie das richtige Speichermedium auswählen. Um Verwirrung zu vermeiden, trennen Sie alle zusätzlichen Speichermedien, falls mehrere angeschlossen sind.

    .. image:: img/os_choose_sd.png

#. Klicken Sie auf **WEITER** und dann auf **EINSTELLUNGEN BEARBEITEN**, um Ihre OS-Einstellungen anzupassen. Falls Sie einen Monitor für Ihren Raspberry Pi haben, können Sie die nächsten Schritte überspringen und auf „Ja“ klicken, um die Installation zu starten. Weitere Einstellungen können Sie später am Monitor vornehmen.

    .. image:: img/os_enter_setting.png

#. Legen Sie einen **Hostnamen** für Ihren Raspberry Pi fest.

    .. note::

        Der Hostname ist der Netzwerk-Identifikator Ihres Raspberry Pi. Sie können auf Ihren Pi mit ``<hostname>.local`` oder ``<hostname>.lan`` zugreifen.

    .. image:: img/os_set_hostname.png

#. Erstellen Sie einen **Benutzernamen** und ein **Passwort** für das Administratorkonto des Raspberry Pi.

    .. note::

        Das Erstellen eines eindeutigen Benutzernamens und Passworts ist wichtig, um die Sicherheit Ihres Raspberry Pi zu gewährleisten, da dieser kein Standardpasswort besitzt.

    .. image:: img/os_set_username.png

#. Konfigurieren Sie das drahtlose Netzwerk, indem Sie die **SSID** und das **Passwort** Ihres Netzwerks angeben.

    .. note::

        Stellen Sie das ``Wireless LAN Country`` auf den zwei Buchstaben umfassenden `ISO/IEC alpha2 code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements>`_ ein, der Ihrem Standort entspricht.

    .. image:: img/os_set_wifi.png

#. Klicken Sie auf **DIENSTE** und aktivieren Sie **SSH** für einen sicheren, passwortbasierten Fernzugriff. Vergessen Sie nicht, Ihre Einstellungen zu speichern.

    .. image:: img/os_enable_ssh.png

#. Bestätigen Sie Ihre ausgewählten Einstellungen, indem Sie auf **Ja** klicken.

    .. image:: img/os_click_yes.png

#. Falls sich bereits Daten auf der SD-Karte befinden, sichern Sie diese, um Datenverlust zu vermeiden. Falls keine Sicherung notwendig ist, klicken Sie auf **Ja**, um fortzufahren.

    .. image:: img/os_continue.png

#. Der OS-Installationsprozess auf der SD-Karte wird gestartet. Nach Abschluss erscheint ein Bestätigungsdialog.

    .. image:: img/os_finish.png
        :align: center
