.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

.. _remote_windows:

Für Windows-Benutzer
=======================

Für Benutzer von Windows 10 oder höher kann die Remote-Anmeldung auf einem Raspberry Pi durch die folgenden Schritte erfolgen:

#. Suchen Sie im Windows-Suchfeld nach ``powershell``. Klicken Sie mit der rechten Maustaste auf ``Windows PowerShell`` und wählen Sie ``Als Administrator ausführen``.

    .. image:: img/powershell_ssh.png
        :align: center

#. Ermitteln Sie die IP-Adresse Ihres Raspberry Pi, indem Sie ``ping -4 <hostname>.local`` in PowerShell eingeben.

    .. code-block::

        ping -4 raspberrypi.local

    .. image:: img/sp221221_145225.png
        :width: 550
        :align: center

    Die IP-Adresse des Raspberry Pi wird angezeigt, sobald er mit dem Netzwerk verbunden ist.

    * Wenn das Terminal anzeigt ``Ping-Anforderung konnte Host pi.local nicht finden. Überprüfen Sie den Namen und versuchen Sie es erneut.``, vergewissern Sie sich, dass der eingegebene Hostname korrekt ist.
    * Falls die IP-Adresse weiterhin nicht abrufbar ist, überprüfen Sie die Netzwerkeinstellungen oder WiFi-Einstellungen auf dem Raspberry Pi.

#. Sobald die IP-Adresse bestätigt ist, melden Sie sich auf Ihrem Raspberry Pi mit ``ssh <benutzername>@<hostname>.local`` oder ``ssh <benutzername>@<IP-Adresse>`` an.

    .. code-block::

        ssh pi@raspberrypi.local

    .. warning::

        Wenn ein Fehler auftritt, der besagt ``Der Begriff 'ssh' ist nicht als Name eines Cmdlet... erkannt.``, verfügt Ihr System möglicherweise nicht über vorinstallierte SSH-Tools. In diesem Fall müssen Sie OpenSSH manuell installieren, wie unter :ref:`openssh_powershell` beschrieben, oder ein Drittanbieter-Tool gemäß :ref:`login_windows` verwenden.

#. Bei Ihrer ersten Anmeldung erscheint eine Sicherheitsmeldung. Geben Sie ``yes`` ein, um fortzufahren.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Geben Sie das zuvor festgelegte Passwort ein. Beachten Sie, dass die Passwortzeichen aus Sicherheitsgründen beim Eingeben nicht angezeigt werden.

    .. note::
        Das Fehlen sichtbarer Zeichen beim Eingeben des Passworts ist normal. Stellen Sie sicher, dass Sie das richtige Passwort eingeben.

#. Nach erfolgreicher Verbindung ist Ihr Raspberry Pi für Fernzugriffe bereit.

    .. image:: img/sp221221_140628.png
        :width: 550
        :align: center
