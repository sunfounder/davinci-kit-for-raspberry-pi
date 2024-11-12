.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Gonfiare il Punto
===========================

Ora costruiamo un circuito in cui un pulsante permette di controllare la dimensione del punto.
Quando premiamo il pulsante, il punto si ingrandirà rapidamente; rilasciando il pulsante, il punto diminuirà gradualmente di dimensione, dando l’effetto di un palloncino che si gonfia.

.. image:: img/dot_size.png

**Collegamenti**

.. image:: img/button_pressed.png

**Sketch**

.. code-block:: arduino

    import processing.io.*;
    int buttonPin = 18; 

    float diameter;

    void setup() {
        size(200, 200);
        frameRate(64); // imposta la frequenza dei fotogrammi
        GPIO.pinMode(buttonPin, GPIO.INPUT_PULLUP); 
        diameter = width*0.5;
    }

    void draw() {
        if (GPIO.digitalRead(buttonPin)==GPIO.LOW) {
            if(diameter<width*0.8) {diameter=diameter+5;}
        } else {
            if(diameter>=width*0.2) {diameter--;}
        } 
        background(192, 16, 18);
        ellipse(width/2, height/2,diameter, diameter);
    }

**Come funziona?**



Questo progetto utilizza la funzione di input, a differenza dei due progetti precedenti che utilizzavano la funzione di output del GPIO.

La funzione ``GPIO.pinMode()`` imposta ``buttonPin`` in modalità input con pull-up, che porta il pin in stato HIGH per impostazione predefinita.

Successivamente, usiamo la funzione ``GPIO.digitalRead()`` per leggere il valore di ``buttonPin``. Quando il valore è LOW, significa che il pulsante è premuto e, a questo punto, facciamo aumentare il diametro del punto di 5; se il pulsante è rilasciato, il diametro del punto diminuirà di 1.

Per ulteriori dettagli, consulta `Processing Reference <https://processing.org/reference/>`_.
