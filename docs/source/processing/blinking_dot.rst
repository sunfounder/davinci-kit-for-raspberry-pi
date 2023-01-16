.. _processing_blink:

ドットの点滅
===========================

このプロジェクトでは、LEDと同期して点滅するProcessingにドットを描画します。図に示すように回路を構築し、スケッチを実行してください。

.. image:: img/blinking_dot.png
.. image:: img/clickable_dot_on.png


**回路**

.. image:: img/image49.png

**スケッチ**

.. code-block:: arduino

    import processing.io.*;
    int ledPin = 17; 
    boolean state = true; 

    void setup() {
        size(100, 100);
        frameRate(2); //set frame rate
        GPIO.pinMode(ledPin, GPIO.OUTPUT); //set the ledPin to output mode 
    }

    void draw() {
        state = !state;
        if (state==true) {
            GPIO.digitalWrite(ledPin, GPIO.LOW); //led on 
            fill(255, 0, 0); //set the fill color of led on
        } else {
            GPIO.digitalWrite(ledPin, GPIO.HIGH); //led off
            fill(155); //set the fill color of led off
        } 
        ellipse(width/2, height/2, width*0.75, height*0.75);
    }

**原理**

スケッチの最初に、回路実験に不可欠な ``importprocessing.io.*;`` を使用してProcessingのGPIO関数ライブラリを埋め込む必要があります。

**フレームレート** は、ボードに表示されるビットマップの周波数であり、
ヘルツ（Hz）で表されます。つまり、 ``draw()`` 関数が呼び出される頻度でもあります。 ``setup()`` で、 **フレームレート** を2に設定すると、0.5秒ごとに ``draw()`` が呼び出されます。

``draw()`` 関数の各呼び出しは、 ``state`` の逆を取り、その後それを決定します。
値が ``true`` の場合、LEDが点灯し、ブラシが赤で塗りつぶされます。
そうでない場合は、LEDがオフになり、ブラシが灰色で塗りつぶされます。

判定が終わったら、 ``ellipse()`` 関数を使って円を描きます。 ``width`` と ``height`` は、表示ウィンドウの幅と高さを格納するために使用されるシステム変数であることに注意してください。

注意すべき他の2つのポイントがあります。 GPIOを使用する場合は、 ``GPIO.pinMode()`` 関数を使用してピンのINPUT / OUTPUT状態を設定してから、 ``GPIO.digitalWrite()`` 関数を使用して値(HIGH/LOW)をピンに割り当てる必要があります。


.. note::

    ``draw()`` で ``delay()`` を使用しないようにしてください。これは、表示ウィンドウの更新に影響します。

詳細については、 `Processing Reference <https://processing.org/reference/>`_ を参照してください。