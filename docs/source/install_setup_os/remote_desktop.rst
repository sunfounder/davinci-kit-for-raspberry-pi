.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

.. _remote_desktop:

Remote-Desktop-Zugriff für Raspberry Pi
==================================================

Für diejenigen, die eine grafische Benutzeroberfläche (GUI) der Befehlszeilenschnittstelle vorziehen, unterstützt der Raspberry Pi eine Remote-Desktop-Funktionalität. Diese Anleitung führt Sie durch die Einrichtung und Verwendung von VNC (Virtual Network Computing) für den Fernzugriff.

Wir empfehlen `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ für diesen Zweck.

**Aktivierung des VNC-Dienstes auf dem Raspberry Pi**

Der VNC-Dienst ist im Raspberry Pi OS vorinstalliert, jedoch standardmäßig deaktiviert. Folgen Sie diesen Schritten, um ihn zu aktivieren:

#. Geben Sie den folgenden Befehl im Terminal des Raspberry Pi ein:

    .. raw:: html

        <run></run>

    .. code-block:: 

        sudo raspi-config

#. Navigieren Sie mit der Abwärtspfeiltaste zu **Interfacing Options** und drücken Sie **Enter**.

    .. image:: img/config_interface.png
        :align: center

#. Wählen Sie **VNC** aus den Optionen.

    .. image:: img/vnc.png
        :align: center

#. Verwenden Sie die Pfeiltasten, um **<Yes>** -> **<OK>** -> **<Finish>** auszuwählen und die Aktivierung des VNC-Dienstes abzuschließen.

    .. image:: img/vnc_yes.png
        :align: center

**Anmeldung über VNC Viewer**

#. Laden Sie den `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ auf Ihrem Computer herunter und installieren Sie ihn.

#. Starten Sie nach der Installation den VNC Viewer. Geben Sie den Hostnamen oder die IP-Adresse Ihres Raspberry Pi ein und drücken Sie Enter.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Wenn Sie dazu aufgefordert werden, geben Sie den Benutzernamen und das Passwort Ihres Raspberry Pi ein und klicken Sie auf **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Sie haben nun Zugriff auf die Desktop-Oberfläche Ihres Raspberry Pi.

    .. image:: img/bullseye_desktop.png
        :align: center
