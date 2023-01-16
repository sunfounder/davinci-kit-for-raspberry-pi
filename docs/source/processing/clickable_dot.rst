.. _processing_click_dot:

クリック可能なドット
====================

このプロジェクトでは、LEDと同期して点滅するProcessingにドットを描画します。図に示すように回路を構築し、スケッチを実行してください。

.. image:: img/clickable_dot_on.png

**回路**

.. image:: img/image49.png

**スケッチ**

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

**原理**

このプロジェクトには :ref:`processing_blink` と多くの共通点がありますが、違いは、マウスイベントにトグル状態を設定することです。 これにより、LEDは自動的に点滅しませんが、マウスをクリックすると点灯および消灯します。

また、 ``mouseClicked()`` イベントでは、 ``dist()`` 関数を使用してクリック時のマウスの位置を決定します、マウスとドットの中心との距離が半径より小さい場合にのみ、ドットがクリックされたと見なされます。

詳細については、 `Processing Reference <https://processing.org/reference/>`_ を参照してください。