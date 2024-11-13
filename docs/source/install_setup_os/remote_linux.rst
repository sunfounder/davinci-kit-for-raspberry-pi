.. note::

    Hallo und willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Gemeinschaft auf Facebook! Tauchen Sie tiefer ein in die Welt von Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie Nachverkaufsprobleme und technische Herausforderungen mit Hilfe unserer Gemeinschaft und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Anleitungen aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezialrabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und Feiertagsaktionen teil.

    👉 Sind Sie bereit, mit uns zu erkunden und zu erschaffen? Klicken Sie auf [|link_sf_facebook|] und treten Sie heute bei!

.. _remote_linux:

Für Linux/Unix-Benutzer
==========================

#. Öffnen Sie das **Terminal** auf Ihrem Linux/Unix-System.

#. Stellen Sie sicher, dass Ihr Raspberry Pi mit demselben Netzwerk verbunden ist. Überprüfen Sie dies, indem Sie ``ping <hostname>.local`` eingeben. Zum Beispiel:

    .. code-block::

        ping raspberrypi.local

    Wenn der Raspberry Pi mit dem Netzwerk verbunden ist, sollten Sie dessen IP-Adresse sehen.

    * Falls das Terminal eine Meldung wie ``Ping-Anfrage konnte Host pi.local nicht finden. Bitte überprüfen Sie den Namen und versuchen Sie es erneut.`` anzeigt, überprüfen Sie den eingegebenen Hostnamen.
    * Falls die IP-Adresse nicht abrufbar ist, überprüfen Sie die Netzwerk- oder WiFi-Einstellungen auf dem Raspberry Pi.

#. Starten Sie eine SSH-Verbindung, indem Sie ``ssh <benutzername>@<hostname>.local`` oder ``ssh <benutzername>@<IP-Adresse>`` eingeben. Zum Beispiel:

    .. code-block::

        ssh pi@raspberrypi.local

#. Bei Ihrem ersten Login erscheint eine Sicherheitsmeldung. Geben Sie ``yes`` ein, um fortzufahren.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Geben Sie das zuvor festgelegte Passwort ein. Beachten Sie, dass das Passwort aus Sicherheitsgründen beim Eintippen nicht sichtbar ist.

    .. note::
        Es ist normal, dass das Passwort beim Eingeben nicht angezeigt wird. Stellen Sie einfach sicher, dass Sie das richtige Passwort eingeben.

#. Nach erfolgreicher Anmeldung ist Ihr Raspberry Pi nun verbunden und bereit für den nächsten Schritt.
