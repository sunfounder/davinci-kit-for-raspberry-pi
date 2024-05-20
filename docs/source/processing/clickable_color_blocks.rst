.. note::

    こんにちは、SunFounderのRaspberry Pi & Arduino & ESP32愛好家コミュニティへようこそ！Facebook上でRaspberry Pi、Arduino、ESP32についてもっと深く掘り下げ、他の愛好家と交流しましょう。

    **参加する理由は？**

    - **エキスパートサポート**：コミュニティやチームの助けを借りて、販売後の問題や技術的な課題を解決します。
    - **学び＆共有**：ヒントやチュートリアルを交換してスキルを向上させましょう。
    - **独占的なプレビュー**：新製品の発表や先行プレビューに早期アクセスしましょう。
    - **特別割引**：最新製品の独占割引をお楽しみください。
    - **祭りのプロモーションとギフト**：ギフトや祝日のプロモーションに参加しましょう。

    👉 私たちと一緒に探索し、創造する準備はできていますか？[|link_sf_facebook|]をクリックして今すぐ参加しましょう！

クリック可能なカラーブロック
============================


クリック可能なドットを描画してLEDを制御しようとしたので、さらに一歩進んで3色の正方形を描画してRGBカラーを調整しましょう!

.. image:: img/colorful_square.png

**回路**

.. image:: img/image61.png


**スケッチ**

.. code-block:: arduino

    import processing.io.*; // use the GPIO library

    int[] pins = { 17, 18, 27 };

    void setup() {
        for (int i = 0; i < pins.length; i++) {
            GPIO.pinMode(pins[i], GPIO.OUTPUT);
        }
        size(300, 100);
        background(255);
    }

    void draw() {
        fill(255, 0, 0);
        rect(0, 0, width/3, height);

        fill(0,255,0);
        rect(width/3, 0, 2*width/3, height);

        fill(0,0,255);
        rect(2*width/3, 0, width, height);
    }

    void mouseClicked() {
        for (int i = 0; i < pins.length; i++) {
            GPIO.digitalWrite(pins[i],GPIO.LOW);
        }
        if (mouseX<width/3){
            GPIO.digitalWrite(pins[0],GPIO.HIGH);
        }else if (mouseX>width/3&&mouseX<2*width/3){
            GPIO.digitalWrite(pins[1],GPIO.HIGH);
        }else if (mouseX>2*width/3){
            GPIO.digitalWrite(pins[2],GPIO.HIGH);
        }        
    }


**原理**

このプロジェクトは、マウスクリックイベントを決定するための条件を改善することを除いて、 :ref:`processing_click_dot` と多くの共通点があります。

最初に ``draw()`` で3つのカラーブロックを描画し、次にmouseX（マウスのX軸座標）の値に基づいてクリックされたカラーブロックを取得し、最後にRGBに対応する色を点灯させます。

**それと?**

光の追加に基づいて、RGBLEDディスプレイを7色にすることができます。緑に赤を追加すると黄色になります。 3つの原色すべてを足し合わせると白になります。 今、それを自分で試すことができます。

詳細については `Processing Reference <https://processing.org/reference/>`_ を参照してください。