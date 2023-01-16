.. _spi_config:

SPI構成
-----------------------

ステップ1：Raspberry PiのSPIポートを有効にします（有効にしている場合はスキップします。有効にしたかどうかわからない場合は続行してください）。

.. raw:: html

    <run></run>

.. code-block:: 

    sudo raspi-config

**3 Interfacing options**

.. image:: media/image282.png
   :align: center

**P4 SPI**

.. image:: media/image285.png
   :align: center

<YES> をクリックし、<OK> と <Finish> をクリックします。 これで、 ``sudo reboot`` コマンドを使用してRaspberryPiを再起動できます。

.. image:: media/image286.png
   :align: center 


ステップ2： spiモジュールがロードされてアクティブになっていることを確認します。

.. raw:: html

    <run></run>

.. code-block:: 

    ls /dev/sp*

次に、次のコードが表示されます（番号は異なる場合があります）。


.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

ステップ3： PythonモジュールSPI-Pyをインストールします。

.. raw:: html

    <run></run>

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::

    この手順はPythonユーザー向けです。C言語を使用している場合は、スキップしてください。

