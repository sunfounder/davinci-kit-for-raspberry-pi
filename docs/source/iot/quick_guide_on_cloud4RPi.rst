.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Approfondisci la tua conoscenza su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anteprima agli annunci dei nuovi prodotti.
    - **Sconti Speciali**: Goditi sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a omaggi e promozioni festive.

    👉 Sei pronto a esplorare e creare con noi? Clicca [|link_sf_facebook|] e unisciti subito!

Guida Rapida a Cloud4RPi
================================

Installazione di Cloud4RPi su Raspberry Pi 
------------------------------------------------

Si consiglia di aggiornare il sistema prima di procedere all’installazione.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo apt update && sudo apt upgrade -y

Installa o aggiorna i pacchetti necessari.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo apt install git python3 python3-pip -y

Installa Cloud4RPi con il comando seguente:

.. raw:: html

   <run></run>

.. code-block:: 

    sudo pip3 install cloud4rpi

.. note::

  Questo tutorial offre il metodo di installazione per Python 3.0 e versioni successive. Per versioni inferiori di Python, i comandi potrebbero dover essere modificati.

Accedi a Cloud4RPi dal Computer
-------------------------------------

Apri il browser web Chromium e inserisci questo link: https://cloud4rpi.io.

.. image:: img/cloud1.png
  :align: center

Prima di utilizzarlo, è necessario registrarsi e accedere al proprio account Cloud4RPi.

.. image:: img/cloud2.png
  :align: center

Una volta effettuato l'accesso, dovresti vedere due pulsanti in alto su Cloud4RPi: **Devices** per visualizzare i dispositivi connessi e **Control Panels** per mostrare le informazioni ricevute o inviate dal Raspberry Pi sulla pagina web.

.. image:: img/cloud3.png
  :align: center

Collega il Raspberry Pi a Cloud4RPi
----------------------------------------

Dopo aver effettuato l'accesso, clicca su **Devices** e poi su **New Device**.


.. image:: img/cloud4.png
  :align: center

Dai un nome al nuovo dispositivo e copia il **Device token** attuale negli appunti.

.. image:: img/cloud5.png
  :align: center

Apri il terminale del Raspberry Pi e scarica gli esempi di test forniti da Cloud4RPi.

.. raw:: html

   <run></run>

.. code-block:: 

  cd /home/pi
  git clone https://github.com/cloud4rpi/cloud4rpi-raspberrypi-python.git

Utilizza un editor di testo come Nano per modificare il contenuto del file ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

  cd cloud4rpi-raspberrypi-python
  sudo nano control.py

Trova la seguente riga di codice.

.. code-block:: python

  DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Sostituisci ``__YOUR_DEVICE_TOKEN__`` con il **Device token** copiato da Cloud4RPi. Premi ``Ctrl + X`` per completare la modifica.

.. code-block:: python

  DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

Esegui il file di esempio ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

  sudo python3 control.py

Torna alla pagina del server Cloud4RPi. Se il Raspberry Pi è collegato a Cloud4RPi, le informazioni del dispositivo diventeranno verdi.

.. image:: img/cloud6.png
  :align: center

Utilizzo dei Pannelli di Controllo Cloud4RPi
----------------------------------------------------

Il pannello di controllo sul server Cloud4RPi offre molti widget utili per le applicazioni IoT. Questi widget possono essere usati per controllare i componenti o visualizzare i dati dei sensori.

Dopo essere entrati in **Control Panels**, fai clic sul pulsante **New Control Panel**.

.. note::

  Esegui sempre il file ``control.py`` prima di utilizzare il Pannello di Controllo.

.. image:: img/cloud7.png
  :align: center

Inserisci un nome per il Pannello di Controllo, quindi fai clic sul pulsante **Add Widget**.

.. image:: img/cloud8.png
  :align: center

Prima di fare nuovamente clic su **Add Widget**, seleziona il widget appropriato e la variabile da visualizzare.

.. image:: img/cloud9.png
  :align: center

Ad esempio, selezioniamo il widget **Text** e poi **Hot Water °C**, in modo che sia visibile nel pannello di controllo appena creato.

.. image:: img/cloud10.png
  :align: center

.. note::
  
  Presenteremo questi dati in dettaglio nel capitolo :ref:`Scopri di più su ``control.py```.

