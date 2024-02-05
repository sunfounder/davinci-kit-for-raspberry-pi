こんにちはマウス
==================

このプロジェクトでは、マウスはポイントに向かって線を描き続けます。マウスを動かすと、ユニークな星の線が描画されます。マウスを押して、描画を再開します。

.. image:: img/hello_mouse1.png

**スケッチ**

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

    void mousePressed() {
        pointX=mouseX;
        pointY=mouseY;
        background(192, 16, 18);
    }

**原理**

前のプロジェクトは、アニメーションやインタラクションなしで単一の画像を描画していました。

インタラクティブなスケッチを作成する場合は、 ``setup()`` 関数と ``draw()`` 関数（これらは自動的に呼び出される組み込み関数）を追加してフレームを作成する必要があります。

* ``setup()`` : スケッチの開始時に1回だけ実行されます。  
* ``draw()`` ：繰り返し実行されます。通常、アニメーションを描画するためのスケッチを追加します。

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

上記のこのスケッチは、インタラクティブなスケッチとしてすでにスムーズに機能します。

次に、マウスクリックイベントを追加できます。 このイベントは、 ``mousePressed()`` 関数を使用して実装できます。この関数では、ステートメントを追加して、ターゲットポイントを更新し、画面をクリアします。

.. code-block:: arduino

    int pointX = 172;
    int pointY = 88;

    void setup() {
        size(400, 400);
        stroke(255);
        background(192, 16, 18);
    }

    void draw() {
        line(pointX, pointY, mouseX, mouseY);
    }

    void mousePressed() {
        pointX=mouseX;
        pointY=mouseY;
        background(192, 16, 18);
    }


詳細については `Processing Reference <https://processing.org/reference/>`_ を参照してください。
