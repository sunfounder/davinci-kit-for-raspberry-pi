Andere Sprache (für Pi 5)
==============================
Die Veröffentlichung des Raspberry Pi 5 hat uns ein leistungsfähigeres Modell gebracht, aber sie hat auch einige Änderungen eingeführt, insbesondere bei den GPIOs.

Obwohl es seine standardmäßige 40-Pin-Schnittstelle beibehält, hat sich die Funktionalität aufgrund seiner Verbindung mit dem neu integrierten RP1-Southbridge-Chip verschoben. Dieser benutzerdefinierte RP1-Chip kümmert sich nun um die Peripheriegeräte auf dem Pi 5 und hat verschiedene Kompatibilitätsbedenken zur Folge.

C-Sprache
---------------

Die Implementierung in C-Sprache stützt sich auf die wiringPi-Bibliothek. Jedoch ist die wiringPi-Community-Bibliothek nun archiviert und erhält keine Updates mehr, was sie für Projekte mit dem Raspberry Pi 5 ungeeignet macht. Für weitere Informationen siehe: https://github.com/WiringPi/WiringPi

.. image:: media/pi5_c_language.png

Processing
-------------
Beim Einsatz von Processing 4 auf dem Raspberry Pi 5 stoßen GPIO-Programmierungen auf Herausforderungen. Fehler wie "Invalid argument" und "GPIO pin 17 seems to be unavailable on your platform" treten während der Ausführung von GPIO-bezogenem Code auf (wie im beigefügten Bild dargestellt). Für weitere Details besuchen Sie: https://github.com/benfry/processing4/issues/807

.. image:: media/pi5_processing.png

Node.js
--------------
Node.js nutzt die pigpio-Bibliothek, die bislang den Raspberry Pi 5 nicht unterstützt. Für mehr Einblicke besuchen Sie: https://github.com/joan2937/pigpio/issues/589

.. image:: media/pi5_nodejs.png
    :width: 700

Scratch
--------------

Auf einem 64-Bit-System stößt der Import der Raspberry Pi GPIO-Bibliothek auf Probleme, was zu Unresponsiveness führt. Für weitere Informationen besuchen Sie: https://github.com/raspberrypi/bookworm-feedback/issues/91