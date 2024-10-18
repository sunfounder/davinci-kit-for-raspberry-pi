.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, de l'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et relevez vos défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des périodes de fête.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Configurer votre Raspberry Pi
================================

Si vous avez un écran
---------------------------

Si vous avez un écran, il sera facile pour vous de manipuler le Raspberry Pi.

**Composants requis**

* Tout modèle de Raspberry Pi  
* 1 * Adaptateur secteur
* 1 * Carte Micro SD
* 1 * Adaptateur secteur pour écran
* 1 * Câble HDMI
* 1 * Écran
* 1 * Souris
* 1 * Clavier

#. Insérez la carte SD que vous avez préparée avec Raspberry Pi OS dans le slot micro SD situé sous votre Raspberry Pi.

#. Branchez la souris et le clavier.

#. Connectez l'écran au port HDMI du Raspberry Pi et assurez-vous que votre écran est branché sur une prise murale et allumé.

    .. note::

        Si vous utilisez un Raspberry Pi 4, connectez l'écran au port HDMI0 (le plus proche du port d'alimentation).

#. Utilisez l'adaptateur secteur pour alimenter le Raspberry Pi. Après quelques secondes, le bureau de Raspberry Pi OS s'affichera.

    .. image:: img/login1.png
        :align: center

.. _no_screen:

Si vous n'avez pas d'écran
------------------------------

Si vous n'avez pas de moniteur, vous pouvez vous connecter à distance à votre Raspberry Pi.

Vous pouvez utiliser la commande SSH pour ouvrir le shell Bash de votre Raspberry Pi. Bash est le shell par défaut sous Linux. Le shell est une interface en ligne de commande permettant d'exécuter des instructions sur les systèmes Unix/Linux. La plupart de ce que vous souhaitez faire peut être accompli via le shell.

Si vous n'êtes pas à l'aise avec l'utilisation de la ligne de commande pour accéder à votre Raspberry Pi, vous pouvez également utiliser la fonctionnalité de bureau à distance pour gérer facilement les fichiers de votre Raspberry Pi à l'aide d'une interface graphique.

Consultez ci-dessous les tutoriels détaillés pour chaque système d'exploitation.

.. toctree::

    remote_macosx
    remote_windows
    remote_linux

