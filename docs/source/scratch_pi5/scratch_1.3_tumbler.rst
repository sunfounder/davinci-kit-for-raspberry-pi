.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprenez et partagez** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions exclusives** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des promotions et à des cadeaux lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.3 Culbuto
==================

Dans ce projet, nous allons fabriquer un jouet culbuto contrôlé par un interrupteur à bascule.

.. image:: img/1.3_header.png

Composants nécessaires
--------------------------

.. image:: img/1.3_component.png

Construire le circuit
------------------------

.. image:: img/1.3_fritzing.png

Charger le code et voir ce qui se passe
------------------------------------------

Chargez le fichier de code (``1.3_tumbler.sb3``) dans Scratch 3.

Lorsque l'interrupteur à bascule est en position verticale, le culbuto est debout. Si vous l'inclinez, le culbuto tombera. Remettez-le en position verticale, et il se redressera à nouveau.


Conseils sur le sprite
-------------------------

Sélectionnez **Sprite1** et cliquez sur **Costumes** en haut à gauche ; téléversez **tumbler1.png** et **tumbler2.png** depuis le chemin ``home/pi/davinci-kit-for-raspberry-pi/scratch/picture`` via le bouton **Téléverser un costume** ; supprimez les 2 costumes par défaut et renommez le sprite en **culbuto**.

.. image:: img/1.3_add_tumbler.png

Conseils sur le code
-----------------------

.. image:: img/1.3_title2.png
  :width: 400

Lorsque le drapeau vert est cliqué, l'état initial de gpio17 est défini sur bas.

.. image:: img/1.3_title4.png
  :width: 400

Lorsque gpio17 est bas (l'interrupteur à bascule est en position verticale), nous changeons le costume du sprite **culbuto** en tumbler1 (état vertical).

.. image:: img/1.3_title3.png
  :width: 400

Lorsque gpio17 est haut (l'interrupteur à bascule est incliné), nous changeons le costume du sprite **culbuto** en tumbler2 (état incliné).
