Show Number
=============================================

这节课，我们用processing让数码管从0到F显示出数字来。


**Wiring**

.. image:: img/image125.png


**Sketch**

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

**How it works?**

导入 ``processing.io.*`` ，利用其中的GPIO函数库控制数码管引脚。

定义数组 ``SegCode = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}``
代表数码管显示的数字从0到F。

``setup()`` 函数设置三个引脚SDI,RCLK,SRCLK为output,初始值为0。

``hc595_shift(int dat)`` 函数用于将 ``SegCode`` 移位到74HC595。
 
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
 
``n=(0x80 & (dat << i))`` 将dat左移i位然后和0x80按八位二进制进行与运算;与运算的规则是同为1，结果才为1，否则为0。
例如我们假设 dat=0x3f,i=2(即0011 1111左移两位变成1111 1100), 然后1111 1100 & 1000 0000 (0x80)) = 1000 0000.
这里的for循环起到将dat按八位分配给SDI(DS)的作用。
 
``digitalWrite(SRCLK, 1)`` SRCLK从0到1产生上升沿脉冲时，数据会从DS寄存器转移到移位寄存器;
 
``digitalWrite(RCLK, 1)`` RCLK从0到1产生上升沿脉冲时，数据会从移位寄存器转移到存储寄存器。

.. code::

	fill(0,25,88);
	textAlign(CENTER,CENTER);
	textSize(height*0.8);

在 ``setup()`` 中用到的``fill()`` 函数用于填充文字颜色, ``textAlign(CENTER,CENTER)`` 将文字居中, ``textSize(height*0.8)`` 改变文字高度为原来的0.8倍。

.. code::

	void draw() {

		background(255);
		int number = (frameCount%100)/10;
		text(number, width/2, height/2);
		hc595_shift(SegCode[number]);
	}

The ``frameCount`` is a seed, which is related to ``frameRate``.
By default ``frameRate`` is 60, which means that ``frameCount`` will accumulate 60 times per second.