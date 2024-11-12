.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Esplora più a fondo Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci dei nuovi prodotti e anteprime.
    - **Sconti speciali**: Goditi sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni per le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

1.4 Lepre
==============

Oggi utilizzeremo un Pulsante, Raspberry Pi e Scratch per creare una lepre con varie animazioni!

Quando premiamo il primo pulsante, la lepre nell’area di scena cambierà il colore del corpo; premendo il secondo pulsante, cambierà la dimensione del corpo; premendo il terzo pulsante, la lepre farà un passo avanti.

.. image:: img/1.4_header.png

Componenti Necessari
----------------------------

.. image:: img/1.4_list.png

Costruisci il Circuito
-------------------------

.. image:: img/1.4_scratch_button.png

Carica il Codice e Guarda cosa Succede
-----------------------------------------

Carica il file del codice (``1.4_hare.sb3``) in Scratch 3.

Ora puoi provare a premere ciascuno dei 3 pulsanti per vedere come cambierà la Lepre sullo schermo.


Suggerimenti sullo Sprite
-----------------------------

Clicca sul pulsante **Scegli uno Sprite** nell'angolo in basso a destra dell'area sprite, inserisci **Lepre** nella casella di ricerca, quindi clicca per aggiungerla.

.. image:: img/1.4_button1.png

Elimina Sprite1.

.. image:: img/1.4_button2.png


Suggerimenti sui Codici
------------------------------

.. image:: img/1.4_button3.png
  :width: 400

Questo è un blocco di evento che viene attivato quando il livello di GPIO17 è alto, il che significa che il pulsante è premuto in quel momento.

.. image:: img/1.4_button4.png
  :width: 400

Questo è un blocco per cambiare il colore della **Lepre**; il valore va da 0 a 199, superato il valore massimo, ricomincia da 0.

.. image:: img/1.4_button5.png
  :width: 250

Questo blocco serve a modificare la dimensione dello sprite; maggiore è il valore, più grande sarà lo sprite.

.. note::
  Lo sprite non può crescere all'infinito; la dimensione massima è correlata alla dimensione originale dell’immagine.

.. image:: img/1.4_button6.png
  :width: 200

Questo è un blocco che cambia i costumi dello sprite; quando i costumi della **Lepre** vengono alternati, essa esegue una serie di movimenti coerenti. Ad esempio, in questo progetto, fa sì che la **Lepre** compia un passo in avanti.

