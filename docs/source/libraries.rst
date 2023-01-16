ライブラリ
============

Raspberry Piを使用したプログラミングでは、wiringPiとRPi.GPIOという2つの重要なライブラリが使用されている。Raspberry PiのRaspbian OSイメージはデフォルトでそれらを実装するため、直接使用できる。

RPi.GPIO
------------

Pythonユーザーの場合、RPi.GPIOが提供するAPIを使用してGPIOをプログラミングできる。

RPi.GPIOは、Raspberry Pi GPIOチャネルを制御するモジュールである。このパッケージはRaspberry PiでGPIOを制御するクラスを提供する。例とドキュメントについては、次のURLにアクセスしてください： http://sourceforge.net/p/raspberry-gpio-python/wiki/Home/。

RPi.GPIOが実装されているかどうかをテストするには、Pythonを入力する：

.. raw:: html

    <run></run>

.. code-block:: 

    python

.. image:: media/image27.png


Python CLIで、「import RPi.GPIO」と入力する。エラーが表示されない場合は、RPi.GPIOの実装が完了したと意味する。


.. raw:: html

    <run></run>

.. code-block::

    import RPi.GPIO

.. image:: media/image28.png


Python CLIを終了する場合は、次を入力する：


.. raw:: html

    <run></run>

.. code-block:: 

    exit()

.. image:: media/image29.png



WiringPiをインストールして確認する
=======================================

``wiringPi`` は Raspberry Pi 用の C 言語 GPIO ライブラリです。 GUN Lv3に準拠。 wiringPi の機能は、Arduino の配線システムに似ています。 これにより、Arduino に精通しているユーザーは、wiringPi をより簡単に使用できるようになります。

``wiringPi`` には、Raspberry Pi のさまざまなインターフェイスを制御できるようにする多数の GPIO コマンドが含まれています。

次のコマンドを実行して ``wiringPi`` ライブラリをインストールしてください。


.. raw:: html

   <run></run>

.. code-block::

    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi 
    ./build

次の手順で、wiringPi ライブラリが正常にインストールされたかどうかをテストできます。


.. raw:: html

    <run></run>

.. code-block::

    gpio -v

.. image:: media/image30.png

次のコマンドで GPIO を確認します。

.. raw:: html

    <run></run>

.. code-block:: 

    gpio readall

.. image:: media/image31.png


配線Piの詳細については、 `WiringPi <https://github.com/WiringPi/WiringPi>`_ を参照してください。
