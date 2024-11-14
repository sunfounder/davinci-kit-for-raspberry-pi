.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

1.9 Gonfia il Palloncino
==========================

Qui giocheremo a gonfiare un palloncino.

Facendo scorrere l’interruttore a sinistra, inizia a gonfiare il palloncino, che diventerà sempre più grande. Se il palloncino diventa troppo grande, esploderà; se è troppo piccolo, non volerà in aria. Devi decidere quando spostare l'interruttore a destra per interrompere il gonfiaggio.

.. image:: img/1.15_header.png

Componenti Necessari
-----------------------

.. image:: img/1.15_component.png

Costruisci il Circuito
-----------------------

.. image:: img/1.15_scratch_fritzing.png

Carica il Codice e Guarda cosa Succede
--------------------------------------

Carica il file di codice (``1.9_inflating_the_balloon.sb3``) in Scratch 3.

Facendo scorrere l'interruttore a sinistra, inizia a gonfiare il palloncino, che diventerà sempre più grande. Se il palloncino diventa troppo grande, esploderà; se è troppo piccolo, non volerà in aria. Devi decidere quando spostare l'interruttore a destra per fermare il gonfiaggio.


Suggerimenti sugli Sprite
----------------------------

Elimina lo sprite precedente Sprite1, quindi aggiungi lo sprite **Balloon1**.

.. image:: img/1.15_slide1.png

In questo progetto viene utilizzato un effetto sonoro di esplosione del palloncino, quindi vediamo come è stato aggiunto.

Clicca sull'opzione **Suono** in alto, quindi clicca su **Carica Suono** per caricare ``boom.wav`` dal percorso ``davinci-kit-for-raspberry-pi/scratch/sound`` in Scratch 3.

.. image:: img/1.15_slide2.png

Suggerimenti sui Codici
--------------------------

.. image:: img/1.15_slide3.png
  :width: 500

Questo è un blocco evento, e la condizione di attivazione è che gpio17 sia alto, cioè l'interruttore è spostato a sinistra.

.. image:: img/1.15_slide4.png
  :width: 400

Imposta la dimensione massima dello sprite Balloon1 su 120.

.. image:: img/1.15_slide7.png
  :width: 400

Sposta le coordinate dello sprite Balloon1 a (0,0), il centro dell'area del palco.

.. image:: img/1.15_slide8.png
  :width: 300

Imposta la dimensione dello sprite Balloon1 su 50 e mostralo nell'area del palco.

.. image:: img/1.15_slide5.png


Imposta un ciclo per gonfiare il palloncino; il ciclo si interrompe quando l'interruttore slider viene spostato a destra.

All'interno di questo ciclo, la dimensione del palloncino aumenta di 1 ogni 0,1s, e se supera ``maxSize``, il palloncino scoppierà; a questo punto verrà riprodotto il suono di esplosione e il codice verrà terminato.

.. image:: img/1.15_slide6.png
  :width: 600

Dopo l'uscita dal ciclo (Slider spostato a destra), determina la posizione dello sprite Balloon1 in base alla sua dimensione. Se la dimensione dello sprite Balloon1 è superiore a 90, decollerà (sposta le coordinate a (0, 90)), altrimenti atterrerà (sposta le coordinate a (0, -149)).

