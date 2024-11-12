.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché Unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anteprima agli annunci dei nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri nuovi prodotti.
    - **Promozioni Festive e Omaggi**: Partecipa a omaggi e promozioni speciali per le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Interruttore Remoto
============================

In questo progetto, impareremo a utilizzare l'interruttore di Cloud4RPi per controllare il relè e quindi gestire il carico LED collegato al relè. È anche possibile cambiare il carico del relè con elettrodomestici, tenendo sempre a mente la sicurezza.

Procedura Sperimentale
-------------------------

Costruisci il circuito.

.. image:: img/relay1.png
    :align: center

Apri il codice.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano remote_switch.py

Trova la riga sottostante e inserisci il corretto dispositivo token.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Esegui il codice.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 remote_switch.py

Vai su Cloud4RPi, aggiungi un nuovo pannello di controllo chiamato project2 e fai clic su **Add Widget** per aggiungere un widget **Switch**.

.. image:: img/relay2.png
    :align: center

Una volta aggiunto, puoi usare il widget Switch per controllare il relè.

.. image:: img/relay3.png
    :align: center

Spiegazione del Codice
---------------------------

.. code-block:: python

    RELAY_PIN = 18

Il relè è collegato al GPIO18 della scheda di espansione T.

.. code-block:: python

    GPIO.setmode(GPIO.BCM)
    GPIO.setup(RELAY_PIN, GPIO.OUT)

Imposta la nomenclatura BCM e configura ``RELAY_PIN`` come output.

.. code-block:: python

    def relay_control(value=None):
        GPIO.output(RELAY_PIN, value)
        return GPIO.input(RELAY_PIN)

Questa funzione controlla il relè in base al ``value`` e restituisce il livello corrente del relè.

.. note::

    Poiché il relè funziona a livello alto, si chiude quando lo stato dell'interruttore è True e si apre quando lo stato dell'interruttore è False.

.. code-block:: python

    variables = {
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': relay_control
        },
    }

Impostando il valore della chiave ``'value'``, possiamo definire il valore iniziale del widget Switch, quindi leggere continuamente il valore della chiave ``'value'`` e inviare a Cloud4RPi il livello corrente di ``RELAY_PIN`` (il valore restituito dalla funzione ``relay_control()``).

