1.7 ドアベル
==================

今日はドアベルを作り、ステージ上のbutton3　spriteをクリックすると、ブザーが鳴ります。 もう一度クリックすると、ブザーが鳴り止みます。

.. image:: media/1.13_header.png

必要な部品
-----------------------

.. image:: media/1.13_list.png

回路を構築する
---------------------

.. image:: media/1.13_image106.png

コードをロードして、何が起こるかを確認します
--------------------------------------------


コードファイル( ``1.7_doorbell.sb3`` )をScratch3にロードします。

ステージ上の緑色の旗をクリックします。 ボタン3のspriteをクリックすると、青色に変わり、ブザーが鳴ります。 もう一度クリックすると、Button3 スプライトが灰色に戻り、ブザーが鳴り止みます。

Spriteに関するヒント
--------------------


デフォルトのspriteを削除してから、Button 3 のspriteを選択します。

.. image:: media/1.13_scratch_button3.png

次に、サイズを200に設定します。

.. image:: media/1.13_scratch_button3_size.png

コードに関するヒント
--------------------


.. image:: media/1.13_buzzer4.png
  :width: 400

このブロックを使用すると、spriteのcostumeを切り替えることができます。

.. image:: media/1.13_buzzer5.png
  :width: 400


gpio17をlowに設定して、ブザーを鳴らします。 high 設定するとブザーが鳴りません。

ここでは status スイッチを使用します。ここでは、コード全体を理解するのに役立つflowchartを使用します。

緑のフラグがクリックされると、status が最初に0に設定され、この時点でspriteがクリックされるのを待ちます。 
button3 spriteをクリックすると、button-b costume（青）としてcostumeに切り替わり、status が1に設定されます。
メインプログラムが status を受信すると 1として、0.1秒間隔でブザーを鳴らします。 
button3 をもう一度クリックすると、button-a costume（灰色）に切り替わり、status が再び0に設定されます。

.. image:: media/1.13_scratch_code.png

