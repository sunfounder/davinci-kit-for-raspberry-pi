.. note:: 

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto da esperti**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni un accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e omaggi**: Partecipa a promozioni speciali e omaggi durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

Scheda di Estensione GPIO
============================

Prima di iniziare con i comandi, è importante conoscere meglio i pin del 
Raspberry Pi, che saranno fondamentali per i prossimi argomenti di studio.

Possiamo collegare facilmente i pin del Raspberry Pi a una breadboard tramite 
la Scheda di Estensione GPIO, evitando possibili danni dovuti all'inserimento 
e rimozione frequente dei pin. Questa è la nostra scheda di estensione GPIO a 
40 pin con cavo GPIO per Raspberry Pi modelli B+, 2 B, 3 e 4 B.

.. image:: img/image32.png
    :align: center

**Numerazione dei Pin**

I pin del Raspberry Pi possono essere identificati tramite tre metodi: wiringPi, BCM e Board.

Tra questi, la Scheda di Estensione GPIO a 40 pin utilizza il metodo di numerazione BCM. Tuttavia, per alcuni pin speciali, come le porte I2C e SPI, viene utilizzato il loro nome specifico.

La tabella seguente mostra i metodi di numerazione WiringPi, Board e il Nome specifico di ciascun pin sulla scheda di estensione GPIO. Ad esempio, per il GPIO17, la numerazione Board è 11, la numerazione WiringPi è 0, e il nome specifico è GPIO0.

.. note::

    1) Nel linguaggio C, il metodo di numerazione utilizzato è WiringPi.
    
    2) Nel linguaggio Python, i metodi di numerazione usati sono Board e BCM, configurabili tramite la funzione GPIO.setmode().

.. image:: img/gpio_board.png