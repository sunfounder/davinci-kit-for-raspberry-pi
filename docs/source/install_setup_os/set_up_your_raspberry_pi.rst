.. note::

    Bonjour et bienvenue dans la Communauté Facebook des passionnés de Raspberry Pi, Arduino et ESP32 de SunFounder ! Plongez plus profondément dans l'univers des Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des cadeaux et des promotions de vacances.

    👉 Prêt à explorer et à créer avec nous ? Cliquez [|link_sf_facebook|] et rejoignez-nous aujourd'hui !

Configurer votre Raspberry Pi
========================================

Configuration avec un écran
------------------------------

Utiliser un écran simplifie le processus de travail avec votre Raspberry Pi.

**Composants requis**

* Raspberry Pi
* Adaptateur secteur
* Carte Micro SD
* Adaptateur secteur pour l'écran
* Câble HDMI
* Écran
* Souris
* Clavier

**Étapes** :

#. Connectez la souris et le clavier au Raspberry Pi.

#. Utilisez le câble HDMI pour connecter l'écran au port HDMI du Raspberry Pi. Assurez-vous que l'écran est branché à une source d'alimentation et allumé.

#. Alimentez le Raspberry Pi avec l'adaptateur secteur. Le bureau de Raspberry Pi OS devrait apparaître à l'écran après quelques secondes.

    .. image:: img/bullseye_desktop.png
        :align: center

Configuration sans écran
------------------------------

Si vous n'avez pas de moniteur, la connexion à distance est une option viable.

**Composants requis**

* Raspberry Pi
* Adaptateur secteur
* Carte Micro SD

En utilisant SSH, vous pouvez accéder au shell Bash du Raspberry Pi, qui est le shell Linux par défaut. Bash offre une interface en ligne de commande pour effectuer diverses tâches.

Pour ceux qui préfèrent une interface graphique (GUI), la fonctionnalité de bureau à distance est une alternative pratique pour gérer les fichiers et les opérations.

Pour des tutoriels de configuration détaillés en fonction de votre système d'exploitation, consultez les sections suivantes :

.. toctree::

    remote_macosx
    remote_windows
    remote_linux
    remote_desktop
