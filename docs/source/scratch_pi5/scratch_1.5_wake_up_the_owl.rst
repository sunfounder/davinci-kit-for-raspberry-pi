.. note:: 

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi, Arduino e ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anticipo agli annunci dei nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri ultimi prodotti.
    - **Promozioni Festive e Giveaway**: Partecipa a promozioni festive e giveaway.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

1.5 Sveglia il Gufo
======================

Oggi giocheremo al gioco per svegliare il gufo.

Quando qualcuno si avvicina al modulo sensore PIR, il gufo si sveglierà dal sonno.

Sul modulo PIR ci sono due potenziometri: uno per regolare la sensibilità 
e l'altro per regolare la distanza di rilevamento. Per far funzionare al 
meglio il modulo PIR, è necessario ruotarli entrambi in senso antiorario 
fino in fondo.

.. image:: img/1.5_header.png

Componenti Necessari
-----------------------

.. image:: img/1.5_component.png

Costruire il Circuito
-------------------------

.. image:: img/1.5_fritzing.png

Carica il Codice e Osserva Cosa Succede
-------------------------------------------

Carica il file di codice (``1.5_wake_up_the_owl.sb3``) in Scratch 3.

Quando ti avvicini al modulo sensore PIR, vedrai il gufo nell'area dello stage aprire le ali e svegliarsi; quando ti allontani, il gufo tornerà a dormire.


Suggerimenti per lo Sprite
------------------------------

Seleziona Sprite1 e clicca su **Costumi** in alto a sinistra; carica **owl1.png** e **owl2.png** dal percorso ``home/pi/davinci-kit-for-raspberry-pi/scratch/picture`` tramite il pulsante **Carica Costume**; elimina i 2 costumi di default e rinomina lo sprite come **gufo**.

.. image:: img/1.5_pir1.png

Suggerimenti sul Codice
--------------------------------

.. image:: img/1.3_title2.png


Quando si clicca sulla bandierina verde, lo stato iniziale di gpio17 è impostato su basso.

.. image:: img/1.5_owl1.png
  :width: 400

Quando pin17 è basso (nessuno si avvicina), cambia il costume dello sprite gufo su owl1 (stato dormiente).

.. image:: img/1.5_owl2.png
  :width: 400

Quando pin17 è alto (qualcuno si avvicina), cambia il costume dello sprite gufo su owl2 (stato sveglio).
