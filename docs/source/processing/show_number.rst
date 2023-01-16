.. _processing_show_num:

番号を表示
=============================================

このレッスンでは、processingを使用して7セグメントディスプレイを駆動し、0から9およびAからFの数値を表示します


**回路**

.. image:: img/image125.png


**スケッチ**

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

**原理**

``processing.io.*`` をインポートし、GPIO関数ライブラリを使用してdigital tube pinsを制御します。

配列を定義する ``SegCode = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}`` 16進数中で、0からFまでのセグメントコード配列を表す（共通カソード）

``setup()`` 関数は、3つのピンSDI、RCLK、SRCLKを出力として設定し、初期データを0として設定します。

``hc595_shift(int dat)`` 関数は、 ``SegCode`` を74HC595にシフトするために使用されます。
 
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
 
``n=(0x80 & (dat << i))`` は、 ``dat`` を ``i`` ビット左にシフトしてから、0x80と ``&`` 操作を実行することを意味します。

``&`` 演算のルールは、 ``&`` の両側が1の場合、結果は1であり、それ以外の場合、結果は0です。

たとえば、 ``dat=0x3f,i=2`` ( ``0011 1111 << 2`` shift to ``1111 1100`` ) , then ``1111 1100 & 1000 0000 (0x80)`` = ``1000 0000`` 。

最後に、 ``dat`` データをビット単位でSDI（DS）に割り当てます。
 
``digitalWrite(SRCLK, 1)`` SRCLKが0から1までの立ち上がりエッジパルスを生成すると、データはDSレジスタからシフトレジスタに転送されます。
 
``digitalWrite(RCLK, 1)`` RCLKが0から1までの立ち上がりエッジパルスを生成すると、データはシフトレジスタからストレージレジスタに転送されます。


.. code::

	fill(0,25,88);
	textAlign(CENTER,CENTER);
	textSize(height*0.8);

* ``fill()``: 図形の塗りつぶしに使用する色を設定します。
* ``textAlign(CENTER,CENTER)``: テキストを描画するための現在の配置を設定します。 パラメータ ``LEFT`` 、 ``CENTER`` 、および ``RIGHT`` は、 ``text()`` 関数のxおよびyパラメータの値に関連して文字の表示特性を設定します。
* ``textSize()``: 現在のフォントサイズを設定します。 このサイズは、以降の ``text()`` 関数のすべての呼び出しで使用されます。 フォントサイズはピクセル単位で測定されます。

これらの関数は、processingで表示されるテキストスタイルをカスタマイズできます。

.. code::

	void draw() {

		background(255);
		int number = (frameCount%100)/10;
		text(number, width/2, height/2);
		hc595_shift(SegCode[number]);
	}

``frameCount`` はシードであり、 ``frameRate`` に関連しています。 デフォルトでは、 ``frameRate`` は60です。これは、 ``frameCount`` が1秒間に60回累積することを意味します。

次に、processingと7セグメントディスプレイを使用して、0から9までの数字とAからFまでの数字を同時に表示できます。

詳細については `Processing Reference <https://processing.org/reference/>`_ を参照してください。