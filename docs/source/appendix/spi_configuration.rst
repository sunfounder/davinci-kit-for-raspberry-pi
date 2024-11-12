.. note::

    Ciao e benvenuto nella Community di SunFounder per gli appassionati di Raspberry Pi, Arduino e ESP32 su Facebook! Unisciti a noi per esplorare in profondità Raspberry Pi, Arduino e ESP32 con altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi i problemi post-vendita e le sfide tecniche con l’aiuto del nostro team e della community.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni l'accesso anticipato a nuovi annunci di prodotti e anteprime esclusive.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e Omaggi Festivi**: Partecipa a omaggi e promozioni speciali durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

.. _spi_configuration:

Configurazione SPI
------------------------

**Passo 1**: Abilita la porta SPI del tuo Raspberry Pi (Se l'hai già abilitata, 
salta questo passaggio; se non sei sicuro di averlo fatto, continua a leggere).

.. raw:: html

   <run></run>

.. code-block:: 

    sudo raspi-config

**3 Opzioni Interfaccia**

.. image:: img/image282.png
   :align: center

**I3 SPI**

.. image:: img/i3spi.png
   :align: center

**<SI>, poi clicca su <OK> e <Finish>.**

.. image:: img/image286.png
   :align: center 

**Passo 2:** Verifica che i moduli SPI siano caricati e attivi.

.. raw:: html

   <run></run>

.. code-block:: 

    ls /dev/sp*

Appariranno i seguenti codici (i numeri possono variare).


.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

**Passo 3:** Installa il modulo Python SPI-Py.

.. raw:: html

   <run></run>

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::
    Questo passaggio è per gli utenti Python; se utilizzi il linguaggio C, puoi saltarlo.

