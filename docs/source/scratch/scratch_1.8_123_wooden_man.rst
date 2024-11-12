.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

1.8 123 Uomo di Legno
===========================

Oggi giocheremo a "123 uomo di legno".

Clicca sulla bandiera verde per avviare il gioco. Tieni premuto il tasto freccia destra sulla tastiera per far muovere il personaggio verso destra. Se la luce verde è accesa, il personaggio può muoversi; ma quando si accende il LED rosso, devi fermare il personaggio; altrimenti, il buzzer continuerà a suonare.

.. image:: img/1.14_header.png

Componenti Necessari
------------------------

.. image:: img/1.14_component.png

Costruisci il Circuito
-----------------------

.. image:: img/1.14_fritzing.png

Carica il Codice e Guarda cosa Succede
---------------------------------------

Carica il file di codice (``1.8_123_wooden_man.sb3``) in Scratch 3.

Quando il LED verde è acceso, puoi usare il tasto freccia destra per controllare **Avery** che cammina verso destra; quando si accende il LED rosso, se continui a far muovere **Avery** verso destra, un allarme inizierà a suonare.

Suggerimenti sugli Sprite
-----------------------------
Elimina lo sprite predefinito, quindi scegli lo sprite **Avery Walking**.

.. image:: img/1.14_wooden1.png
  :width: 400

Suggerimenti sui Codici
---------------------------

.. image:: img/1.14_wooden2.png
  :width: 400

Inizializza tutti i pin su high.

.. image:: img/1.14_wooden3.png
  :width: 400

Quando il gioco inizia, assegna alla variabile **status** il valore 1, indicando che lo sprite Avery Walking è attivo, quindi imposta gpio18 su low, accendendo il LED verde per 5s.

.. image:: img/1.14_wooden4.png
  :width: 400

Imposta gpio18 su high, quindi gpio27 su low, per spegnere il LED verde e accendere il LED giallo per 0,5s.

.. image:: img/1.14_wooden5.png
  :width: 400

Assegna alla variabile **status** il valore 0, indicando che lo sprite Avery Walking non è in movimento; quindi imposta gpio27 su low e gpio17 su high, spegnendo il LED giallo e accendendo il LED rosso per 3s. Infine, imposta gpio17 su high per spegnere il LED rosso.

.. image:: img/1.14_wooden6.png
  :width: 400

Quando premi il tasto freccia destra sulla tastiera, è necessario cambiare il costume dello sprite **Avery Walking** per mostrare il movimento verso destra. Poi, controlla il valore della variabile **status**. Se è 0, significa che lo sprite Avery Walking non dovrebbe muoversi in questo momento, e il buzzer suonerà per avvertirti di non premere il tasto freccia destra.
