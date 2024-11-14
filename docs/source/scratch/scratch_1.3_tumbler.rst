.. note::

    Bonjour, bienvenue dans la communauté des passionnés de SunFounder Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers de Raspberry Pi, Arduino et ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l’aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d’un accès anticipé aux annonces des nouveaux produits et aux présentations en avant-première.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des concours et à des promotions spéciales pendant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

1.3 Culbuto
==================

Dans ce projet, nous allons créer un jouet culbuto contrôlé par un interrupteur à bascule.

.. image:: img/1.3_header.png

Composants Requis
------------------------

.. image:: img/1.3_component.png

Construire le Circuit
------------------------

.. image:: img/1.3_fritzing.png

Charger le Code et Observer le Résultat
------------------------------------------

Chargez le fichier de code (``1.3_tumbler.sb3``) dans Scratch 3.

Lorsque l’interrupteur à bascule est en position verticale, le culbuto reste debout. Si vous l’inclinez, le culbuto tombera également. Remettez-le en position verticale et le culbuto se redressera à nouveau.

Conseils pour le Sprite
--------------------------

Sélectionnez Sprite1 et cliquez sur **Costumes** dans le coin supérieur gauche ; téléchargez **tumbler1.png** et **tumbler2.png** depuis le chemin ``davinci-kit-for-raspberry-pi/scratch/picture`` via le bouton **Télécharger Costume** ; supprimez les 2 costumes par défaut, et renommez le sprite en **culbuto**.

.. image:: img/1.3_add_tumbler.png

Conseils pour le Code
------------------------

.. image:: img/1.3_title2.png
  :width: 400

Lorsque le drapeau vert est cliqué, l’état initial de gpio17 est réglé sur bas.

.. image:: img/1.3_title4.png
  :width: 400

Lorsque le pin17 est bas (l’interrupteur à bascule est en position verticale), nous changeons le costume du sprite culbuto pour tumbler1 (état debout).

.. image:: img/1.3_title3.png
  :width: 400

Lorsque le pin17 est haut (l’interrupteur à bascule est incliné), nous changeons le costume du sprite culbuto pour tumbler2 (état incliné).
