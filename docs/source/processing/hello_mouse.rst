.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Hello Mouse
==================

In questo progetto, il tuo mouse continuerà a tracciare linee verso un punto; muovi il mouse e disegnerai una linea unica di stelle. Premi il mouse per ricominciare il disegno.

.. image:: img/hello_mouse1.png

**Sketch**

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

    void mousePressed() {
        pointX=mouseX;
        pointY=mouseY;
        background(192, 16, 18);
    }

**Come funziona?**

Nel progetto precedente abbiamo disegnato una singola immagine senza animazione né interazione.

Se vogliamo creare uno sketch interattivo, dobbiamo aggiungere le funzioni ``setup()`` e ``draw()`` (funzioni incorporate che vengono richiamate automaticamente) per costruire il frame.

* ``setup()``: Viene eseguita una sola volta all'inizio dello sketch.
* ``draw()``: Viene eseguita in modo continuo, dove solitamente aggiungiamo lo sketch per disegnare l'animazione.

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

Questo sketch funziona già in modo fluido come sketch interattivo.

Successivamente, puoi aggiungere un evento di clic del mouse. Questo evento può essere implementato con la funzione ``mousePressed()``, dove aggiungiamo istruzioni per aggiornare il punto di destinazione e cancellare lo schermo.

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

    void mousePressed() {
        pointX=mouseX;
        pointY=mouseY;
        background(192, 16, 18);
    }

Per ulteriori dettagli, fai riferimento alla `Processing Reference <https://processing.org/reference/>`_.
