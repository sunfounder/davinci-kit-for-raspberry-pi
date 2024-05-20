.. note::

    こんにちは、SunFounderのRaspberry Pi & Arduino & ESP32愛好家コミュニティへようこそ！Facebook上でRaspberry Pi、Arduino、ESP32についてもっと深く掘り下げ、他の愛好家と交流しましょう。

    **参加する理由は？**

    - **エキスパートサポート**：コミュニティやチームの助けを借りて、販売後の問題や技術的な課題を解決します。
    - **学び＆共有**：ヒントやチュートリアルを交換してスキルを向上させましょう。
    - **独占的なプレビュー**：新製品の発表や先行プレビューに早期アクセスしましょう。
    - **特別割引**：最新製品の独占割引をお楽しみください。
    - **祭りのプロモーションとギフト**：ギフトや祝日のプロモーションに参加しましょう。

    👉 私たちと一緒に探索し、創造する準備はできていますか？[|link_sf_facebook|]をクリックして今すぐ参加しましょう！


Linux / UNIX ユーザー
===========================


#. ターミナルを開いて ``ssh <username>@<hostname>.local`` と入力してください。

    .. code-block::

        ssh pi@raspberrypi.local

#. 以下のメッセージが表示されます。

    .. code-block::

        The authenticity of host 'raspberrypi.local (192.168.6.116)' can't be established.
        ECDSA key fingerprint is SHA256:7ggckKZ2EEgS76a557cddfxFNDOBBuzcJsgaqA/igz4.
        Are you sure you want to continue connecting (yes/no/[fingerprint])? 

#. \"yes\" と入力してください。

    .. image:: img/mac-ssh-login.png
        :width: 550
        :align: center


#. パスワードを入力してください。 (デフォルトの場合は ``raspberry`` です。)

    .. .. image:: img/image23.png
    ..     :align: center

        .. note::
            パスワードは入力しても表示されませんので入力を間違えないように注意してください。 


#. これでRaspberry piに正常にログインできましたので、OSのアップデートを行います。

    .. image:: img/mac-ssh-terminal.png
        :width: 550
        :align: center