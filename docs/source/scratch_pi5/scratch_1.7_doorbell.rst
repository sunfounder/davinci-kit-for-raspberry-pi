.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprenez et partagez** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux annonces de nouveaux produits et à des avant-premières.
    - **Réductions exclusives** : Profitez de réductions sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des promotions et à des cadeaux lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.7 Sonnette
==================

Aujourd'hui, nous allons fabriquer une sonnette. Cliquez sur le sprite **Button 3** sur la scène, et le buzzer émettra un son ; cliquez à nouveau, et le buzzer cessera de sonner.

.. image:: img/1.13_header.png

Composants nécessaires
--------------------------

.. image:: img/1.13_list.png

Construire le circuit
---------------------

.. image:: img/1.13_image106.png

Charger le code et voir ce qui se passe
------------------------------------------

Chargez le fichier de code (``1.7_doorbell.sb3``) dans Scratch 3.

Cliquez sur le drapeau vert dans la scène. Lorsque nous cliquons sur le sprite **Button 3**, il devient bleu et le buzzer émet un son ; lorsque nous cliquons à nouveau, le sprite **Button 3** redevient gris et le buzzer cesse de sonner.


Conseils sur le sprite
--------------------------

Supprimez le sprite par défaut, puis choisissez le sprite **Button 3**.

.. image:: img/1.13_scratch_button3.png

Réglez ensuite la taille à 200.

.. image:: img/1.13_scratch_button3_size.png

Conseils sur le code
------------------------

.. image:: img/1.13_buzzer4.png
  :width: 400

Ce bloc vous permet de changer le costume du sprite.

.. image:: img/1.13_buzzer5.png
  :width: 400

Réglez gpio17 sur bas pour faire sonner le buzzer ; réglez-le sur haut et le buzzer cessera de sonner.

Le commutateur **status** est utilisé ici, et nous allons utiliser un organigramme pour vous aider à comprendre l'intégralité du code.

Lorsque le drapeau vert est cliqué, le **status** est d'abord réglé sur 0, et on attend que le sprite soit cliqué à ce moment-là ; si le sprite **button3** est cliqué, il passera au costume **button-b** (bleu) et le **status** sera réglé sur 1. Lorsque le programme principal reçoit le **status** à 1, il fait sonner le buzzer à un intervalle de 0,1 s. 
Si **button3** est cliqué à nouveau, il repassera au costume **button-a** (gris) et le **status** sera à nouveau réglé sur 0.

.. image:: img/1.13_scratch_code.png
