.. note::

    Bonjour, bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez dans l'univers du Raspberry Pi, d'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Profitez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Bénéficiez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales pendant les périodes de fête.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Utilisateurs de Mac OS X
===========================

Pour les utilisateurs de Mac, accéder directement au bureau du Raspberry Pi 
via VNC est plus pratique que d'utiliser la ligne de commande. Vous pouvez y 
accéder via le Finder en entrant le mot de passe du compte une fois que le VNC 
est activé côté Raspberry Pi.

Notez que cette méthode ne chiffre pas les communications entre le Mac et le 
Raspberry Pi. La communication s'effectuera au sein de votre réseau domestique 
ou professionnel, donc même si elle n'est pas protégée, cela ne devrait pas poser 
de problème. Toutefois, si cela vous inquiète, vous pouvez installer une application 
VNC telle que `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

Sinon, il est pratique d'utiliser temporairement un moniteur (TV), une souris et un 
clavier pour accéder directement au bureau du Raspberry Pi et configurer le VNC. Si 
ce n'est pas possible, pas de souci, vous pouvez également utiliser la commande SSH 
pour ouvrir le shell Bash du Raspberry Pi et utiliser la commande pour configurer le VNC.


* :ref:`have_temp_monitor`
* :ref:`no_temp_monitor`


.. _have_temp_monitor:

Vous avez un moniteur temporaire (ou une TV) ?
-------------------------------------------------

#. Connectez un moniteur (ou une TV), une souris et un clavier au Raspberry Pi et 
allumez-le. Sélectionnez le menu en suivant les chiffres indiqués sur l'image.

    .. image:: img/mac_vnc1.png
        :align: center

#. L'écran suivant s'affichera. Activez **VNC** dans l'onglet **Interfaces**, puis cliquez sur **OK**.

    .. image:: img/mac_vnc2.png
        :align: center

#. Une icône VNC apparaît en haut à droite de l'écran et le serveur VNC démarre.

    .. image:: img/login1.png
        :align: center

#. Ouvrez la fenêtre du serveur VNC en cliquant sur l'icône **VNC**, puis cliquez sur le bouton **Menu** en haut à droite et sélectionnez **Options**.

    .. image:: img/mac_vnc4.png
        :align: center

#. L'écran suivant apparaîtra, où vous pourrez modifier les options.

    .. image:: img/mac_vnc5.png
        :align: center

    Réglez **Encryption** sur **Prefer off** et **Authentication** sur **VNC password**. 

#. En cliquant sur le bouton **OK**, l'écran de saisie du mot de passe s'affiche. Vous pouvez utiliser le même mot de passe que celui du Raspberry Pi ou un mot de passe différent. Entrez-le, puis cliquez sur **OK**.

    .. image:: img/mac_vnc16.png
        :align: center

    Vous êtes maintenant prêt à vous connecter depuis votre Mac. Vous pouvez déconnecter le moniteur.

**À partir de maintenant, l'opération se déroule sur le Mac.**

#. Sélectionnez **Se connecter au serveur** dans le menu du Finder, que vous pouvez ouvrir en effectuant un clic droit.

    .. image:: img/mac_vnc10.png
        :align: center

#. Saisissez ``vnc://<nom_utilisateur>@<nom_hôte>.local`` (ou ``vnc://<nom_utilisateur>@<adresse_IP>``). Après avoir saisi l'adresse, cliquez sur **Connecter**.

    .. image:: img/mac_vnc11.png
        :align: center

#. Un mot de passe vous sera demandé, saisissez-le.

    .. image:: img/mac_vnc12.png
        :align: center

#. Le bureau du Raspberry Pi s'affichera et vous pourrez le contrôler depuis le Mac.

    .. image:: img/mac_vnc13.png
        :align: center


.. _no_temp_monitor:

Vous n'avez pas de moniteur temporaire (ou de TV) ?
--------------------------------------------------------

* Vous pouvez utiliser la commande SSH pour accéder au shell Bash du Raspberry Pi.
* Bash est le shell par défaut standard pour Linux.
* Le shell est en fait une interface permettant à l'utilisateur d'interagir avec le système Unix/Linux.
* La plupart des actions que vous souhaitez effectuer peuvent être réalisées via le shell.
* Une fois le Raspberry Pi configuré, vous pourrez accéder au bureau du Raspberry Pi via le **Finder** depuis votre Mac.

#. Tapez ``ssh <nom_utilisateur>@<nom_hôte>.local`` pour vous connecter au Raspberry Pi.

    .. code-block:: shell

        ssh pi@raspberrypi.local

    .. image:: img/mac_vnc14.png

#. Le message suivant apparaîtra uniquement lors de la première connexion. Tapez **yes**.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Entrez le mot de passe du Raspberry Pi. Le mot de passe que vous saisissez ne sera pas visible, alors soyez vigilant.

    .. code-block::

        pi@raspberrypi.local's password: 
        Linux raspberrypi 5.15.61-v8+ #1579 SMP PREEMPT Fri Aug 26 11:16:44 BST 2022 aarch64

        The programs included with the Debian GNU/Linux system are free software;
        the exact distribution terms for each program are described in the
        individual files in /usr/share/doc/*/copyright.

        Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
        permitted by applicable law.
        Last login: Thu Sep 22 12:18:22 2022
        pi@raspberrypi:~ $ 

#. Configurez votre Raspberry Pi pour pouvoir vous connecter via VNC depuis votre Mac une fois connecté. La première étape consiste à mettre à jour le système d'exploitation avec les commandes suivantes.

    .. code-block:: shell

        sudo apt update
        sudo apt upgrade

    Lorsque vous êtes invité par ``Do you want to continue? [Y/n]``, tapez ``Y``.

    La mise à jour peut prendre du temps selon le volume de mises à jour disponibles à ce moment.

#. Entrez la commande suivante pour activer le **Serveur VNC**.

    .. code-block:: shell

        sudo raspi-config

#. L'écran suivant s'affichera. Sélectionnez **3 Interface Options** avec les flèches du clavier et appuyez sur **Entrée**.

    .. image:: img/image282.png
        :align: center

#. Sélectionnez ensuite **P3 VNC**.

    .. image:: img/image288.png
        :align: center

#. Utilisez les flèches du clavier pour sélectionner **<Yes>** -> **<OK>** -> **<Finish** pour terminer la configuration.

    .. image:: img/mac_vnc8.png
        :align: center


#. Le serveur VNC étant maintenant activé, nous allons modifier les paramètres pour la connexion depuis un Mac.

    Pour spécifier des paramètres pour tous les programmes de tous les comptes utilisateurs sur l'ordinateur, créez le fichier ``/etc/vnc/config.d/common.custom``.

    .. code-block:: shell

        sudo nano /etc/vnc/config.d/common.custom

    Après avoir saisi ``Authentication=VncAuthenter``, appuyez sur ``Ctrl+X`` -> ``Y`` -> ``Entrée`` pour enregistrer et quitter.

    .. image:: img/mac_vnc15.png
        :align: center

#. De plus, définissez un mot de passe pour la connexion via VNC depuis le Mac. Vous pouvez utiliser le même mot de passe que celui du Raspberry Pi ou un mot de passe différent.

    .. code-block:: shell

        sudo vncpasswd -service

#. Une fois la configuration terminée, redémarrez le Raspberry Pi pour appliquer les modifications.

    .. code-block:: shell

        sudo reboot

#. Sélectionnez **Se connecter au serveur** dans le menu du **Finder**, accessible par un clic droit.

    .. image:: img/mac_vnc10.png
        :align: center

#. Saisissez ``vnc://<nom_utilisateur>@<nom_hôte>.local`` (ou ``vnc://<nom_utilisateur>@<adresse_IP>``). Après avoir saisi l'adresse, cliquez sur **Connecter**.

    .. image:: img/mac_vnc11.png
        :align: center

#. Un mot de passe vous sera demandé, saisissez-le.

    .. image:: img/mac_vnc12.png
        :align: center

#. Le bureau du Raspberry Pi s'affichera et vous pourrez le contrôler depuis le Mac.

    .. image:: img/mac_vnc13.png
        :align: center
