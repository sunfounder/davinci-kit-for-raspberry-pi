ドットを膨らませる
===========================

次に、ボタンでドットのサイズを制御できる回路を作成しましょう。 
ボタンを押すと、ドットがすぐに大きくなります。 ボタンを離すと、ドットが徐々に小さくなり、風船が膨らんでいるように見えます。

.. image:: img/dot_size.png

**回路**

.. image:: img/button_pressed.png

**スケッチ**

.. code-block:: arduino

    import processing.io.*;
    int buttonPin = 18; 

    float diameter;

    void setup() {
        size(200, 200);
        frameRate(64); //set frame rate
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

**原理**

このプロジェクトは、GPIOの出力機能を使用していた前の2つのプロジェクトと比較して、入力機能を使用しています。

``GPIO.pinMode()`` 関数は、 ``buttonPin`` をプルアップ入力モードに設定するために使用されます。これにより、ピンはデフォルト状態で自動的にHIGHになります。

次に、 ``GPIO.digitalRead()`` 関数を使用して ``buttonPin`` の値を読み取ります。 値がLOWの場合、ボタンが押されていることを意味します。その時点で、ドットの直径が5増加します。 ボタンを離すと、ドットの直径が1つ小さくなります。

詳細については、 `Processing Reference <https://processing.org/reference/>`_ を参照してください。