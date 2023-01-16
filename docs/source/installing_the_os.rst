オペレーティングシステムのインストール
======================================


**必要な部品**

================== ======================
Any Raspberry Pi   1 \* Personal Computer
1 \* Micro SD card 
================== ======================

**ステップ1**

ラズベリーパイが開発したグラフィカルなSDカード書き込みツールは、Mac OS、Ubuntu 18.04、Windowsで動作し、イメージをダウンロードして自動的にSDカードにインストールしてくれるので、ほとんどのユーザーにとって最も簡単なオプションです。

ダウンロードページにアクセスします。https://www.raspberrypi.org/software/。お使いのオペレーティングシステムに合ったラズベリーパイイメージャーのリンクをクリックし、ダウンロードが終了したら、それをクリックしてインストーラーを起動します。

.. image:: media/image11.png
    :align: center


**ステップ2**

インストーラーを起動すると、オペレーティングシステムが実行をブロックしようとする場合があります。例えば、Windowsでは次のようなメッセージが表示されます：

これがポップアップされたら、順次に「 More info 」と「Run anyway」をクリックした後、指示に従ってラズベリーパイイメージャーをインストールします。

.. image:: media/image12.png
    :align: center

**ステップ3**

SDカードをパソコンやノートパソコンのSDカードスロットに挿入します。

**ステップ4**

ラズベリーパイイメージャーで、インストールしたいオペレーティングシステムとSDカードを選択します。

.. image:: media/image13.png
    :align: center

.. note:: 

    1) 初回はインターネットに接続されている必要があります。

    2) そのオペレーティングシステムは、将来のオフラインでの使用のために保存されます(ラストダウンロード.キャッシュ、C:/Users/yourname/AppData/Local/Raspberry Pi/Imager/cache)。そのため、次にソフトを開いたときには、「リリース：日付、あなたのコンピュータにキャッシュされた」という表示になります。

**ステップ5**

使用中のSDカードを選択します。

.. image:: media/image14.png
    :align: center

**ステップ6**

「 Ctrl+Shift+X 」を押すと、SSHの有効化と無線LANの設定を行うための「 Advanced options 」ページが開きます。この2つの項目は必ず設定する必要がありますが、その他の項目はあなたの選択次第です。このイメージカスタマイズオプションを常に使用するように選択することができます。

.. image:: media/image15.png
    :align: center

Then scroll down to complete the wifi configuration and click **SAVE**.

.. note::

    **wifi country** should be set the two-letter `ISO/IEC alpha2
    code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements>`__ for
    the country in which you are using your Raspberry Pi, please refer to
    the following link: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements

.. image:: media/image16.png
    :align: center

**Step 7**

Click the **WRITE** button.

.. image:: media/image17.png
    :align: center

**Step 8**

If your SD card currently has any files on it, you may wish to back up
these files first to prevent you from permanently losing them. If there
is no file to be backed up, click **Yes**.

.. image:: media/image18.png
    :align: center

**Step 9**

After waiting for a period of time, the following window will appear to
represent the completion of writing.

.. image:: media/image19.png
    :align: center