.. note:: 

    Ciao e benvenuto nella Community di appassionati SunFounder Raspberry Pi, Arduino e ESP32 su Facebook! Approfondisci Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato a nuovi annunci di prodotto e anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri nuovi prodotti.
    - **Promozioni Festive e Giveaway**: Partecipa a giveaway e promozioni speciali.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

1.2 Sfere Colorate
=====================

Cliccando sulle sfere colorate nell'area di gioco, il LED RGB si illuminerà nei diversi colori corrispondenti.

.. image:: img/1.2_header.png

Componenti Necessari
-----------------------

.. image:: img/1.2_list.png

Costruire il Circuito
-----------------------

.. image:: img/1.2_image61.png

Carica il Codice e Osserva Cosa Succede
-----------------------------------------

Dopo aver caricato il file di codice (``1.2_colorful_balls.sb3``) in Scratch 3, il LED RGB si illuminerà di giallo, blu, rosso, verde o viola, a seconda della sfera cliccata.

Suggerimenti per gli Sprite
------------------------------

Elimina lo sprite predefinito, quindi seleziona lo sprite **Sfera**.

.. image:: img/1.2_ball.png

Duplica questo sprite per un totale di 5 volte.

.. image:: img/1.2_duplicate_ball.png

Scegli costumi diversi per ciascuna delle 5 **Sfere** e posizionale nei punti corrispondenti.

.. image:: img/1.2_rgb1.png

Suggerimenti sul Codice
----------------------------

Prima di comprendere il codice, è utile capire il `RGB color model <https://en.wikipedia.org/wiki/RGB_color_model>`_.

Il modello di colore RGB è un modello additivo in cui le luci rosse, verdi e blu vengono combinate in vari modi per riprodurre una vasta gamma di colori.

Mescolanza additiva di colori: aggiungendo rosso a verde si ottiene il giallo; aggiungendo verde a blu si ottiene il ciano; aggiungendo blu a rosso si ottiene il magenta; aggiungendo tutti e tre i colori primari si ottiene il bianco.

.. image:: img/1.2_rgb_addition.png
  :width: 400

Un LED RGB è una combinazione di 3 LED (rosso, verde e blu) in un unico pacchetto; è possibile ottenere quasi qualsiasi colore combinando questi tre colori. 
Ha 4 pin: uno è GND, mentre gli altri 3 pin controllano ciascuno dei tre LED.

Il codice per fare in modo che il LED RGB si illumini di giallo è il seguente.

.. image:: img/1.2_rgb3.png

Quando si clicca sulla sfera gialla, impostiamo gpio17 su alto (LED rosso acceso), gpio18 su alto (LED verde acceso) e gpio27 su basso (LED blu spento), in modo che il LED RGB si illumini di giallo.

È possibile scrivere codici simili per gli altri sprite in modo da far illuminare il LED RGB nei colori corrispondenti.
