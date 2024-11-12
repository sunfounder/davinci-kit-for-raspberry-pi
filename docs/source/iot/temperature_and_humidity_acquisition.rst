.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché Unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anteprima agli annunci dei nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri nuovi prodotti.
    - **Promozioni Festive e Omaggi**: Partecipa a omaggi e promozioni speciali per le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Acquisizione di Temperatura e Umidità
=========================================

In questo progetto, utilizziamo il sensore DHT11 per leggere la temperatura e l'umidità dell'ambiente circostante e visualizzarle su Cloud4RPi.

Procedura Sperimentale
---------------------------

Costruisci il circuito.

.. image:: img/tem4.png
  :align: center

Apri il codice.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano temperature_and_humidity_acquisition.py

Trova la riga sottostante e inserisci il corretto dispositivo token.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Esegui il codice.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 temperature_and_humidity_acquisition.py

Vai su Cloud4RPi, aggiungi un nuovo pannello di controllo chiamato project1 e clicca su **Add Widget**.

.. image:: img/tem1.png
  :align: center

Seleziona un widget **Chart** con le variabili **Room Temp** e **CPU Temp** da visualizzare.

.. image:: img/tem2.png
  :align: center

Una volta aggiunto, vedrai le curve della temperatura (Room Temp) e dell'umidità (CPU Temp) nel tempo, e puoi regolare la finestra di visualizzazione cliccando sulle opzioni in basso a destra.

.. image:: img/tem3.png
  :align: center

Spiegazione del Codice
--------------------------

.. code-block:: python

    dht11 = DHT11.DHT11(17)

Crea un'istanza di un oggetto dht11.

.. code-block:: python

    def getTem():
        result = dht11.get_result()
        while True:
            if result:
                break
            else:
                result = dht11.get_result()
        return result[1]

La temperatura (``result[1]``) viene ottenuta tramite questa funzione, che continuerà fino a quando la lettura non avrà successo.

.. code-block:: python

    def getHum():
    result = dht11.get_result()
    while True:
        if result:
            break
        else:
            result = dht11.get_result()
    return result[0]

L'umidità (``result[0]``) viene ottenuta tramite questa funzione, che continuerà fino a quando la lettura non avrà successo.

.. code-block:: python

    variables = {
        'Room Temp': {
            'type': 'numeric',
            'bind': getTem
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': getHum
        },
    }

La temperatura è memorizzata in ``'bind'`` nella chiave ``'Room Temp'``, mentre l'umidità è memorizzata in ``'bind'`` nella chiave ``'CPU Temp'``. Quando Cloud4RPi riceve il dizionario ``variables``, lo converte in un oggetto JavaScript riconoscibile dalla pagina web.
