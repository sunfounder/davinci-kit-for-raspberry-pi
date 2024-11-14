.. note::

    こんにちは、SunFounderのRaspberry Pi & Arduino & ESP32愛好家コミュニティへようこそ！Facebook上でRaspberry Pi、Arduino、ESP32についてもっと深く掘り下げ、他の愛好家と交流しましょう。

    **参加する理由は？**

    - **エキスパートサポート**：コミュニティやチームの助けを借りて、販売後の問題や技術的な課題を解決します。
    - **学び＆共有**：ヒントやチュートリアルを交換してスキルを向上させましょう。
    - **独占的なプレビュー**：新製品の発表や先行プレビューに早期アクセスしましょう。
    - **特別割引**：最新製品の独占割引をお楽しみください。
    - **祭りのプロモーションとギフト**：ギフトや祝日のプロモーションに参加しましょう。

    👉 私たちと一緒に探索し、創造する準備はできていますか？[|link_sf_facebook|]をクリックして今すぐ参加しましょう！

Linux/Unixユーザー
==========================

#. **Applications** -> **Utilities** に進んで、 **Terminal** を見つけて開きます。

    .. image:: img/image21.png
        :align: center

#. ``ping <hostname>.local`` と入力して、Raspberry Piが同じネットワークにいるか確認します。

    .. code-block:: shell

        ping raspberrypi.local


    * ターミナルが ``ping: cannot resolve <hostname>.local`` と表示した場合、Raspberry Piがネットワークに接続できていない可能性があります。ネットワーク設定を確認してください。
    * ``<hostname>.local`` にpingが通らない場合は、代わりに :ref:`get_ip` を取得して ``ping <IPアドレス>`` としてみてください。（例： ``ping 192.168.6.116``）
    * ``64 bytes from <IP address>: icmp_seq=0 ttl=64 time=0.464 ms`` のようなプロンプトが複数表示されれば、コンピュータはRaspberry Piにアクセスできています。

#. ``ssh <username>@<hostname>.local`` （または ``ssh <username>@<IPアドレス>``）と入力します。

    .. code-block:: shell

        ssh pi@raspberrypi.local

#. 次のようなメッセージが表示される場合があります。

    .. code-block::

        raspberrypi.local（192.168.6.116）の信頼性が確立できません。
        ECDSA key fingerprint is SHA256:7ggckKZ2EEgS76a557cddfxFNDOBBuzcJsgaqA/igz4.
        本当に接続を続行しますか（はい/いいえ/[fingerprint]）？

    \"はい\"と入力します。

#. 事前に設定したパスワードを入力します。（私の場合は ``raspberry`` です。）

#. Raspberry Piに接続できたので、次の手順に進むことができます。
