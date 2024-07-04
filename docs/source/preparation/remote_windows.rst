.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie tiefer in Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

Windows-Benutzer
================

Wenn Sie Windows-Benutzer sind, können Sie Windows PowerShell verwenden, um sich remote bei Raspberry Pi anzumelden.

#. Drücken Sie die Tastenkombination ``windows`` + ``R`` auf Ihrer Tastatur, um das **Ausführen**-Programm zu öffnen. Geben Sie dann **powershell** in das Eingabefeld ein. 

    .. image:: img/sp221221_135900.png
        :align: center

#. Überprüfen Sie, ob Ihr Raspberry Pi im selben Netzwerk ist, indem Sie ``ping <hostname>.local`` eingeben. 

    .. code-block:: shell

        ping raspberrypi.local

    .. image:: img/sp221221_145225.png
        :width: 550
        :align: center

    * Wenn im Terminal die Meldung ``Ping request could not find host <hostname>.local`` erscheint, ist es möglich, dass der Raspberry Pi keine Verbindung zum Netzwerk hergestellt hat. Bitte überprüfen Sie das Netzwerk.
    * Wenn Sie wirklich nicht ``<hostname>.local`` anpingen können, versuchen Sie :ref:`get_ip` und ``ping <IP-Adresse>`` stattdessen. (z.B. ``ping 192.168.6.116``)
    * Wenn mehrere Meldungen wie "Reply from <IP address>: bytes=32 time<1ms TTL=64" erscheinen, bedeutet dies, dass Ihr Computer auf den Raspberry Pi zugreifen kann.

#. Geben Sie ``ssh <Benutzername>@<Hostname>.local`` (oder ``ssh <Benutzername>@<IP-Adresse>``) ein.

    .. code-block:: shell

        ssh pi@raspberrypi.local

#. Die folgende Nachricht kann erscheinen.

    .. code-block::

        The authenticity of host 'raspberrypi.local (192.168.6.116)' can't be established.
        ECDSA key fingerprint is SHA256:7ggckKZ2EEgS76a557cddfxFNDOBBuzcJsgaqA/igz4.
        Are you sure you want to continue connecting (yes/no/[fingerprint])? 

    Geben Sie \"yes\" ein.

#. Geben Sie das Passwort ein, das Sie zuvor festgelegt haben. (Meins ist ``raspberry``.)

    .. note::
        Wenn Sie das Passwort eingeben, werden die Zeichen aus Sicherheitsgründen nicht angezeigt. Geben Sie einfach das richtige Passwort ein.

#. Jetzt ist der Raspberry Pi verbunden und bereit für den nächsten Schritt.

    .. image:: img/sp221221_140628.png
        :width: 550
        :align: center

Remote-Desktop
--------------

Wenn Sie es vorziehen, nicht das Befehlsfenster zu verwenden, um auf Ihren Raspberry Pi zuzugreifen, können Sie auch die Remote-Desktop-Funktion nutzen, um Dateien auf Ihrem Raspberry Pi einfach über eine GUI zu verwalten.

Hier verwenden wir den `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

**VNC-Dienst aktivieren**

Der VNC-Dienst ist im System installiert. Standardmäßig ist VNC jedoch deaktiviert. Sie müssen es in den Einstellungen aktivieren.

#. Geben Sie den folgenden Befehl ein:

    .. raw:: html

        <run></run>

    .. code-block:: shell 

        sudo raspi-config

#. Wählen Sie **3** **Interfacing Options**, indem Sie die Abwärtspfeiltaste auf Ihrer Tastatur drücken, und dann die **Enter**-Taste drücken.

    .. image:: img/image282.png
        :align: center

#. Wählen Sie dann **P3 VNC**. 

    .. image:: img/image288.png
        :align: center

#. Verwenden Sie die Pfeiltasten auf der Tastatur, um **<Yes>** -> **<OK>** -> **<Finish>** auszuwählen und die Einrichtung abzuschließen.

    .. image:: img/mac_vnc8.png
        :align: center

**Anmeldung bei VNC**

#. Laden Sie den `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ auf Ihren Computer herunter und installieren Sie ihn.

#. Öffnen Sie ihn, sobald die Installation abgeschlossen ist. Geben Sie dann den Hostnamen oder die IP-Adresse ein und drücken Sie Enter.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Nach Eingabe Ihres Raspberry Pi-Namens und -Passworts klicken Sie auf **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Jetzt sehen Sie den Desktop des Raspberry Pi.

    .. image:: img/login1.png
        :align: center
