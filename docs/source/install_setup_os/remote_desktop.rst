.. note::

    Bonjour et bienvenue dans la Communauté Facebook des passionnés de Raspberry Pi, Arduino et ESP32 de SunFounder ! Plongez plus profondément dans l'univers des Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des cadeaux et des promotions de vacances.

    👉 Prêt à explorer et à créer avec nous ? Cliquez [|link_sf_facebook|] et rejoignez-nous aujourd'hui !

.. _remote_desktop:

Accès à Distance au Bureau pour Raspberry Pi
==================================================

Pour ceux qui préfèrent une interface graphique (GUI) à l'accès en ligne de commande, le Raspberry Pi prend en charge la fonctionnalité de bureau à distance. Ce guide vous expliquera comment configurer et utiliser VNC (Virtual Network Computing) pour un accès à distance.

Nous vous recommandons d'utiliser `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ à cet effet.

**Activation du Service VNC sur Raspberry Pi**

Le service VNC est pré-installé dans le système d'exploitation Raspberry Pi OS mais est désactivé par défaut. Suivez ces étapes pour l'activer :

#. Entrez la commande suivante dans le terminal Raspberry Pi :

    .. raw:: html

        <run></run>

    .. code-block:: 

        sudo raspi-config

#. Naviguez jusqu'à **Options d'interface** à l'aide de la touche fléchée vers le bas, puis appuyez sur **Entrée**.

    .. image:: img/config_interface.png
        :align: center

#. Sélectionnez **VNC** dans les options.

    .. image:: img/vnc.png
        :align: center

#. Utilisez les touches fléchées pour choisir **<Yes>** -> **<OK>** -> **<Finish>** et finalisez l'activation du service VNC.

    .. image:: img/vnc_yes.png
        :align: center

**Connexion via VNC Viewer**

#. Téléchargez et installez `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ sur votre ordinateur personnel.

#. Une fois installé, lancez VNC Viewer. Entrez le nom d'hôte ou l'adresse IP de votre Raspberry Pi et appuyez sur Entrée.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Lorsque vous y êtes invité, entrez le nom d'utilisateur et le mot de passe de votre Raspberry Pi, puis cliquez sur **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Vous aurez maintenant accès à l'interface de bureau de votre Raspberry Pi.

    .. image:: img/bullseye_desktop.png
        :align: center

