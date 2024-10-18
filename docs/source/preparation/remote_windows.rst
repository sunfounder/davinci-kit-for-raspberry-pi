.. note::

    Bonjour, bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez dans l'univers du Raspberry Pi, d'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Profitez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Bénéficiez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales pendant les périodes de fête.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !


Utilisateurs de Windows
===========================

Si vous êtes un utilisateur de Windows, vous pouvez utiliser Windows PowerShell pour vous connecter à distance à votre Raspberry Pi.

#. Appuyez sur les touches de raccourci ``Windows`` + ``R`` de votre clavier pour ouvrir le programme **Exécuter**. Tapez ensuite **powershell** dans la boîte de saisie.

    .. image:: img/sp221221_135900.png
        :align: center

#. Vérifiez si votre Raspberry Pi est connecté au même réseau en tapant ``ping <hostname>.local``.

    .. code-block:: shell

        ping raspberrypi.local

    .. image:: img/sp221221_145225.png
        :width: 550
        :align: center

    * Si le terminal affiche ``La requête Ping n'a pas trouvé l'hôte <hostname>.local``, il est possible que le Raspberry Pi ne soit pas connecté au réseau. Vérifiez votre connexion réseau.
    * Si vous ne parvenez toujours pas à pinger ``<hostname>.local``, essayez de :ref:`get_ip` et de taper ``ping <adresse IP>`` à la place. (ex : ``ping 192.168.6.116``)
    * Si plusieurs réponses du type « Réponse de <adresse IP> : octets=32 temps<1ms TTL=64 » apparaissent, cela signifie que votre ordinateur peut accéder au Raspberry Pi.

#. Tapez ensuite ``ssh <nom_utilisateur>@<hostname>.local`` (ou ``ssh <nom_utilisateur>@<adresse IP>``).

    .. code-block:: shell

        ssh pi@raspberrypi.local

#. Le message suivant peut apparaître.

    .. code-block::

        The authenticity of host 'raspberrypi.local (192.168.6.116)' can't be established.
        ECDSA key fingerprint is SHA256:7ggckKZ2EEgS76a557cddfxFNDOBBuzcJsgaqA/igz4.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

    Input \"yes\".

#. Saisissez le mot de passe que vous avez défini précédemment. (Le mot de passe par défaut est ``raspberry``.)

    .. note::
        Lorsque vous saisissez le mot de passe, les caractères ne s'afficheront pas 
        dans la fenêtre. C'est tout à fait normal. Assurez-vous simplement de saisir 
        le mot de passe correctement.

#. Vous êtes maintenant connecté à votre Raspberry Pi et prêt à passer à l'étape suivante.

    .. image:: img/sp221221_140628.png
        :width: 550
        :align: center

Bureau à distance
---------------------

Si vous n'êtes pas à l'aise avec l'utilisation de la fenêtre de commande pour accéder à votre Raspberry Pi, vous pouvez également utiliser la fonctionnalité de bureau à distance pour gérer facilement vos fichiers sur votre Raspberry Pi via une interface graphique.

Nous allons utiliser `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

**Activer le service VNC**

Le service VNC est déjà installé dans le système. Par défaut, il est désactivé. 
Vous devez l'activer dans la configuration.

#. Entrez la commande suivante :

    .. raw:: html

        <run></run>

    .. code-block:: shell 

        sudo raspi-config

#. Choisissez **3** **Interfacing Options** en appuyant sur la touche fléchée vers le 
bas de votre clavier, puis appuyez sur la touche **Entrée**.

    .. image:: img/image282.png
        :align: center

#. Puis sélectionnez **P3 VNC**.

    .. image:: img/image288.png
        :align: center

#. Utilisez les touches fléchées du clavier pour sélectionner **<Yes>** -> **<OK>** -> **<Finish>** pour terminer la configuration.

    .. image:: img/mac_vnc8.png
        :align: center

**Se connecter via VNC**

#. Téléchargez et installez le `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ sur votre ordinateur.

#. Ouvrez-le une fois l'installation terminée. Entrez ensuite le nom d'hôte ou l'adresse IP et appuyez sur Entrée.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Après avoir saisi le nom d'utilisateur et le mot de passe de votre Raspberry Pi, cliquez sur **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Vous pouvez maintenant voir le bureau de votre Raspberry Pi.

    .. image:: img/login1.png
        :align: center
