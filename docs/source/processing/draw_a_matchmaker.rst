.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Disegnare un Matchmaker
========================

Stai utilizzando ora l’ambiente di sviluppo di Processing (PDE). Non è 
complesso: l'area grande è l'Editor di Testo e c'è una barra di pulsanti 
in alto, ovvero la barra degli strumenti. Sotto l'editor trovi l'Area 
Messaggi e, ancora più sotto, la Console. L'Area Messaggi serve per messaggi 
brevi, mentre la Console è per dettagli più tecnici.

Prendiamo familiarità con Processing e disegniamo un "matchmaker".

**Sketch**

Copia il codice qui sotto in Processing ed eseguilo. Apparirà una nuova finestra e verrà disegnato un simpatico personaggio.

.. code-block:: arduino

    size(200,200);
    background(92, 168, 0); 
    rectMode(CENTER);
    rect(100,120,20,60);
    ellipse(100,80,45,45);
    line(90,150,80,170);
    line(110,150,120,170);
    line(90,110,70,100);
    line(110,110,130,100);

.. image:: img/draw_one1.png

.. note:: 

    Se esegui il codice e l'Area Messaggi si colora di rosso con segnalazioni di errore, c’è qualcosa che non va nello sketch. Assicurati di copiare esattamente l'esempio: i numeri devono essere racchiusi tra parentesi, separati da virgole, e le righe devono terminare con un punto e virgola.


**Come funziona?**

Il concetto principale è immaginare la finestra di visualizzazione come un foglio quadrato.

Ogni pixel della finestra è un punto con coordinate (x, y) che determinano la posizione nello spazio. L’origine (0,0) delle coordinate si trova in alto a sinistra; la direzione positiva dell’asse X è verso destra, mentre quella dell’asse Y è verso il basso.

Il nostro compito è specificare quali forme e colori appariranno in ciascuna coordinata di pixel.

Ad esempio, per disegnare un rettangolo di larghezza 20 e altezza 60 con le coordinate (100,120) come punto centrale:

.. code-block:: arduino

    rectMode(CENTER);
    rect(100,120,20,60);

.. image:: img/draw_one_coodinate.png

Una volta compreso il rapporto tra la finestra e gli assi, questo sketch diventa semplice; basta comprendere alcune istruzioni base per il disegno di forme.

    * ``size(width, height)``: Definisce la larghezza e l’altezza della finestra in pixel.
    * ``background(red, green, blue)``: Imposta il colore di sfondo della finestra.
    * ``rectMode(mode)``: Modifica il punto da cui vengono disegnati i rettangoli, interpretando diversamente i parametri di ``rect()``.
    * ``rect(x, y, width, height)``: Disegna un rettangolo nella finestra.
    * ``ellipse(x, y, width, height)``: Disegna un’ellisse (ovale) nella finestra.
    * ``line(x1, y1, x2, y2)``: Disegna una linea (un percorso diretto tra due punti) nella finestra.

Per ulteriori dettagli, fai riferimento alla `Processing Reference <https://processing.org/reference/>`_.
