.. note:: 

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi, Arduino e ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anticipo agli annunci dei nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri ultimi prodotti.
    - **Promozioni Festive e Giveaway**: Partecipa a promozioni festive e giveaway.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

1.7 Campanello
==================

Oggi realizzeremo un campanello: cliccando sullo sprite **button3** nell'area dello stage, il cicalino emetterà un suono; cliccando di nuovo, il cicalino si spegnerà.

.. image:: img/1.13_header.png

Componenti Necessari
-----------------------

.. image:: img/1.13_list.png

Costruire il Circuito
------------------------

.. image:: img/1.13_image106.png

Carica il Codice e Osserva Cosa Succede
------------------------------------------

Carica il file di codice (``1.7_doorbell.sb3``) su Scratch 3.

Clicca sulla bandiera verde sullo stage. Quando clicchiamo sullo sprite **Button 3**, questo diventerà blu e il cicalino emetterà un suono; cliccando nuovamente, lo sprite **Button3** tornerà grigio e il cicalino smetterà di suonare.


Suggerimenti per lo Sprite
------------------------------

Elimina lo sprite di default, quindi scegli lo sprite **Button 3**.

.. image:: img/1.13_scratch_button3.png

Imposta quindi la dimensione a 200.

.. image:: img/1.13_scratch_button3_size.png

Suggerimenti sul Codice
---------------------------

.. image:: img/1.13_buzzer4.png
  :width: 400

Questo blocco ti permette di cambiare il costume dello sprite.

.. image:: img/1.13_buzzer5.png
  :width: 400

Imposta gpio17 su basso per attivare il suono del cicalino; impostandolo su alto, il cicalino non suonerà.


Per controllare il suono utilizziamo lo switch **status**, e di seguito un diagramma di flusso per aiutarti a comprendere il funzionamento completo del codice.

Quando si clicca sulla bandiera verde, lo **status** viene impostato inizialmente a 0 e attende il clic sullo sprite; se lo sprite **button3** viene cliccato, 
cambia il suo costume in **button-b** (blu) e lo **status** viene impostato su 1. Quando il programma principale rileva lo **status** come 1, il cicalino emette 
un suono a intervalli di 0,1 secondi. Cliccando nuovamente su **button3**, il costume cambia in **button-a** (grigio) e lo **status** torna a 0.

.. image:: img/1.13_scratch_code.png

