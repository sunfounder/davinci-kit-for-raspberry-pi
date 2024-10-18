.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, de l'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et relevez vos défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des périodes de fête.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Blinking Dot
===========================

Dans ce projet, nous allons dessiner un point dans Processing qui clignotera en synchronisation avec la LED. Veuillez monter le circuit comme indiqué dans le schéma et exécuter le programme.

.. image:: img/blinking_dot.png
.. image:: img/clickable_dot_on.png

**Câblage**

.. image:: img/image49.png

**Code**

.. code-block:: arduino

    import processing.io.*;
    int ledPin = 17; 
    boolean state = true; 

    void setup() {
        size(100, 100);
        frameRate(2); // définir la fréquence d'images
        GPIO.pinMode(ledPin, GPIO.OUTPUT); // configurer le ledPin en mode sortie 
    }

    void draw() {
        state = !state;
        if (state==true) {
            GPIO.digitalWrite(ledPin, GPIO.LOW); // allumer la LED
            fill(255, 0, 0); // définir la couleur de remplissage de la LED allumée
        } else {
            GPIO.digitalWrite(ledPin, GPIO.HIGH); // éteindre la LED
            fill(155); // définir la couleur de remplissage de la LED éteinte
        } 
        ellipse(width/2, height/2, width*0.75, height*0.75);
    }

**Comment ça fonctionne ?**

Au début du programme, il est nécessaire d'importer la bibliothèque de fonctions GPIO de Processing avec ``import processing.io.*;``, ce qui est indispensable pour les expérimentations avec les circuits.

La **fréquence d'images** est la fréquence à laquelle les images apparaissent sur le panneau, exprimée en hertz (Hz). En d'autres termes, il s'agit aussi de la fréquence à laquelle la fonction ``draw()`` est appelée. Dans ``setup()``, en définissant la fréquence d'images à 2, ``draw()`` sera appelé toutes les 0,5 secondes.

Chaque appel de la fonction ``draw()`` inverse la valeur de ``state`` et l'évalue. Si la valeur est ``true``, la LED s'allume et le pinceau est rempli de rouge ; sinon, la LED est éteinte et le pinceau est rempli de gris.

Après cette évaluation, utilisez la fonction ``ellipse()`` pour dessiner un cercle. Il est important de noter que ``width`` et ``height`` sont des variables système utilisées pour stocker la largeur et la hauteur de la fenêtre d'affichage.

Il y a deux autres points importants à prendre en compte. Lorsque vous utilisez les GPIO, il est nécessaire d'utiliser la fonction ``GPIO.pinMode()`` pour définir l'état INPUT/OUTPUT de la broche, puis d'utiliser la fonction ``GPIO.digitalWrite()`` pour assigner une valeur (HIGH/LOW) à la broche.

.. note::

    Veuillez éviter d'utiliser ``delay()`` dans ``draw()`` car cela pourrait affecter le rafraîchissement de la fenêtre d'affichage.



Pour plus d'informations, veuillez vous référer à la `Processing Reference <https://processing.org/reference/>`_.
