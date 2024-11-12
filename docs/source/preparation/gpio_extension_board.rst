.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Unisciti a noi per approfondire le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni l'accesso anticipato agli annunci sui nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a promozioni festive e ricevi omaggi.

    👉 Sei pronto per esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Scheda di Estensione GPIO
============================

Prima di iniziare a imparare i comandi, è importante conoscere meglio i 
pin del Raspberry Pi, elemento chiave per gli studi successivi.

Possiamo facilmente portare i pin del Raspberry Pi sulla breadboard tramite 
la scheda di estensione GPIO, evitando di danneggiare i GPIO a causa di 
frequenti connessioni e disconnessioni. Qui è mostrata la nostra scheda di 
estensione GPIO a 40 pin e il cavo GPIO per Raspberry Pi modello B+, modello B 2, 
e modelli B 3 e 4.

.. image:: img/image32.png
    :align: center

**Numerazione dei Pin**

I pin del Raspberry Pi possono essere identificati in tre modi: wiringPi, BCM e Board.

Tra questi metodi di numerazione, la scheda di estensione GPIO a 40 pin utilizza il metodo BCM. Tuttavia, per alcuni pin speciali, come la porta I2C e la porta SPI, viene usato il nome specifico della porta.

La tabella seguente mostra i metodi di numerazione WiringPi, Board e il Nome intrinseco di ciascun pin sulla scheda di estensione GPIO. Ad esempio, per il GPIO17, la numerazione Board è 11, quella wiringPi è 0, e il nome intrinseco è GPIO0.

.. note::

    1) In linguaggio C, viene utilizzato il metodo di numerazione WiringPi.

    2) In linguaggio Python, i metodi di numerazione applicati sono Board e BCM, e la funzione GPIO.setmode() viene utilizzata per impostarli.

.. image:: img/gpio_board.png