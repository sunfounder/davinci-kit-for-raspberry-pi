.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers du Raspberry Pi, d'Arduino et d'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes post-achat et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux nouvelles annonces de produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos nouveaux produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales durant les fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Qu'est-ce que Node.js ?
===========================

Node.js a été lancé en mai 2009 et développé par Ryan Dahl. C'est un environnement d'exécution JavaScript basé sur le moteur Chrome V8. Node.js utilise un modèle d'E/S non-bloquant et basé sur des événements, permettant à JavaScript de s'exécuter côté serveur.

En résumé, Node.js, c'est JavaScript qui s'exécute sur le serveur. Si vous connaissez déjà JavaScript, vous apprendrez rapidement à utiliser Node.js.

Node.js utilise généralement la commande ``npm install xxx`` pour installer des packages tiers, ce qui nécessite l'installation de l'outil npm, similaire à l'outil pip en Python.

Installer ou mettre à jour Node.js et npm
---------------------------------------------

Exécutez les commandes suivantes pour installer et mettre à jour Node.js et npm.

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

Ensuite, vérifiez la version actuelle de Node avec la commande suivante :

.. raw:: html

    <run></run>

.. code-block::

    node -v

La commande suivante permet de vérifier la version actuelle de npm :

.. raw:: html

    <run></run>

.. code-block::

    npm -v