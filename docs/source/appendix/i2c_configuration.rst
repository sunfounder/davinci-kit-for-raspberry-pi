.. note::

    Ciao! Benvenuto nella Community di SunFounder per gli appassionati di Raspberry Pi, Arduino ed ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con il supporto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

.. _i2c_config:

I2C Configuration
-----------------------

**Passaggio 1**: Abilita la porta I2C del tuo Raspberry Pi (Se è già abilitata, 
puoi saltare questo passaggio; se non sei sicuro, procedi comunque).

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo raspi-config

**3 Opzioni di Interfacciamento**

.. image:: img/image282.png
    :align: center

**I4 I2C**

.. image:: img/I4i2c.jpeg
    :align: center

**<Sì>, poi <Ok> -> <Fine>**

.. image:: img/image284.png
    :align: center

**Passaggio 2:** Verifica se i moduli i2c sono caricati e attivi.

.. raw:: html

   <run></run>
 
.. code-block:: 

    lsmod | grep i2c

Appariranno i seguenti codici (i numeri possono variare). Se non appaiono, riavvia il Raspberry Pi con ``sudo reboot``.

.. code-block:: 

    i2c_dev                     6276    0
    i2c_bcm2708                 4121    0

**Passaggio 3:** Installa i2c-tools.

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install i2c-tools

**Passaggio 4:** Verifica l'indirizzo del dispositivo I2C.


.. raw:: html

    <run></run>
  
.. code-block:: 

    i2cdetect -y 1      # Per Raspberry Pi 2 e versioni successive



.. raw:: html

   <run></run>
 
.. code-block:: 

    i2cdetect -y 0      # Per Raspberry Pi 1


.. code-block:: 

    pi@raspberrypi ~ $ i2cdetect -y 1
        0  1  2  3   4  5  6  7  8  9   a  b  c  d  e  f
    00:           -- -- -- -- -- -- -- -- -- -- -- -- --
    10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    40: -- -- -- -- -- -- -- -- 48 -- -- -- -- -- -- --
    50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    70: -- -- -- -- -- -- -- --

Se è presente un dispositivo I2C collegato, l'indirizzo del dispositivo verrà visualizzato.

**Passaggio 5:**

**Per utenti C:** Installa libi2c-dev.

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install libi2c-dev 

**Per utenti Python:**

1. Attiva l'Ambiente Virtuale.

.. note::
    
    * Prima dell'attivazione, assicurati di aver creato un ambiente virtuale; consulta :ref:`create_virtual`.

    * Ogni volta che riavvii il Raspberry Pi o apri un nuovo terminale, dovrai eseguire nuovamente il seguente comando per attivare l'ambiente virtuale.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Una volta attivato l'ambiente virtuale, vedrai il nome dell'ambiente prima del prompt della riga di comando, indicando che stai lavorando all'interno dell'ambiente virtuale.


2. Installa smbus per I2C.

.. raw:: html

    <run></run>
 
.. code-block:: 

    sudo pip3 install smbus2


3. Uscire dall'Ambiente Virtuale.

Quando hai completato il lavoro e desideri uscire dall'ambiente virtuale, esegui semplicemente:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Questo ti riporterà all'ambiente Python globale del sistema.
