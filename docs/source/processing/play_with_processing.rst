Spielen Sie mit der Processing
====================================

Was ist Processing?
---------------------------

Processing ist eine einfache Programmierumgebung, die entwickelt wurde, um die Entwicklung visuell orientierter Anwendungen mit Schwerpunkt auf Animation zu erleichtern und Benutzern durch Interaktion sofortiges Feedback zu geben. Die Entwickler wollten ein Mittel, um Ideen im Code zu „skizzieren“. Da sich seine Fähigkeiten in den letzten zehn Jahren erweitert haben, wird Processing neben seiner Skizzierfunktion auch für anspruchsvollere Arbeiten auf Produktionsebene eingesetzt. Ursprünglich als domänenspezifische Erweiterung für Java für Künstler und Designer entwickelt, hat sich Processing zu einem ausgewachsenen Design- und Prototyping-Tool entwickelt, das für groß angelegte Installationsarbeiten, Motion Graphics und komplexe Datenvisualisierungen verwendet wird.

Processing basiert auf Java, aber da die Programmelemente in Processing recht einfach sind, können Sie es auch ohne Java-Kenntnisse erlernen. Wenn Sie mit Java vertraut sind, vergessen Sie am besten, dass Processing für eine Weile etwas mit Java zu tun hat, bis Sie sich mit der Funktionsweise der API vertraut gemacht haben.

Dieser Text stammt aus dem Tutorial `Processing Overview <https://processing.org/tutorials/overview/>`_.

Installieren Sie die Processing
---------------------------------------------

.. note:: 

    Bevor Sie Processing verwenden können, 
    müssen Sie aus der Ferne auf den Raspberry Pi-Desktop zugreifen (:ref:`appendix_remote_desktop`) oder ein Display für den Raspberry Pi anschließen.

.. Run the following command in Terminal to install Processing.

.. .. raw:: html

..    <run></run>

.. .. code-block:: 

..     curl https://processing.org/download/install-arm.sh | sudo sh

.. Once the installation is complete, type ``processing`` to open it.


.. .. image:: img/processing1.png


.. For a detailed tutorial, please refer to `Pi Processing <https://pi.processing.org/>`_.

Besuchen Sie zuerst https://processing.org/download und wählen Sie die Version „Linux ARM32-bit“ aus

Sie laden dann in eine ``.tar.gz``-Datei herunter, die den meisten Linux-Benutzern bekannt sein sollte.
Laden Sie die Datei in Ihr Home-Verzeichnis herunter, öffnen Sie dann ein Terminalfenster und geben Sie Folgendes ein:

.. code-block:: 

    tar xvfz processing-xxxx.tgz

(Ersetzen Sie xxxx durch den Rest des Dateinamens, also die Versionsnummer.) Dadurch wird ein Ordner mit dem Namen processing-2.0 oder ähnlich erstellt. Wechseln Sie dann in dieses Verzeichnis:

.. code-block:: 

    cd processing-xxxx

und führe es aus:

.. code-block:: 

    ./processing

Mit etwas Glück wird nun das Hauptverarbeitungsfenster sichtbar.

.. image:: img/processing2.png


Hardware-I/O installieren
------------------------------------------

Um den GPIO des Raspberry Pi zu verwenden, müssen Sie manuell eine `Hardware-I/O-Bibliothek hinzufügen <https://processing.org/reference/libraries/io/index.html>`_.

Klicken ``Sketch`` -> ``Import Library`` -> ``Add Library...`` 

.. image:: img/import-00.png

Suchen Sie Hardware I/O , wählen Sie es aus und klicken Sie dann auf Installieren. Wenn Sie fertig sind, erscheint ein Häkchen-Symbol.

.. image:: img/import-02.png

Projekte
---------------

.. toctree::
    draw_a_matchmaker
    hello_mouse
    blinking_dot
    clickable_dot
    clickable_color_blocks
    inflating_the_dot
    dot_on_the_swing
    metronome
    show_number
    drag_number
