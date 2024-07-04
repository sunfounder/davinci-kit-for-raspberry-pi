.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie tiefer in Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

Mac OS X Benutzer
=================

Für Mac-Benutzer ist der Zugriff auf den Raspberry Pi-Desktop direkt über VNC bequemer als über die Befehlszeile. Sie können über den Finder darauf zugreifen, indem Sie nach Aktivierung von VNC auf der Raspberry Pi-Seite das festgelegte Konto-Passwort eingeben.

Beachten Sie, dass diese Methode die Kommunikation zwischen dem Mac und dem Raspberry Pi nicht verschlüsselt. 
Die Kommunikation erfolgt innerhalb Ihres Heim- oder Unternehmensnetzwerks, sodass es auch ungeschützt kein Problem darstellt. 
Wenn Sie jedoch Bedenken haben, können Sie eine VNC-Anwendung wie `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ installieren.

Alternativ wäre es praktisch, wenn Sie einen temporären Monitor (Fernseher), eine Maus und eine Tastatur verwenden könnten, um den Raspberry Pi-Desktop direkt zu öffnen und VNC einzurichten. 
Falls nicht, ist das auch nicht schlimm, Sie können den Raspberry Pi über den SSH-Befehl öffnen und dann über den Befehl VNC einrichten.

* :ref:`have_temp_monitor`
* :ref:`no_temp_monitor`

.. _have_temp_monitor:

Temporären Monitor (oder TV) vorhanden?
---------------------------------------

#. Schließen Sie einen Monitor (oder TV), eine Maus und eine Tastatur an den Raspberry Pi an und schalten Sie ihn ein. Wählen Sie das Menü entsprechend den Zahlen in der Abbildung aus.

    .. image:: img/mac_vnc1.png
        :align: center

#. Der folgende Bildschirm wird angezeigt. Stellen Sie **VNC** auf **Enabled** auf der Registerkarte **Interfaces** und klicken Sie auf **OK**.

    .. image:: img/mac_vnc2.png
        :align: center

#. Ein VNC-Symbol erscheint oben rechts auf dem Bildschirm und der VNC-Server startet.

    .. image:: img/login1.png
        :align: center

#. Öffnen Sie das VNC-Server-Fenster, indem Sie auf das **VNC**-Symbol klicken, dann auf die Schaltfläche **Menu** in der oberen rechten Ecke und wählen Sie **Options**.

    .. image:: img/mac_vnc4.png
        :align: center

#. Ihnen wird der folgende Bildschirm angezeigt, auf dem Sie die Optionen ändern können.

    .. image:: img/mac_vnc5.png
        :align: center

    Stellen Sie **Encryption** auf **Prefer off** und **Authentication** auf **VNC password**.

#. Wenn Sie auf die Schaltfläche **OK** klicken, wird der Passwort-Eingabebildschirm angezeigt. Sie können das gleiche Passwort wie das Raspberry Pi-Passwort oder ein anderes Passwort verwenden, also geben Sie es ein und klicken Sie auf **OK**.

    .. image:: img/mac_vnc16.png
        :align: center

    Sie sind jetzt bereit, sich von Ihrem Mac aus zu verbinden. Es ist in Ordnung, den Monitor zu trennen.

**Ab hier erfolgt die Bedienung auf der Mac-Seite.**

#. Wählen Sie nun **Mit Server verbinden** aus dem Finder-Menü, das Sie durch Rechtsklicken öffnen können.

    .. image:: img/mac_vnc10.png
        :align: center

#. Geben Sie ``vnc://<Benutzername>@<Hostname>.local`` (oder ``vnc://<Benutzername>@<IP-Adresse>``) ein. Nach der Eingabe klicken Sie auf **Verbinden**.

    .. image:: img/mac_vnc11.png
        :align: center

#. Sie werden nach einem Passwort gefragt, also geben Sie es bitte ein.

    .. image:: img/mac_vnc12.png
        :align: center

#. Der Desktop des Raspberry Pi wird angezeigt und Sie können ihn vom Mac aus bedienen.

    .. image:: img/mac_vnc13.png
        :align: center

.. _no_temp_monitor:

Kein temporärer Monitor (oder TV) vorhanden?
---------------------------------------------

* Sie können den SSH-Befehl verwenden, um die Bash-Shell des Raspberry Pi zu öffnen.
* Bash ist die standardmäßige Standardshell für Linux.
* Die Shell selbst ist ein Befehl (Anweisung), wenn der Benutzer Unix/Linux verwendet.
* Die meisten Aufgaben können über die Shell erledigt werden.
* Nachdem Sie die Raspberry Pi-Seite eingerichtet haben, können Sie über den **Finder** vom Mac aus auf den Desktop des Raspberry Pi zugreifen.

#. Geben Sie ``ssh <Benutzername>@<Hostname>.local`` ein, um eine Verbindung zum Raspberry Pi herzustellen.

    .. code-block:: shell

        ssh pi@raspberrypi.local

    .. image:: img/mac_vnc14.png

#. Die folgende Nachricht wird nur beim ersten Login angezeigt, also geben Sie **yes** ein.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Geben Sie das Passwort für den Raspberry Pi ein. Das Passwort wird aus Sicherheitsgründen nicht angezeigt, also achten Sie darauf, keinen Fehler zu machen.

    .. code-block::

        pi@raspberrypi.local's password: 
        Linux raspberrypi 5.15.61-v8+ #1579 SMP PREEMPT Fri Aug 26 11:16:44 BST 2022 aarch64

        The programs included with the Debian GNU/Linux system are free software;
        the exact distribution terms for each program are described in the
        individual files in /usr/share/doc/*/copyright.

        Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
        permitted by applicable law.
        Last login: Thu Sep 22 12:18:22 2022
        pi@raspberrypi:~ $

#. Richten Sie Ihren Raspberry Pi so ein, dass Sie sich nach erfolgreichem Login über VNC von Ihrem Mac aus einloggen können. Der erste Schritt besteht darin, Ihr Betriebssystem mit den folgenden Befehlen zu aktualisieren.

    .. code-block:: shell

        sudo apt update
        sudo apt upgrade

    ``Do you want to continue? [Y/n]``, geben Sie ``Y`` ein, wenn Sie dazu aufgefordert werden.

    Das Update kann einige Zeit in Anspruch nehmen. (Es hängt von der Anzahl der zu diesem Zeitpunkt verfügbaren Updates ab.)

#. Geben Sie den folgenden Befehl ein, um den **VNC-Server** zu aktivieren.

    .. code-block:: shell

        sudo raspi-config

#. Der folgende Bildschirm wird angezeigt. Wählen Sie **3 Interface Options** mit den Pfeiltasten auf der Tastatur aus und drücken Sie die **Enter**-Taste.

    .. image:: img/image282.png
        :align: center

#. Wählen Sie dann **P3 VNC**.

    .. image:: img/image288.png
        :align: center

#. Verwenden Sie die Pfeiltasten auf der Tastatur, um **<Yes>** -> **<OK>** -> **<Finish>** auszuwählen, um die Einrichtung abzuschließen.

    .. image:: img/mac_vnc8.png
        :align: center

#. Jetzt, da der VNC-Server gestartet ist, ändern wir die Einstellungen für die Verbindung vom Mac aus.

    Um Parameter für alle Programme für alle Benutzerkonten auf dem Computer festzulegen, erstellen Sie ``/etc/vnc/config.d/common.custom``.

    .. code-block:: shell

        sudo nano /etc/vnc/config.d/common.custom

    Nachdem Sie ``Authentication=VncAuth`` eingegeben haben, drücken Sie ``Ctrl+X`` -> ``Y`` -> ``Enter``, um zu speichern und zu beenden.

    .. image:: img/mac_vnc15.png
        :align: center

#. Zusätzlich legen Sie ein Passwort für die Anmeldung über VNC vom Mac fest. Sie können das gleiche Passwort wie das Raspberry Pi-Passwort oder ein anderes Passwort verwenden.

    .. code-block:: shell

        sudo vncpasswd -service

#. Nachdem die Einrichtung abgeschlossen ist, starten Sie den Raspberry Pi neu, um die Änderungen anzuwenden.

    .. code-block:: shell

        sudo reboot

#. Wählen Sie nun **Mit Server verbinden** aus dem **Finder**-Menü, das Sie durch Rechtsklicken öffnen können.

    .. image:: img/mac_vnc10.png
        :align: center

#. Geben Sie ``vnc://<Benutzername>@<Hostname>.local`` (oder ``vnc://<Benutzername>@<IP-Adresse>``) ein. Nach der Eingabe klicken Sie auf **Verbinden**.

    .. image:: img/mac_vnc11.png
        :align: center

#. Sie werden nach einem Passwort gefragt, also geben Sie es bitte ein.

    .. image:: img/mac_vnc12.png
        :align: center

#. Der Desktop des Raspberry Pi wird angezeigt und Sie können ihn vom Mac aus bedienen.

    .. image:: img/mac_vnc13.png
        :align: center
