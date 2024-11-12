.. note::

    Ciao! Benvenuto nella Community di SunFounder per gli appassionati di Raspberry Pi, Arduino ed ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi i problemi post-vendita e le sfide tecniche con il supporto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e anteprime speciali.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

.. _create_virtual:

Creazione di un Ambiente Virtuale
======================================

Quando si utilizza Raspberry Pi o dispositivi simili, si consiglia di installare i pacchetti con ``pip`` in un ambiente virtuale. Questo approccio offre isolamento delle dipendenze, aumenta la sicurezza del sistema, mantiene pulito l'ambiente e facilita la migrazione e la condivisione dei progetti, semplificando la gestione delle dipendenze. Questi vantaggi rendono gli ambienti virtuali uno strumento estremamente utile nello sviluppo in Python.

Di seguito i passaggi per creare un ambiente virtuale:

**1. Creazione di un ambiente virtuale**

Prima di tutto, assicurati che Python sia installato nel sistema. Dalla versione 3.3 in poi, Python include il modulo ``venv`` per creare ambienti virtuali, senza necessità di installazioni aggiuntive. Se utilizzi Python 2 o una versione precedente alla 3.3, sarà necessario installare ``virtualenv``.

* Per Python 3:

Dalla versione 3.3 in poi, Python può utilizzare direttamente il modulo ``venv``:

.. raw:: html

    <run></run>

.. code-block:: shell

    python3 -m venv myenv

Questo comando creerà un ambiente virtuale chiamato ``myenv`` nella directory corrente.

* Per Python 2:

Se utilizzi ancora Python 2, installa prima ``virtualenv``:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install virtualenv

Poi, crea un ambiente virtuale:

.. raw:: html

    <run></run>

.. code-block:: shell

    virtualenv myenv

Anche in questo caso, verrà creato un ambiente virtuale chiamato ``myenv`` nella directory corrente.

**2. Attivazione dell'Ambiente Virtuale**

Dopo aver creato l'ambiente virtuale, è necessario attivarlo per utilizzarlo.

.. note::

    Ogni volta che riavvii il Raspberry Pi o apri un nuovo terminale, sarà necessario eseguire il seguente comando per riattivare l'ambiente virtuale.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Una volta attivato, vedrai il nome dell'ambiente prima del prompt dei comandi, a indicare che stai lavorando all'interno dell'ambiente virtuale.


**3. Installazione delle Dipendenze**

Con l'ambiente virtuale attivato, puoi utilizzare pip per installare le dipendenze necessarie. Ad esempio:

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install requests

Questo installerà la libreria requests all'interno dell'ambiente virtuale corrente, senza alterare l'ambiente globale. Questo passaggio deve essere eseguito solo una volta.


**4. Uscita dall'Ambiente Virtuale**

Quando hai finito di lavorare e desideri uscire dall'ambiente virtuale, esegui semplicemente:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Questo comando ti riporterà all'ambiente Python globale del sistema.

**5. Eliminazione dell'Ambiente Virtuale**

Se non hai più bisogno di un determinato ambiente virtuale, puoi semplicemente eliminare la directory contenente l'ambiente:

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv