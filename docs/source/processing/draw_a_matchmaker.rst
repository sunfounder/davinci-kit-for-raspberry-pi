.. note::

    Bonjour et bienvenue dans la communauté SunFounder pour les passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers du Raspberry Pi, de l'Arduino et de l'ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Assistance experte** : Résolvez vos problèmes après-vente et relevez des défis techniques avec l’aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et bénéficiez de sneak peeks.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions et cadeaux festifs** : Participez à des promotions spéciales et à des tirages au sort.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

Dessiner un Bonhomme d'Allumettes
=======================================

Vous utilisez maintenant l'environnement de développement de Processing (PDE). 
Il n’y a pas grand-chose à configurer : la grande zone est l’éditeur de texte, 
et une rangée de boutons se trouve en haut ; il s'agit de la barre d’outils. 
Sous l'éditeur se trouve la zone de messages, et en dessous, la console. La zone 
de messages affiche des informations en une ligne, tandis que la console montre 
des détails plus techniques.

Familiarisons-nous avec l’utilisation de Processing en dessinant un bonhomme d’allumettes.

**Code**

Copiez le code ci-dessous dans Processing et exécutez-le. Une nouvelle fenêtre s'ouvrira, 
et un bonhomme d'allumettes joyeux sera dessiné.

.. code-block:: arduino

    size(200,200);
    background(92, 168, 0); 
    rectMode(CENTER);
    rect(100,120,20,60);
    ellipse(100,80,45,45);
    line(90,150,80,170);
    line(110,150,120,170);
    line(90,110,70,100);
    line(110,110,130,100);

.. image:: img/draw_one1.png

.. note:: 

    Si, en exécutant le code, la zone de messages devient rouge et signale des erreurs, 
    c'est que quelque chose ne va pas dans le code. Assurez-vous de copier le code d'exemple 
    exactement tel qu’il est : les nombres doivent être placés entre parenthèses, séparés 
    par des virgules, et chaque ligne doit se terminer par un point-virgule.


**Comment ça marche ?**

L’élément clé ici est de comprendre que la fenêtre d'affichage peut être vue comme une feuille de papier.

Chaque pixel de la fenêtre d'affichage est une coordonnée (x,y) qui détermine la position 
d'un point dans l'espace. L'origine (0,0) se situe dans le coin supérieur gauche, la 
direction positive de l'axe X est horizontale vers la droite, et celle de l'axe Y est 
verticale vers le bas.

Nous devons simplement spécifier quelle forme et quelle couleur doivent apparaître à ces 
coordonnées.

Par exemple, dessinons un rectangle de 20 de large et de 60 de haut, avec les coordonnées 
(100,120) comme point central.

.. code-block:: arduino

    rectMode(CENTER);
    rect(100,120,20,60);

.. image:: img/draw_one_coodinate.png

Une fois que nous comprenons la relation entre la fenêtre d'affichage et les axes, ce 
code devient simple. Il suffit de connaître quelques instructions de base pour dessiner 
des formes.

    * ``size(width, height)`` : Définit les dimensions de la fenêtre d'affichage en pixels (largeur et hauteur).
    * ``background(red, green, blue)`` : Définit la couleur de fond de la fenêtre d'affichage.
    * ``rectMode(mode)`` : Modifie la position d'origine de dessin des rectangles, en fonction du mode défini.
    * ``rect(x, y, width, height)`` : Dessine un rectangle à l'écran. 
    * ``ellipse(x, y, width, height)`` : Dessine une ellipse (ovale) à l'écran. 
    * ``line(x1, y1, x2, y2)`` : Trace une ligne (un chemin direct entre deux points) sur l’écran.

For more please refer to `Processing Reference <https://processing.org/reference/>`_.






