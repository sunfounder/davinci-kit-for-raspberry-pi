.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Mostrare un Numero
=============================================

In questa lezione, utilizziamo Processing per controllare un display a 7 segmenti e mostrare i numeri da 0 a 9 e da A a F.

**Collegamenti**

.. image:: img/image125.png

**Codice**

.. code-block:: arduino

	import processing.io.*;

	int SDI=17;   // ingresso dati seriale
	int RCLK=18;  // ingresso orologio memoria (STCP)
	int SRCLK=27; // ingresso orologio registro di scorrimento (SHCP)

	int[] SegCode= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71};

	void hc595_shift(int dat){
	  int i;

	  for(i=0;i<8;i++){
		int n=(0x80 & (dat << i)); 
		if ( n==0){
		  GPIO.digitalWrite(SDI, 0);
		} else {
		  GPIO.digitalWrite(SDI, 1);
		}
		GPIO.digitalWrite(SRCLK, 1);
		delay(1);
		GPIO.digitalWrite(SRCLK, 0);
	  }

		GPIO.digitalWrite(RCLK, 1);
		delay(1);
		GPIO.digitalWrite(RCLK, 0);
	}

	void setup() {
		size(400, 200);
		frameRate(10);
		
		GPIO.pinMode(SDI, GPIO.OUTPUT); 
		GPIO.pinMode(RCLK, GPIO.OUTPUT); 
		GPIO.pinMode(SRCLK, GPIO.OUTPUT); 
	  
		GPIO.digitalWrite(SDI, 0);
		GPIO.digitalWrite(RCLK, 0);
		GPIO.digitalWrite(SRCLK, 0);
		
		fill(0,25,88);
		textAlign(CENTER,CENTER);
		textSize(height*0.8);
	}

	void draw() {

		background(255);
		int number = (frameCount%100)/10;
		text(number, width/2, height/2);
		hc595_shift(SegCode[number]);
	}

**Come funziona?**

Importa ``processing.io.*`` e utilizza la libreria GPIO per controllare i pin del display a 7 segmenti.

Definisci l'array ``SegCode = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}``
che rappresenta un array di codici segmenti da 0 a F in esadecimale (catodo comune).

La funzione ``setup()`` imposta i tre pin SDI, RCLK e SRCLK come output e i dati iniziali a 0.

La funzione ``hc595_shift(int dat)`` viene utilizzata per inviare il codice dei segmenti al 74HC595.
 
.. code:: 

	void hc595_shift(int dat){
	  int i;

	  for(i=0;i<8;i++){
		int n=(0x80 & (dat << i));
		if ( n==0){
		  GPIO.digitalWrite(SDI, 0);
		} else {
		  GPIO.digitalWrite(SDI, 1);
		}
		GPIO.digitalWrite(SRCLK, 1);
		delay(1);
		GPIO.digitalWrite(SRCLK, 0);
	  }

		GPIO.digitalWrite(RCLK, 1);
		delay(1);
		GPIO.digitalWrite(RCLK, 0);
	}

``n=(0x80 & (dat << i))`` significa spostare i dati a sinistra di ``i`` bit e poi eseguire l'operazione ``&`` con 0x80.

La regola dell'operazione ``&`` è che il risultato è 1 solo quando entrambi i lati sono 1, altrimenti è 0.

Ad esempio, assumendo dat=0x3f e i=2 (0011 1111 << 2 diventa 1111 1100), allora 1111 1100 & 1000 0000 (0x80) = 1000 0000.

Infine, i dati vengono assegnati a SDI(DS) bit per bit.
 
 
``digitalWrite(SRCLK, 1)`` quando SRCLK genera un impulso in salita da 0 a 1, i dati vengono trasferiti dal registro DS al registro di scorrimento;
 
``digitalWrite(RCLK, 1)`` quando RCLK genera un impulso in salita da 0 a 1, i dati vengono trasferiti dal registro di scorrimento al registro di memoria.

.. code::

	fill(0,25,88);
	textAlign(CENTER,CENTER);
	textSize(height*0.8);

* ``fill()``: Imposta il colore utilizzato per riempire le forme.
* ``textAlign(CENTER,CENTER)``: Imposta l'allineamento corrente per disegnare il testo. I parametri ``LEFT``, ``CENTER`` e ``RIGHT`` definiscono le caratteristiche di visualizzazione delle lettere rispetto ai valori dei parametri x e y della funzione ``text()``.
* ``textSize()``: Imposta la dimensione corrente del font. Questa dimensione verrà utilizzata in tutte le chiamate successive alla funzione ``text()``. La dimensione del font è misurata in pixel.

Queste funzioni personalizzano lo stile del testo visualizzato su Processing.

.. code::

	void draw() {

		background(255);
		int number = (frameCount%100)/10;
		text(number, width/2, height/2);
		hc595_shift(SegCode[number]);
	}

Il ``frameCount`` è un seme, correlato a ``frameRate``.
Di default ``frameRate`` è 60, il che significa che ``frameCount`` si accumulerà 60 volte al secondo.

Così possiamo far sì che Processing e il display a 7 segmenti mostrino contemporaneamente i numeri da 0 a 9 e da A a F.

Per ulteriori informazioni, consulta `Processing Reference <https://processing.org/reference/>`_.
