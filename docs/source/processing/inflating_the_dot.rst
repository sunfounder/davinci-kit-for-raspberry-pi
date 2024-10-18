.. note::

    Bonjour, bienvenue dans la communauté SunFounder pour les passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l’univers du Raspberry Pi, Arduino et ESP32 avec d’autres amateurs.

    **Pourquoi nous rejoindre ?**

    - **Support d’experts** : Résolvez vos problèmes après-vente et relevez des défis techniques avec l’aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et bénéficiez d’aperçus exclusifs.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos nouveaux produits.
    - **Promotions festives et cadeaux** : Participez à des promotions spéciales et à des tirages au sort.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

Gonfler le point
===========================

Nous allons maintenant construire un circuit permettant de contrôler la taille d’un point à l’aide d’un bouton.  
Lorsque nous appuyons sur le bouton, le point grossit rapidement ; lorsque nous le relâchons, le point diminue progressivement, donnant l’impression qu’un ballon se gonfle.

.. image:: img/dot_size.png

**Câblage**

.. image:: img/button_pressed.png

**Code**

.. code-block:: arduino

    import processing.io.*;
    int buttonPin = 18; 

    float diameter;

    void setup() {
        size(200, 200);
        frameRate(64); //set frame rate
        GPIO.pinMode(buttonPin, GPIO.INPUT_PULLUP); 
        diameter = width*0.5;
    }

    void draw() {
        if (GPIO.digitalRead(buttonPin)==GPIO.LOW) {
            if(diameter<width*0.8) {diameter=diameter+5;}
        } else {
            if(diameter>=width*0.2) {diameter--;}
        } 
        background(192, 16, 18);
        ellipse(width/2, height/2,diameter, diameter);
    }

**Comment ça fonctionne ?**


Contrairement aux deux projets précédents qui utilisaient la fonction de sortie du GPIO, ce projet exploite la fonction d'entrée.

La fonction ``GPIO.pinMode()`` est utilisée pour configurer ``buttonPin`` en mode entrée avec résistance pull-up, ce qui force automatiquement la broche à un état HAUT par défaut.

Ensuite, la fonction ``GPIO.digitalRead()`` permet de lire la valeur de ``buttonPin``. Lorsque cette valeur est BAS, cela signifie que le bouton est enfoncé ; dans ce cas, le diamètre du point augmente de 5. Si le bouton est relâché, le diamètre du point diminue de 1.

Pour plus de détails, consultez la `Processing Reference <https://processing.org/reference/>`_.
