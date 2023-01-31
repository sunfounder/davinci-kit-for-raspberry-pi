.. _processing_show_number:

Anzahl anzeigen
=============================================

In dieser Lektion verwenden wir die Verarbeitung, um eine 7-Segment-Anzeige anzusteuern, 
um eine Zahl von 0 bis 9 und A bis F anzuzeigen.

**Verdrahtung**

.. image:: img/image125.png


**Skizzieren**

.. code-block:: arduino

	import processing.io.*;

	int SDI=17;   //serial data input
	int RCLK=18;  //memory clock input(STCP)
	int SRCLK =27;   //shift register clock input(SHCP)


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

**Wie es funktioniert?**

Importieren Sie ``processing.io.*`` und verwenden Sie die GPIO-Funktionsbibliothek, 
um die digitalen Röhrenpins zu steuern.

Definiere das Array ``SegCode = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}``
was ein Segmentcode-Array von 0 bis. darstellt F in Hexadezimal (gemeinsame Kathode).


Die Funktion ``setup()`` setzt die drei Pins SDI,RCLK und SRCLK als Ausgang und die Anfangsdaten auf 0.

Die Funktion ``hc595_shift(int dat)`` wird verwendet, um den ``SegCode`` auf 74HC595 zu verschieben.
 
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
 
``n=(0x80 & (dat << i))`` bedeutet, dat um ``i`` Bits nach links zu verschieben und dann die ``&`` Operation mit 0x80 auszuführen.

Die Regel der ``&`` -Operation lautet, dass, wenn beide Seiten von ``&`` 1 sind, das Ergebnis 1 ist, andernfalls ist das Ergebnis 0.

Zum Beispiel nehmen wir ``an dat=0x3f`` , ``i=2`` (0011 1111 << 2 Verschiebung zu 1111 1100), dann  1111 1100 & 1000 0000 (0x80)) = 1000 0000.

Zuletzt weisen Sie SDI(DS) die Dat-Daten bitweise zu.
 
``digitalWrite(SRCLK, 1)`` wenn SRCLK einen Anstiegsflankenimpuls von 0 bis 1 erzeugt, werden die Daten vom DS-Register zum Schieberegister übertragen;
 
``digitalWrite(RCLK, 1)`` Wenn RCLK einen Anstiegsflankenimpuls von 0 auf 1 erzeugt, werden die Daten vom Schieberegister zum Speicherregister übertragen.

.. code::

	fill(0,25,88);
	textAlign(CENTER,CENTER);
	textSize(height*0.8);

* ``fill()`` : Legt die Farbe fest, die zum Füllen von Formen verwendet wird.
* ``textAlign(CENTER,CENTER)`` : Legt die aktuelle Ausrichtung zum Zeichnen von Text fest. Die Parameter ``LEFT``, ``CENTER``, und ``RIGHT`` setzen die Darstellungseigenschaften der Buchstaben in Relation zu den Werten für die x- und y-Parameter der Funktion ``text()`` .
* ``textSize()`` : Setzt die aktuelle Schriftgröße. Diese Größe wird in allen nachfolgenden Aufrufen der Funktion ``text()`` verwendet. Die Schriftgröße wird in Pixeleinheiten gemessen.

Diese Funktionen können den bei der Verarbeitung angezeigten Textstil anpassen.

.. code::

	void draw() {

		background(255);
		int number = (frameCount%100)/10;
		text(number, width/2, height/2);
		hc595_shift(SegCode[number]);
	}

Der ``frameCount`` ist ein Seed, der mit ``frameRate`` verwandt ist. 
Standardmäßig ist ``frameRate`` 60, was bedeutet, dass ``frameCount`` 60, was bedeutet, dass

Dann können wir Verarbeitung und 7-Segment-Anzeige die Zahl von 0 bis 9 und A bis F gleichzeitig anzeigen lassen.

Weitere Informationen finden Sie unter `Processing Reference <https://processing.org/reference/>`_.