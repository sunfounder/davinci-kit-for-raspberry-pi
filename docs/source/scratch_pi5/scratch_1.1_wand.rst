.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprenez et partagez** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions exclusives** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des promotions et à des cadeaux lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.1 Baguette magique
======================

Aujourd'hui, nous allons utiliser une LED, un Raspberry Pi et Scratch pour créer un jeu amusant. Lorsque nous agiterons la baguette magique, la LED clignotera.

.. image:: img/1.1_header.png

Composants nécessaires
-------------------------

.. image:: img/1.1_list.png

Construire le circuit
------------------------

.. image:: img/1.1_image49.png

Ajouter l'extension GPIO
---------------------------

Cliquez sur le bouton **Ajouter une extension** en bas à gauche, puis ajoutez l'extension **Raspberry Pi GPIO**, que nous utilisons pour tous nos projets Scratch.

.. image:: img/1.1_scratchled1.png
    :align: center

.. image:: img/1.1_scratchled2.png
    :align: center

.. image:: img/1.1_scratchled3.png
    :align: center

Charger le code et voir ce qui se passe
-------------------------------------------

Chargez le fichier de code depuis votre ordinateur (``davinci-kit-for-raspberry-pi/scratch/code``) dans Scratch 3.

.. image:: img/1.1_scratch_step1.png

.. image:: img/1.1_scratch_step2.png

Après avoir cliqué sur la baguette magique dans la zone de scène, vous verrez la LED clignoter pendant deux secondes.

.. image:: img/1.1_step3.png


Conseils sur le sprite
-------------------------

Cliquez sur **Téléverser un sprite**.

.. image:: img/1.1_upload_sprite.png

Téléversez **Wand.png** depuis le chemin ``davinci-kit-for-raspberry-pi/scratch/picture`` vers Scratch 3.

.. image:: img/1.1_upload.png

Enfin, supprimez le sprite **Sprite1**.

.. image:: img/1.1_delete.png

Conseils sur le code
-----------------------

.. image:: img/1.1_LED1.png
  :width: 300

Ceci est un bloc d'événement dont la condition de déclenchement est le clic sur le drapeau vert dans la scène. Un événement déclencheur est requis au début de tout code, et vous pouvez sélectionner d'autres événements dans la catégorie **Événements** de la **palette de blocs**.

.. image:: img/1.1_events.png
  :width: 300

Par exemple, nous pouvons maintenant changer l'événement déclencheur en un clic sur le sprite.

.. image:: img/1.1_LED2.png
  :width: 300

Ceci est un bloc avec un nombre de cycles défini. Lorsque nous entrons le nombre 10, les événements à l'intérieur du bloc seront exécutés 10 fois.

.. image:: img/1.1_LED4.png
  :width: 300

Ce bloc est utilisé pour mettre le programme en pause pendant un certain temps, en secondes.

.. image:: img/1.1_LED3.png
  :width: 500

Étant donné que la méthode de dénomination BCM est utilisée dans Scratch, ce code définit GPIO17 (BCM17) à 0V (niveau bas). Comme la cathode de la LED est connectée à GPIO17, la LED s'allumera. En revanche, si vous définissez GPIO(BCM17) sur haut, la LED s'éteindra.
