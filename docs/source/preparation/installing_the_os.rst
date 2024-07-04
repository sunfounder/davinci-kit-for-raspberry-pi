.. note::

    Hallo, willkommen in der SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasten-Community auf Facebook! Tauchen Sie tiefer in Raspberry Pi, Arduino und ESP32 mit anderen Enthusiasten ein.

    **Warum beitreten?**

    - **Expertenunterstützung**: Lösen Sie nach dem Kauf auftretende Probleme und technische Herausforderungen mit Hilfe unserer Community und unseres Teams.
    - **Lernen & Teilen**: Tauschen Sie Tipps und Tutorials aus, um Ihre Fähigkeiten zu verbessern.
    - **Exklusive Vorschauen**: Erhalten Sie frühzeitigen Zugang zu neuen Produktankündigungen und exklusiven Einblicken.
    - **Spezielle Rabatte**: Genießen Sie exklusive Rabatte auf unsere neuesten Produkte.
    - **Festliche Aktionen und Gewinnspiele**: Nehmen Sie an Gewinnspielen und festlichen Aktionen teil.

    👉 Bereit, mit uns zu entdecken und zu kreieren? Klicken Sie auf [|link_sf_facebook|] und treten Sie noch heute bei!

.. _install_os:

Installation des Betriebssystems (Allgemein)
==============================================

**Schritt 1**

Raspberry Pi hat ein grafisches SD-Karten-Schreibwerkzeug entwickelt, das unter Mac OS, Ubuntu 18.04 und Windows funktioniert. Es ist die einfachste Option für die meisten Benutzer, da es das Image herunterlädt und automatisch auf die SD-Karte installiert.

Besuchen Sie die Download-Seite: https://www.raspberrypi.org/software/. Klicken Sie auf den Link für den **Raspberry Pi Imager**, der zu Ihrem Betriebssystem passt. Wenn der Download abgeschlossen ist, klicken Sie darauf, um das Installationsprogramm zu starten.

.. image:: img/image11.png
    :align: center


**Schritt 2**

Wenn Sie das Installationsprogramm starten, kann Ihr Betriebssystem versuchen, Sie daran zu hindern, es auszuführen. Zum Beispiel erhalte ich unter Windows die folgende Meldung:

Wenn dies erscheint, klicken Sie auf **Weitere Informationen** und dann auf **Trotzdem ausführen**, und folgen Sie den Anweisungen, um den Raspberry Pi Imager zu installieren.

.. image:: img/image12.png
    :align: center

**Schritt 3**

Legen Sie Ihre SD-Karte in den SD-Kartensteckplatz Ihres Computers oder Laptops ein.

**Schritt 4**

Wählen Sie im Raspberry Pi Imager das Betriebssystem aus, das Sie installieren möchten, sowie die SD-Karte, auf der Sie es installieren möchten.

.. image:: img/image13.png
    :align: center

.. note:: 

    * Sie müssen beim ersten Mal mit dem Internet verbunden sein.
    * Das Betriebssystem wird dann für zukünftige Offline-Verwendungen gespeichert (``lastdownload.cache``, ``C:/Users/yourname/AppData/Local/Raspberry Pi/Imager/cache``). Das nächste Mal, wenn Sie die Software öffnen, wird angezeigt: "Released: date, cached on your computer".

.. Laden Sie das `raspios_armhf-2020-05-28 <https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-05-28/2021-05-07-raspios-buster-armhf.zip>`_ Image herunter und wählen Sie es im Raspberry Pi Imager aus.

.. .. image:: img/otherOS.png
..     :align: center

.. .. warning::
..     Raspberry Pi OS hat nach der Version 2021-05-28 wesentliche Änderungen erfahren, die dazu führen können, dass einige Funktionen nicht verfügbar sind. Bitte verwenden Sie vorerst nicht die neueste Version.


.. .. mark


**Schritt 5**

Wählen Sie die SD-Karte aus, die Sie verwenden.

.. image:: img/image14.png
    :align: center

**Schritt 6**

Drücken Sie **Ctrl+Shift+X** oder klicken Sie auf das **Einstellungen**-Symbol, um die Seite **Erweiterte Optionen** zu öffnen, um SSH zu aktivieren und Benutzername und Passwort festzulegen.

    .. note::
        * Da der Raspberry Pi jetzt kein Standardpasswort mehr hat, müssen Sie es selbst festlegen. Auch der Benutzername kann geändert werden.
        * Für den Fernzugriff müssen Sie SSH manuell aktivieren.


.. image:: img/image15.png
    :align: center

Scrollen Sie dann nach unten, um die WLAN-Konfiguration abzuschließen, und klicken Sie auf **SPEICHERN**.

.. note::

    Das ``wifi country`` sollte auf den zweibuchstabigen `ISO/IEC alpha2 Code <https://de.wikipedia.org/wiki/ISO_3166-1-Kodierliste>`_ für das Land eingestellt werden, in dem Sie Ihren Raspberry Pi verwenden.

.. image:: img/image16.png
    :align: center

**Schritt 7**

Klicken Sie auf die Schaltfläche **WRITE**.

.. image:: img/image17.png
    :align: center

**Schritt 8**

Wenn Ihre SD-Karte derzeit Dateien enthält, sollten Sie diese Dateien möglicherweise zuerst sichern, um zu verhindern, dass sie dauerhaft verloren gehen. Wenn keine Dateien gesichert werden müssen, klicken Sie auf **Ja**.

.. image:: img/image18.png
    :align: center

**Schritt 9**

Nach einer gewissen Wartezeit erscheint das folgende Fenster, das den Abschluss des Schreibvorgangs darstellt.

.. image:: img/image19.png
    :align: center
