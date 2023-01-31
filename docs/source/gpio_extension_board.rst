GPIO-Erweiterungskarte
======================

Vor dem Erlernen der Befehle, müssen Sie zunächst mehr über die Pins von Raspberry Pi wissen, der für die nachfolgende Studie wichtige Rolle spielt.

Wir können die Pins Raspberry Pi leicht über das GPIO Erweiterungskarte zum Steckbrett führen, um GPIO-Schäden aus häufiges Ein- oder Ausstecken zu vermeiden. Dies ist unser 40-pin GPIO-Erweiterungskarte und GPIO-Kabel für Raspberry Pi Modell B +, 2 Modell B und 3, 4 Modell B.

.. image:: media/image32.png
    :align: center

**Pin Number**

Die Pins von Raspberry Pi können auf drei Arten benannt werden: WiringPi, BCM und Board.

Unter diesen Benennungsmethoden verwendet die 40-pin GPIO-Erweiterungskarte die Benennungsmethode BCM. Für einige spezielle Pins wie den I2C-Port und den SPI-Port verwenden sie jedoch den Namen, der mit ihnen geliefert wird.

Die folgende Tabelle zeigt die Benennungsmethoden von WiringPi, Karte und den systeminternen Name jedes Pins auf der GPIO-Erweiterungskarte. Beispielsweise für GPIO17 die Karte ist Benennungsmethode 11, die wiringPi-Benennungsmethode 0 und die intrinsische Benennungsmethode GPIO0.

.. note::

    1. In der Sprache C wird die Benennungsmethode WiringPi verwendet.

    2. In Python Language werden Karte und BCM als Benennungsmethoden verwendet, und die Funktion ``GPIO.setmode()`` wird verwendet, um sie einzustellen.

.. image:: media/gpio_board.png