.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato alle novità sui prodotti e alle anteprime esclusive.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

1.3 Giocattolo Tumbler
==========================

In questo progetto, realizzeremo un giocattolo "tumbler" controllato da un interruttore a inclinazione.

.. image:: img/1.3_header.png

Componenti Necessari
-------------------------

.. image:: img/1.3_component.png

Costruisci il Circuito
-------------------------

.. image:: img/1.3_fritzing.png


Carica il Codice e Guarda Cosa Succede
----------------------------------------

Carica il file di codice (``1.3_tumbler.sb3``) in Scratch 3.

Quando l'interruttore a inclinazione è in posizione verticale, il tumbler resta in piedi. Se lo inclini, anche il tumbler si inclinerà. Rimettilo in posizione verticale, e il tumbler si rialzerà.


Suggerimenti sugli Sprite
---------------------------

Seleziona Sprite1 e fai clic su **Costumi** nell'angolo in alto a sinistra; carica **tumbler1.png** e **tumbler2.png** dal percorso ``home/pi/davinci-kit-for-raspberry-pi/scratch/picture`` tramite il pulsante **Carica Costume**; elimina i 2 costumi predefiniti e rinomina lo sprite in **tumbler**.

.. image:: img/1.3_add_tumbler.png

Suggerimenti sul Codice
------------------------

.. image:: img/1.3_title2.png
  :width: 400

Quando si clicca sulla bandierina verde, lo stato iniziale di gpio17 viene impostato su basso.

.. image:: img/1.3_title4.png
  :width: 400

Quando pin17 è basso (l'interruttore a inclinazione è in posizione verticale), si cambia il costume dello sprite tumbler in tumbler1 (stato verticale).

.. image:: img/1.3_title3.png
  :width: 400

Quando pin17 è alto (l'interruttore a inclinazione è inclinato), si cambia il costume dello sprite tumbler in tumbler2 (stato inclinato).
