.. note:: 

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi, Arduino e ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Accedi in anticipo agli annunci dei nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri ultimi prodotti.
    - **Promozioni Festive e Giveaway**: Partecipa a promozioni festive e giveaway.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

1.6 Lampada d'Acqua
=======================

Oggi utilizzeremo una barra LED, il Raspberry Pi e Scratch per creare una Lampada d'Acqua.

La barra LED si accenderà progressivamente seguendo la direzione delle frecce sullo stage.

.. image:: img/1.12_header.png

Componenti Necessari
-----------------------

.. image:: img/1.12_list.png

Costruire il Circuito
------------------------

.. image:: img/1.12_image66.png

Carica il Codice e Osserva Cosa Succede
------------------------------------------

Carica il file di codice (``1.6_water_lamp.sb3``) dal tuo computer a Scratch 3.

Cliccando su **Arrow1**, i LED della barra si accendono uno alla volta da sinistra verso destra, quindi si spengono. Cliccando su **Arrow2** i LED si accendono nell'ordine opposto.

Suggerimenti per gli Sprite
-------------------------------

Elimina lo sprite di default e scegli lo sprite **Arrow1**.

.. image:: img/1.12_graph1.png

Qui avremo bisogno di 2 sprite **Arrow1**, ottenibili con il pulsante di duplicazione.

.. image:: img/1.12_scratch_duplicate.png

Clicca sullo sprite **Arrow 2** e cambia la direzione della freccia selezionando il costume 2.

.. image:: img/1.12_graph2.png


Ora creiamo una variabile.

.. image:: img/1.12_graph3.png


Chiamala **num**.

.. image:: img/1.12_graph4.png


Segui lo stesso metodo per creare una lista chiamata **led**.

.. image:: img/1.12_graph6.png


Dopo aver aggiunto, dovresti vedere la variabile **num** e la lista **led** nell'area dello stage.

Clicca su **+** per aggiungere 10 elementi alla lista e inserisci i numeri dei pin in ordine (17,18,27,22,23,24,25,2,3,8).

.. image:: img/1.12_graph7.png

Suggerimenti sul Codice
--------------------------

.. image:: img/1.12_graph10.png
  :width: 300

Questo è un blocco evento che si attiva quando si clicca sullo sprite corrente.

.. image:: img/1.12_graph8.png
  :width: 300

Il valore iniziale della variabile **num** determina quale LED si accende per primo.

.. image:: img/1.12_graph9.png


Imposta il pin corrispondente a **num** nella lista led su basso per accendere il LED, quindi imposta il pin corrispondente a **num-1** su alto per spegnere il LED precedente.

