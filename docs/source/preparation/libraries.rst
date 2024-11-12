.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Unisciti a noi per esplorare in profondità Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e affronta sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue abilità.
    - **Anteprime Esclusive**: Ottieni l'accesso anticipato agli annunci sui nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a promozioni festive e ricevi omaggi.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Librerie
===========

Due librerie fondamentali vengono utilizzate nella programmazione con 
Raspberry Pi: wiringPi e RPi.GPIO. Queste librerie sono già installate 
di default nel sistema operativo Raspberry Pi, quindi puoi usarle direttamente.

RPi.GPIO
----------

Se sei un utente Python, puoi programmare i GPIO utilizzando l’API fornita da 
RPi.GPIO.

RPi.GPIO è un modulo per controllare i canali GPIO del Raspberry Pi. Questo 
pacchetto fornisce una classe per controllare i GPIO su un Raspberry Pi. 
Per esempi e documentazione, visita: http://sourceforge.net/p/raspberry-gpio-python/wiki/Home/.

Per verificare se RPi.GPIO è installato, digita in Python:

.. raw:: html

    <run></run>

.. code-block:: 

    python

.. image:: img/image27.png


Nel CLI di Python, inserisci "import RPi.GPIO". Se non appare nessun errore, 
significa che RPi.GPIO è installato correttamente.

.. raw:: html

    <run></run>

.. code-block::

    import RPi.GPIO

.. image:: img/image28.png

Per uscire dal CLI di Python, digita:

.. raw:: html

    <run></run>

.. code-block:: 

    exit()

.. image:: img/image29.png

.. _install_wiringpi:

Installazione e Verifica di WiringPi
----------------------------------------

``wiringPi`` è una libreria GPIO per Raspberry Pi scritta in linguaggio C, 
conforme alla licenza GNU Lv3. Le funzioni in wiringPi sono simili a quelle 
del sistema di wiring di Arduino, il che consente agli utenti di Arduino di 
utilizzare wiringPi in modo più intuitivo.

``wiringPi`` include numerosi comandi GPIO che permettono di controllare tutti 
i tipi di interfacce sul Raspberry Pi. 

Esegui il seguente comando per installare la libreria ``wiringPi``:

.. raw:: html

   <run></run>

.. code-block::

    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi 
    ./build

Puoi verificare se la libreria wiringPi è installata correttamente con il 
seguente comando:

.. raw:: html

    <run></run>

.. code-block::

    gpio -v

.. image:: img/image30.png

Controlla lo stato dei GPIO con il seguente comando:

.. raw:: html

    <run></run>

.. code-block:: 

    gpio readall

.. image:: img/image31.png

Per ulteriori dettagli su wiringPi, puoi fare riferimento a `WiringPi <https://github.com/WiringPi/WiringPi>`_.
