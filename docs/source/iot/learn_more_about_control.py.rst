.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Approfondisci la tua conoscenza di Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperti**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anteprima agli annunci dei nuovi prodotti.
    - **Sconti Speciali**: Goditi sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a omaggi e promozioni festive.

    👉 Pronto per esplorare e creare con noi? Clicca [|link_sf_facebook|] e unisciti subito!

Scopri di più su ``control.py``
================================

Per comprendere meglio i progetti che seguiranno, diamo uno sguardo al codice di esempio ufficiale fornito da Cloud4RPi.

.. note::

    Completa la sezione precedente :ref:`Guida Rapida a Cloud4RPi` prima di visualizzare questa sezione.

Apri il file ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

    cd cloud4rpi-raspberrypi-python
    sudo nano control.py

Cloud4RPi assegnerà un token dispositivo per ognuno, e dovrai inserire il token corretto nella variabile DEVICE_TOKEN per connetterti al dispositivo corrispondente.

.. code-block:: python

    DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

``variables`` è un dizionario bidimensionale, e il valore corrispondente a ciascuna delle sue chiavi è a sua volta un dizionario.

Le chiavi del dizionario ``variables`` sono ``'Room Temp'``, ``'LED On'``, ``'CPU Temp'``, ``'STATUS'``, ``'Location'``, tutti dati mostrati sui widget del Pannello di Controllo.

Il valore di ciascuna chiave nel dizionario ``variables`` è anch’esso un dizionario, con chiavi identiche tra loro. Il valore della chiave ``'bind'`` è una funzione che può restituire il contenuto trasferito, mentre ``'type'`` indica il tipo di dati del contenuto trasferito (``'numeric'`` per numeri, ``'string'`` per stringhe, ``'bool'`` per valori booleani e ``'location'`` per una lista contenente due dizionari).

Attraverso l’analisi del dizionario ``variables``, possiamo capire che Cloud4RPi legge le chiavi del dizionario ``variables`` e visualizza il valore corrispondente alla chiave nel Pannello di Controllo. Ovviamente, non possiamo modificare le chiavi di ``variables``, ma possiamo cambiare il valore della chiave (il valore di ``'bind'``) per mostrare i contenuti che desideriamo sui widget.

Ad esempio, se vogliamo inviare i valori di umidità a Cloud4RPi, non possiamo aggiungere una nuova chiave a ``variables``, ma possiamo sfruttare una chiave esistente, come ``'Room Temp'``, e poi scrivere una funzione che restituisca il valore di umidità nella chiave ``'bind'`` corrispondente.

.. code-block:: python

    variables = {
        'Room Temp': {
            'type': 'numeric' if ds_sensors else 'string',
            'bind': ds_sensors[0] if ds_sensors else sensor_not_connected
        },
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': led_control
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': rpi.cpu_temp
        },
        'STATUS': {
            'type': 'string',
            'bind': listen_for_events
        },
        'Location': {
            'type': 'location',
            'bind': get_location
        }

Il ``vdiagnostics`` memorizza informazioni sul Raspberry Pi e serve a verificare e prevenire connessioni errate.

.. code-block:: python

    vdiagnostics = {
        'CPU Temp': rpi.cpu_temp,
        'IP Address': rpi.ip_address,
        'Host': rpi.host_name,
        'Operating System': rpi.os_name,
        'Client Version:': cloud4rpi.__version__,
    }
