.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprenez et partagez** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux nouvelles annonces de produits et aux avant-premières.
    - **Réductions exclusives** : Profitez de réductions sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des promotions et à des cadeaux lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.10 Ventilateur rotatif
=============================

Dans ce projet, nous allons fabriquer un sprite étoile tournant ainsi qu’un ventilateur.

.. image:: img/1.17_header.png

Composants nécessaires
---------------------------

.. image:: img/1.17_list.png

Construisez le circuit
--------------------------

.. image:: img/1.17_image117.png

Chargez le code et voyez ce qui se passe
--------------------------------------------

Chargez le fichier de code (``1.10_rotating_fan.sb3``) dans Scratch 3.

Après avoir cliqué sur le drapeau vert sur la scène, cliquez sur le sprite étoile, puis lui et le moteur tourneront dans le sens des aiguilles d'une montre ; vous pouvez changer le sens de rotation en cliquant sur les deux sprites **flèche**. En cliquant à nouveau sur le sprite **étoile**, lui et le moteur cesseront de tourner.

Conseils sur le sprite
--------------------------

Supprimez le sprite par défaut, puis sélectionnez le sprite **Étoile** et le sprite **Flèche1**, puis copiez le sprite Flèche1 une fois.

.. image:: img/1.17_motor1.png

Dans l'option **Costumes**, changez le sprite Flèche2 pour une direction différente.

.. image:: img/1.17_motor2.png

Ajustez la taille et la position du sprite de manière appropriée.

.. image:: img/1.17_motor3.png


Conseils sur le code
------------------------

**Organigramme**

.. image:: img/1.17_scratch.png

Dans ce code, vous verrez deux blocs roses, tourner à gauche et tourner à droite, qui sont nos blocs personnalisés (fonctions).

.. image:: img/1.17_new_block.png

**Comment créer un bloc ?**

Apprenons à créer un bloc (fonction). Le bloc (fonction) peut être utilisé pour simplifier votre programme, notamment lorsque vous effectuez la même opération plusieurs fois. Mettre ces opérations dans un bloc nouvellement déclaré peut vous être très utile.

Trouvez d'abord **Mes blocs** dans la palette de blocs, puis sélectionnez **Créer un bloc**.

.. image:: img/1.17_motor4.png

Entrez le nom du nouveau bloc.

.. image:: img/1.17_motor5.png

Après avoir écrit la fonction du nouveau bloc dans la zone de codage, enregistrez-la, puis vous pourrez trouver le bloc dans la palette de blocs.

.. image:: img/1.17_motor6.png

**tourner à gauche**

Voici le code à l'intérieur du bloc tourner à gauche pour faire tourner le moteur dans le sens inverse des aiguilles d'une montre.

.. image:: img/1.17_motor12.png
  :width: 400

**tourner à droite**

Voici le code à l'intérieur du bloc tourner à droite pour faire tourner le moteur dans le sens des aiguilles d'une montre.

.. image:: img/1.17_motor11.png
  :width: 400



