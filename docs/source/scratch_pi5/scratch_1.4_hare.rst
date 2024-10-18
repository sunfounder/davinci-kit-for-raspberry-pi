.. note::

    Bonjour et bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprenez et partagez** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Profitez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions exclusives** : Bénéficiez de réductions sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des promotions et des cadeaux lors des fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.4 Lièvre
=================

Aujourd'hui, nous allons utiliser un bouton, un Raspberry Pi et Scratch pour créer un lièvre avec plusieurs transformations !

Lorsque nous appuyons sur le premier bouton, le lièvre dans la zone de scène changera de couleur ; lorsque nous appuyons sur le deuxième bouton, le lièvre changera de taille ; lorsque nous appuyons sur le troisième bouton, le lièvre fera un pas en avant.

.. image:: img/1.4_header.png

Composants nécessaires
--------------------------

.. image:: img/1.4_list.png

Construire le circuit
------------------------

.. image:: img/1.4_scratch_button.png

Charger le code et voir ce qui se passe
-----------------------------------------

Chargez le fichier de code (``1.4_hare.sb3``) dans Scratch 3.

Vous pouvez maintenant essayer d'appuyer sur chacun des 3 boutons pour voir comment le lièvre sur la scène réagit.


Conseils sur le sprite
-------------------------

Cliquez sur le bouton **Choisir un sprite** dans le coin inférieur droit de la zone des sprites, entrez **Hare** dans la barre de recherche, puis cliquez pour l'ajouter.

.. image:: img/1.4_button1.png

Supprimez **Sprite1**.

.. image:: img/1.4_button2.png

Conseils sur le code
------------------------

.. image:: img/1.4_button3.png
  :width: 400

Ceci est un bloc d'événement déclenché lorsque le niveau de GPIO17 est haut, ce qui signifie que le bouton est pressé à ce moment-là.

.. image:: img/1.4_button4.png
  :width: 400

Ce bloc permet de changer la couleur du **Lièvre**, la plage de valeurs est de 0 à 199, au-delà de 199, elle recommence à 0.

.. image:: img/1.4_button5.png
  :width: 250

Ce bloc est utilisé pour changer la taille du sprite, plus la valeur est élevée, plus le sprite sera grand.

.. note::
   Le sprite ne peut pas être agrandi indéfiniment, sa taille maximale est liée à la taille d'origine de l'image.

.. image:: img/1.4_button6.png
  :width: 200

Ce bloc permet de changer les costumes du sprite, et lorsque les costumes du **Lièvre** changent successivement, cela produit une série d'actions cohérentes. Par exemple, dans ce projet, cela permet au **Lièvre** de faire un pas en avant.

