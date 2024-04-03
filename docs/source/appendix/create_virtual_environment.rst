.. _create_virtual:

Erstellen einer virtuellen Umgebung
======================================

Bei Verwendung von Raspberry Pi oder ähnlichen Geräten wird empfohlen, Pakete mit ``pip`` in einer virtuellen Umgebung zu installieren. Diese bietet eine Abhängigkeitsisolierung, erhöht die Systemsicherheit, gewährleistet die Sauberkeit des Systems und erleichtert Projektmigration und -freigabe, was die Abhängigkeitsverwaltung vereinfacht. Diese Vorteile machen virtuelle Umgebungen zu einem äußerst wichtigen und nützlichen Werkzeug in der Python-Entwicklung.

Im Folgenden finden Sie die Schritte zur Erstellung einer virtuellen Umgebung:

**1. Erstellen einer virtuellen Umgebung**

Zunächst müssen Sie sicherstellen, dass Ihr System Python installiert hat. Python-Version 3.3 und später werden mit dem ``venv``-Modul geliefert, um virtuelle Umgebungen zu erstellen, was die separate Installation überflüssig macht. Wenn Sie Python 2 oder eine Version vor Python 3.3 verwenden, müssen Sie ``virtualenv`` installieren.

* Für Python 3:

Python-Versionen 3.3 und später können direkt das ``venv``-Modul verwenden:

.. raw:: html

    <run></run>

.. code-block:: shell

    python3 -m venv myenv

Dies erstellt eine virtuelle Umgebung namens ``myenv`` im aktuellen Verzeichnis.

* Für Python 2:

Wenn Sie immer noch Python 2 verwenden, müssen Sie zuerst ``virtualenv`` installieren:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install virtualenv

Erstellen Sie dann eine virtuelle Umgebung:

.. raw:: html

    <run></run>

.. code-block:: shell

    virtualenv myenv

Dies erstellt ebenfalls eine virtuelle Umgebung namens ``myenv`` im aktuellen Verzeichnis.

**2. Aktivieren der virtuellen Umgebung**

Nachdem Sie die virtuelle Umgebung erstellt haben, müssen Sie sie für die Verwendung aktivieren.

.. note::

    Jedes Mal, wenn Sie den Raspberry Pi neu starten oder ein neues Terminal öffnen, müssen Sie erneut den folgenden Befehl ausführen, um die virtuelle Umgebung zu aktivieren.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Sobald die virtuelle Umgebung aktiviert ist, sehen Sie den Umgebungsnamen vor dem Befehlszeilen-Prompt, was darauf hinweist, dass Sie innerhalb der virtuellen Umgebung arbeiten.


**3. Abhängigkeiten installieren**

Mit der aktivierten virtuellen Umgebung können Sie pip verwenden, um die erforderlichen Abhängigkeiten zu installieren. Zum Beispiel:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install requests

Dies installiert die Requests-Bibliothek in die aktuelle virtuelle Umgebung anstelle der globalen Umgebung. Dieser Schritt muss nur einmal ausgeführt werden.


**4. Verlassen der virtuellen Umgebung**

Wenn Sie Ihre Arbeit abgeschlossen haben und die virtuelle Umgebung verlassen möchten, führen Sie einfach folgenden Befehl aus:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Dadurch kehren Sie zur globalen Python-Umgebung des Systems zurück.

**5. Löschen der virtuellen Umgebung**

Wenn Sie eine bestimmte virtuelle Umgebung nicht mehr benötigen, können Sie einfach das Verzeichnis löschen, das die virtuelle Umgebung enthält:

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv

