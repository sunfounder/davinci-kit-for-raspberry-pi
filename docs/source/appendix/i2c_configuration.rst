.. note::

    こんにちは、SunFounderのRaspberry Pi & Arduino & ESP32愛好家コミュニティへようこそ！Facebook上でRaspberry Pi、Arduino、ESP32についてもっと深く掘り下げ、他の愛好家と交流しましょう。

    **参加する理由は？**

    - **エキスパートサポート**：コミュニティやチームの助けを借りて、販売後の問題や技術的な課題を解決します。
    - **学び＆共有**：ヒントやチュートリアルを交換してスキルを向上させましょう。
    - **独占的なプレビュー**：新製品の発表や先行プレビューに早期アクセスしましょう。
    - **特別割引**：最新製品の独占割引をお楽しみください。
    - **祭りのプロモーションとギフト**：ギフトや祝日のプロモーションに参加しましょう。

    👉 私たちと一緒に探索し、創造する準備はできていますか？[|link_sf_facebook|]をクリックして今すぐ参加しましょう！

.. _i2c_config:

I2C設定
==============

**ステップ1**: Raspberry PiのI2Cポートを有効にします（既に有効にしている場合はこのステップをスキップしてください。不明な場合は続けてください）。

.. raw:: html

   <run></run>
  
.. code-block:: 

    sudo raspi-config

**3 インターフェイスオプション**

.. image:: img/image282.png
    :align: center

**I4 I2C**

.. image:: img/image283.png
    :align: center

**<Yes>, では <Ok> -> <Finish>**

.. image:: img/image284.png
    :align: center

**ステップ2**: i2cモジュールがロードされているか確認します。

.. raw:: html

   <run></run>
 
.. code-block:: 

    lsmod | grep i2c

次のようなコードが表示されれば成功です（数字は異なる場合があります）。表示されない場合は、 ``sudo reboot`` でRaspberry Piを再起動してください。

.. code-block:: 

    i2c_dev                     6276    0
    i2c_bcm2708                 4121    0

**ステップ3**: i2c-toolsをインストールします。

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install i2c-tools

**ステップ4**: I2Cデバイスのアドレスを確認します。

.. raw:: html

   <run></run>
  
.. code-block:: 

    i2cdetect -y 1      # Raspberry Pi 2以降のバージョン用

.. raw:: html

   <run></run>
 
.. code-block:: 

    i2cdetect -y 0      # Raspberry Pi 1用


.. code-block:: 

    pi@raspberrypi ~ $ i2cdetect -y 1
        0  1  2  3   4  5  6  7  8  9   a  b  c  d  e  f
    00:           -- -- -- -- -- -- -- -- -- -- -- -- --
    10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    40: -- -- -- -- -- -- -- -- 48 -- -- -- -- -- -- --
    50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    70: -- -- -- -- -- -- -- --

I2Cデバイスが接続されている場合、そのデバイスのアドレスが表示されます。

**ステップ5**:

**C言語ユーザー向け**: libi2c-devをインストールします。

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install libi2c-dev 

**Pythonユーザー向け:**

1. 仮想環境の有効化。

.. 注意::
    
    * 有効化する前に、仮想環境を作成していることを確認してください。詳細はこちらを参照してください: :ref:`create_virtual`.

    * Raspberry Piを再起動するたびや、新しいターミナルを開くたびに、仮想環境を有効化するために次のコマンドを再度実行する必要があります。

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

仮想環境が有効化されると、コマンドラインのプロンプトの前に環境名が表示され、仮想環境内で作業していることが示されます。


2. I2C用のsmbusのインストール。

.. raw:: html

    <run></run>
 
.. code-block:: 

    sudo pip3 install smbus2


3. 仮想環境の終了。

作業を完了し、仮想環境から退出したい場合は、単純に次のコマンドを実行します:

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

これにより、システムのグローバルPython環境に戻ります。

