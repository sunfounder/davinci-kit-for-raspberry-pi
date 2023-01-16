1.10 回転扇
==================

このプロジェクトでは、回転する星のspriteとファンを作成します。

.. image:: media/1.17_header.png

必要な部品
-----------------------

.. image:: media/1.17_list.png

回路を構築する
---------------------

.. image:: media/1.17_image117.png

コードをロードして、何が起こるかを確認します
--------------------------------------------


コードファイル( ``1.10_rotating_fan.sb3`` )をScratch3にロードします。

ステージ上の緑色の旗をクリックした後、star spriteをクリックすると、それとモーターが時計回りに回転します。 2つの arrow spritesをクリックすると、回転方向を変更できます。 star spriteをもう一度クリックすると、star spriteとモーターの回転が停止します。

Spriteに関するヒント
--------------------

デフォルトのspriteを削除してから、Star spriteと Arrow1 spriteを選択し、Arrow1を1回コピーします。

.. image:: media/1.17_motor1.png

Costumes オプションで、Arrow2 spriteを別の方向のcostumeに変更します。

.. image:: media/1.17_motor2.png

spriteのサイズと位置を適切に調整します。

.. image:: media/1.17_motor3.png


コードに関するヒント
--------------------


**流れ図**

.. image:: media/1.17_scratch.png

このコードでは、カスタムブロック（関数）である2つのピンクのブロックが左に曲がって右に曲がっています。

.. image:: media/1.17_new_block.png

**ブロックを作る方法は？**

ブロック（関数）の作り方を学びましょう。 ブロック（関数）は、プログラムを単純化するために使用できます。特に同じ操作を複数回実行する場合です。 これらの操作を新しく宣言されたブロックに入れると、非常に便利です。

最初にblock paletteで My Blocks を見つけてから、Make a Block を選択します。

.. image:: media/1.17_motor4.png

新しいブロックの名前を入力します。

.. image:: media/1.17_motor5.png

coding areaに新しいブロックの機能を書き込んだ後、それを保存すると、blocks paletteでブロックを見つけることができます。

.. image:: media/1.17_motor6.png

**turn left**

これは、モーターを反時計回りに回転させるための左折ブロック内のコードです。

.. image:: media/1.17_motor12.png
  :width: 400

**turn right**

これは、モーターを時計回りに回転させるための右折ブロック内のコードです。



.. image:: media/1.17_motor11.png
  :width: 400



