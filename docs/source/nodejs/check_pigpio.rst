.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers du Raspberry Pi, Arduino et ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Assistance d'experts** : Résolvez les problèmes post-achat et les défis techniques grâce à l’aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d’un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des concours et des promotions spéciales.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

Vérification de pigpio
==========================

**pigpio** est un module utilisé pour contrôler les canaux GPIO du Raspberry Pi. Ce package fournit plusieurs méthodes pour gérer les broches GPIO du Raspberry Pi. Pour plus d’exemples et de documentation, veuillez consulter : https://www.npmjs.com/package/pigpio.

Entrez la commande suivante pour installer la bibliothèque pigpio :

.. raw:: html

    <run></run>

.. code-block::

    npm install pigpio

Pour vérifier si la bibliothèque est installée correctement, changez de répertoire et accédez à `nodejs` :

.. raw:: html

    <run></run>

.. code-block::

    cd ~/davinci-kit-for-raspberry-pi/nodejs
    nodejs

.. image:: img/pigpio1.png

Ensuite, entrez la commande suivante : 

.. raw:: html

    <run></run>

.. code-block::

    require('pigpio')

.. image:: img/pigpio2.png

Si l’écran ci-dessus s’affiche, l’installation de la bibliothèque a été réussie.

Pour quitter l’interface CLI de Node, appuyez deux fois sur Ctrl+C.

.. image:: img/pigpio3.png