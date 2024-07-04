.. note::

    こんにちは、SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community on Facebookへようこそ！Raspberry Pi、Arduino、ESP32を愛好する仲間たちと一緒に、これらの技術を深く探求しましょう。

    **参加する理由**

    - **専門家のサポート**: コミュニティやチームの助けを借りて、購入後の問題や技術的な課題を解決します。
    - **学びと共有**: スキルを向上させるためのヒントやチュートリアルを交換します。
    - **独占プレビュー**: 新製品の発表やプレビューに早期アクセスできます。
    - **特別割引**: 最新の製品に対する独占割引を楽しめます。
    - **フェスティブプロモーションとギブアウェイ**: ギブアウェイやフェスティブプロモーションに参加できます。

    👉 私たちと一緒に探索と創造を始める準備はできましたか？[|link_sf_facebook|]をクリックして、今日参加しましょう！

What is Node.js？
=======================

Node.jsは2009年5月にRyan Dahlによって開発されました。これはChrome V8エンジンに基づいたJavaScriptランタイム環境です。イベント駆動型でノンブロッキングI/Oモデルを使用し、サーバーサイドの開発プラットフォームでJavaScriptを実行できます。

簡単に言えば、Node.jsはサーバー上で動作するJavaScriptです。JavaScriptに慣れている場合は、Node.jsを簡単に学ぶことができます。

Node.jsは通常、 ``npm install xxx`` コマンドを使用してサードパーティパッケージをインストールします。これにはnpmツールのインストールが必要で、pythonのpipツールに似ています。

Node.jsとnpmのインストールまたは更新
------------------------------------------

次のコマンドを実行して、Node.jsとnpmをインストールおよび更新します。

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

次のコマンドを使用して、現在のNodeバージョンを確認します。

.. raw:: html

    <run></run>

.. code-block::

    node -v

次のコマンドは、現在のnpmバージョンを確認します。

.. raw:: html

    <run></run>

.. code-block::

    npm -v
