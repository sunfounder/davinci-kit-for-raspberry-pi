.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

1.7 Campanello
==================

Oggi creeremo un campanello: cliccando sullo sprite **Button 3** nella scena, il buzzer emetterà un suono; cliccandolo di nuovo, il suono si fermerà.

.. image:: img/1.13_header.png

Componenti Necessari
-----------------------

.. image:: img/1.13_list.png

Costruisci il Circuito
------------------------

.. image:: img/1.13_image106.png

Carica il Codice e Guarda cosa Succede
------------------------------------------

Carica il file di codice (``1.7_doorbell.sb3``) in Scratch 3.

Clicca sulla bandierina verde sulla scena. Quando clicchi sullo sprite **Button 3**, diventerà blu e il buzzer emetterà un suono; cliccando nuovamente, lo sprite **Button3** tornerà grigio e il buzzer smetterà di suonare.


Suggerimenti sugli Sprite
-------------------------------

Elimina lo sprite predefinito, quindi scegli lo sprite **Button 3**.

.. image:: img/1.13_scratch_button3.png

Imposta quindi la dimensione su 200.

.. image:: img/1.13_scratch_button3_size.png

Suggerimenti sui Codici
---------------------------

.. image:: img/1.13_buzzer4.png
  :width: 400

Questo blocco ti permette di cambiare il costume dello sprite.

.. image:: img/1.13_buzzer5.png
  :width: 400

Imposta gpio17 su low per far suonare il buzzer; impostalo su high e il buzzer non emetterà suoni.

Qui viene utilizzato un interruttore **status**, e utilizzeremo un diagramma di flusso per aiutarti a comprendere l'intero codice.

Quando si clicca sulla bandierina verde, lo **status** viene inizialmente impostato su 0, e in questo momento il sistema attende il clic sullo sprite; se lo sprite **button3** viene cliccato, cambierà costume in **button-b** (blu) e lo **status** sarà impostato su 1. Quando il programma principale riceve lo **status** come 1, farà emettere il suono al buzzer a intervalli di 0,1s.
Se si clicca nuovamente su **button3**, il costume cambierà in **button-a** (grigio) e lo **status** sarà impostato di nuovo su 0.

.. image:: img/1.13_scratch_code.png

