.. note::

    Bonjour, bienvenue dans la communauté SunFounder pour les passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers du Raspberry Pi, d’Arduino et de l’ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et relevez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d’un accès anticipé aux annonces de nouveaux produits et aux aperçus en avant-première.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des tirages au sort et à des promotions spéciales pendant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

1.6 Lampe à Eau
==================

Aujourd'hui, nous allons utiliser une barre de LED, un Raspberry Pi et Scratch pour créer une **lampe à eau**.

Les LEDs de la barre de LED s'allumeront dans l'ordre indiqué par les flèches sur la scène.

.. image:: img/1.12_header.png

Composants Requis
--------------------

.. image:: img/1.12_list.png

Construire le Circuit
------------------------

.. image:: img/1.12_image66.png

Charger le Code et Observer le Résultat
-------------------------------------------

Chargez le fichier de code (``1.6_water_lamp.sb3``) depuis votre ordinateur dans Scratch 3.

En cliquant sur **Arrow1**, les LEDs de la barre s’allument une par une de la gauche vers la droite, puis s’éteignent dans le même ordre. En cliquant sur **Arrow2**, les LEDs s'allument dans l'ordre inverse.

Conseils pour les Sprites
----------------------------

Supprimez le sprite par défaut et choisissez le sprite **Arrow1**.

.. image:: img/1.12_graph1.png

Nous aurons besoin de 2 sprites **Arrow1**, que vous pouvez dupliquer en utilisant le bouton de duplication.

.. image:: img/1.12_scratch_duplicate.png

Cliquez sur le sprite **Arrow2** et modifiez la direction de la flèche en sélectionnant le costume 2.

.. image:: img/1.12_graph2.png




Créons maintenant une variable.

.. image:: img/1.12_graph3.png

Nommez-la **num**.

.. image:: img/1.12_graph4.png

De la même manière, créez une liste appelée **led**.

.. image:: img/1.12_graph6.png

Après ajout, vous devriez voir la variable **num** et la liste **led** s'afficher dans la zone de la scène.

Cliquez sur **+** pour ajouter 10 éléments à la liste et entrez les numéros de broches dans l’ordre suivant : (17,18,27,22,23,24,25,2,3,8).

.. image:: img/1.12_graph7.png

Conseils pour le Code
-------------------------

.. image:: img/1.12_graph10.png
  :width: 300

Ceci est un bloc d'événement déclenché lorsque le sprite actuel est cliqué.

.. image:: img/1.12_graph8.png
  :width: 300

La valeur initiale de la variable **num** détermine quelle LED s’allume en premier.

.. image:: img/1.12_graph9.png

Définissez la broche correspondant à **num** dans la liste **led** sur **low** pour allumer la LED, puis définissez la broche correspondant à **num-1** sur **high** pour éteindre la LED précédente.
