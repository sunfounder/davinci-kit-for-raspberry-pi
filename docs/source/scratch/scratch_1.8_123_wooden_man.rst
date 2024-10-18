.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprenez et partagez** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus.
    - **Réductions exclusives** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions et cadeaux festifs** : Participez à des promotions et des cadeaux lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.8 Jeu du 1, 2, 3 Soleil
==============================

Aujourd'hui, nous allons jouer au jeu du 1, 2, 3 Soleil.

Cliquez sur le drapeau vert pour démarrer le jeu, maintenez la flèche droite du clavier pour faire avancer le sprite vers la droite. Si la lumière verte est allumée, le sprite peut bouger ; mais lorsque la LED rouge est allumée, vous devez arrêter de bouger le sprite, sinon le buzzer retentira sans cesse.

.. image:: img/1.14_header.png

Composants nécessaires
--------------------------

.. image:: img/1.14_component.png

Construisez le circuit
-------------------------

.. image:: img/1.14_fritzing.png


Chargez le code et voyez ce qui se passe
-------------------------------------------

Chargez le fichier de code (``1.8_123_wooden_man.sb3``) dans Scratch 3.

Lorsque la LED verte est allumée, vous pouvez utiliser la flèche droite pour contrôler **Avery** afin qu'il marche vers la droite ; lorsque la LED rouge est allumée, si vous continuez à faire avancer **Avery**, une alarme retentira.

Conseils sur le sprite
-------------------------

Supprimez le sprite par défaut, puis choisissez le sprite **Avery Walking**.

.. image:: img/1.14_wooden1.png
  :width: 400

Conseils sur le code
------------------------

.. image:: img/1.14_wooden2.png
  :width: 400

Initialisez toutes les broches à l'état haut.

.. image:: img/1.14_wooden3.png
  :width: 400

Lorsque le jeu commence, assignez la variable status à 1, indiquant que le sprite **Avery Walking** est en mouvement, puis réglez gpio18 sur bas, ce qui allume la LED verte pendant 5s.

.. image:: img/1.14_wooden4.png
  :width: 400

Réglez gpio18 sur haut, puis réglez gpio27 sur bas, ce qui éteint la LED verte et allume la LED jaune pendant 0,5s.

.. image:: img/1.14_wooden5.png
  :width: 400

Assignez la variable status à 0, ce qui signifie que le sprite **Avery Walking** ne bouge plus ; ensuite, réglez gpio27 sur bas et gpio17 sur haut, ce qui éteint la LED jaune et allume la LED rouge pendant 3s. Enfin, réglez gpio17 sur haut pour éteindre la LED rouge.

.. image:: img/1.14_wooden6.png
  :width: 400

Lorsque nous appuyons sur la flèche droite du clavier, nous devons passer au costume suivant du sprite **Avery Walking** pour voir Avery marcher vers la droite. Ensuite, nous devons vérifier la valeur de la variable **status**. Si elle est à 0, cela signifie que le sprite **Avery Walking** ne bouge pas, et le buzzer émettra un son pour vous avertir que vous ne pouvez pas appuyer à nouveau sur la flèche droite.

