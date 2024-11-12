.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Punto Cliccabile
==================

Abbiamo provato a disegnare grafica in movimento, rispondere agli eventi del mouse e controllare il LED. Quindi, perché non combinare queste funzioni disegnando un punto cliccabile per controllare il LED!

.. image:: img/clickable_dot_on.png

**Collegamenti**

.. image:: img/image49.png

**Sketch**

.. code-block:: arduino

    import processing.io.*; 
    boolean state = false;
    int ledPin = 17;

    void setup() {
        GPIO.pinMode(ledPin, GPIO.OUTPUT);
        background(255);
    }

    void draw() {
        if (state == true) { 
            GPIO.digitalWrite(ledPin, GPIO.LOW);
            fill(255, 0, 0);
        }else { 
            GPIO.digitalWrite(ledPin, GPIO.HIGH);
            fill(155);
        }
        ellipse(width/2, height/2, width*0.75, height*0.75);
    }

    void mouseClicked() {
        //  toggles state:
        if (2*dist(mouseX,mouseY,width/2, height/2)<=width*0.75)
            {state = !state;}
    }

**Come funziona?**


Questo progetto ha molte somiglianze con :ref:`Punto Lampeggiante`, la differenza è che lo stato alternato è inserito nell'evento del mouse.
Questo fa sì che il LED non lampeggi automaticamente, ma si accenda e si spenga con un click del mouse.

Nell'evento ``mouseClicked()``, la funzione ``dist()`` viene usata per determinare la posizione del mouse al momento del clic, e il punto viene considerato cliccato solo se la distanza tra il mouse e il centro del punto è inferiore al raggio.

Per maggiori dettagli, consulta il `Processing Reference <https://processing.org/reference/>`_.
