.. note::

    Bonjour, bienvenue dans la communauté des passionnés de SunFounder Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers de Raspberry Pi, Arduino et ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l’aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d’un accès anticipé aux annonces des nouveaux produits et aux présentations en avant-première.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions festives et cadeaux** : Participez à des concours et à des promotions spéciales pendant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

1.4 Lièvre
==============

Aujourd'hui, nous allons utiliser des boutons, un Raspberry Pi et Scratch pour créer un lièvre avec diverses animations !

Lorsque nous appuyons sur le premier bouton, le lièvre sur la scène change la couleur de son corps ; lorsque nous appuyons sur le deuxième bouton, le lièvre change de taille ; et lorsque nous appuyons sur le troisième bouton, le lièvre fait un pas en avant.

.. image:: img/1.4_header.png

Composants Requis
-------------------------

.. image:: img/1.4_list.png

Construire le Circuit
-----------------------

.. image:: img/1.4_scratch_button.png

Charger le Code et Observer le Résultat
------------------------------------------

Chargez le fichier de code (``1.4_hare.sb3``) dans Scratch 3.

Vous pouvez maintenant appuyer sur chacun des 3 boutons pour voir comment le lièvre sur la scène change.


Conseils pour le Sprite
--------------------------

Cliquez sur le bouton **Choisir un sprite** dans le coin inférieur droit de la zone des sprites, entrez **Hare** dans la barre de recherche, puis cliquez pour l’ajouter.

.. image:: img/1.4_button1.png

Supprimez Sprite1.

.. image:: img/1.4_button2.png

Conseils pour le Code
-------------------------

.. image:: img/1.4_button3.png
  :width: 400

Ceci est un bloc événementiel déclenché lorsque le niveau de GPIO17 est haut, ce qui signifie que le bouton est enfoncé à ce moment-là.

.. image:: img/1.4_button4.png
  :width: 400

Ceci est un bloc pour changer la couleur du **Lièvre**, la valeur va de 0 à 199, au-delà de 199, la couleur revient à 0.

.. image:: img/1.4_button5.png
  :width: 250

Ce bloc est utilisé pour changer la taille du sprite. Plus la valeur est grande, plus le sprite est grand.

.. note::
  Le sprite ne peut pas devenir infiniment grand ; sa taille maximale est liée à celle de l'image d'origine.

.. image:: img/1.4_button6.png
  :width: 200

Ce bloc permet de changer les costumes du sprite. Lorsque les costumes du **Lièvre** changent successivement, cela crée une série de mouvements cohérents. Par exemple, dans ce projet, cela permet au **Lièvre** de faire un pas en avant.
