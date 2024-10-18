.. note::

    Bonjour, bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, de l'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et relevez vos défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des périodes de fête.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Point sur le Balançoire
===============================

Dans ce projet, 3 boutons sont connectés : l'un pour changer la taille du point, un autre pour changer la position et le dernier pour changer la couleur. Si vous appuyez sur les 3 boutons en même temps, vous obtiendrez un point qui se balance et dont la couleur varie.

.. image:: img/dancing_dot.png

**Câblage**

.. image:: img/circuit_dancing_dot.png

**Code**

.. code-block:: arduino

    import processing.io.*;

    // Définir une instance de l'objet Dot
    Dot myDot;

    // Définir les broches qui seront lues lors de l'appui sur les boutons
    int[] pins = { 18, 23, 24 };

    void setup() {
        size(400, 400);
        // Changer le mode de couleur en HSB
        colorMode(HSB, 360, 100, 100);
        noStroke();

        for (int i = 0; i < pins.length; i++) {
            GPIO.pinMode(pins[i], GPIO.INPUT_PULLUP);
        }

        // Créer un point au centre de l'écran 
        myDot = new Dot(width / 2, height / 2, 100, 255);
    }

    void draw() {
        background(0); 

        // Modifier les attributs du point en fonction des boutons pressés
        if (GPIO.digitalRead(pins[0]) == GPIO.LOW) {myDot.setSize();} 
        if (GPIO.digitalRead(pins[1]) == GPIO.LOW) {myDot.setPosition();} 
        if (GPIO.digitalRead(pins[2]) == GPIO.LOW) {myDot.setColor();} 

        // Mettre à jour l'état du point
        myDot.update();
        // Et l'afficher à l'écran
        myDot.show();
    }

    class Dot { 

        float initX;
        float initY;
        float currentX;
        float currentY;
        int positionRange = 60;

        float initSize;
        float currentSize;
        int sizeRange = 50;

        int initColor;
        int currentColor;
        int ColorRange = 80;

        float timer = 0.0;
        float speed = 0.06;

        Dot(float x, float y, float s, int c) {
            initX = x;
            initY = y;
            currentX = x;
            currentY = y;

            initSize = s;
            currentSize = s;

            initColor = c;
            currentColor = c;
        }

        void setSize() {
            currentSize = initSize + sizeRange * sin( timer );
        }

        void setPosition() {
            currentY = initY + positionRange * cos( timer *2);
        }

        void setColor() {
            currentColor = int(initColor + ColorRange * sin( timer ));
        }

        void update() {
            timer += speed;
        }

        void show() {
            fill(currentColor, 100, 100); 
            ellipse(currentX, currentY, currentSize, currentSize);
        }
    }

**Comment ça fonctionne ?**

Au lieu de dessiner le point directement, nous créons ici une classe ``Dot``.
Ensuite, nous déclarons un objet (dans ce cas, ``myDot``).

C'est un moyen simple de dessiner des points avec plusieurs propriétés identiques.
Par exemple, si nous ajoutons trois fonctions au point dans ce projet — changer la taille, changer la position et changer la couleur — alors chaque point que nous déclarons aura les mêmes fonctions.
Nous pouvons utiliser le même bouton pour leur faire accomplir la même action, ou bien utiliser des boutons différents pour contrôler chaque point séparément.

Utiliser des **classes** rend votre programme plus propre, plus puissant et plus flexible.

`Class (computer programming) - Wikipedia <https://en.wikipedia.org/wiki/Class_(computer_programming)>`_

Regardons maintenant de plus près la classe ``Dot``.

.. code-block:: arduino

    Dot(float x, float y, float s, int c)

Lors de la déclaration, elle nécessite quatre paramètres : les coordonnées X et Y de la position, la taille et la couleur (ici définie en mode `HSB color mode <https://en.wikipedia.org/wiki/HSL_and_HSV>`_).

Chaque paramètre est assigné à deux ensembles de valeurs (valeur initiale et valeur actuelle).

.. code-block:: arduino

    float initX;
    float initY;
    float currentX;
    float currentY;
    int positionRange = 60;

    float initSize;
    float currentSize;
    int sizeRange = 50;

    int initColor;
    int currentColor;
    int ColorRange = 80;

En plus des valeurs initiales et actuelles, il existe un ensemble de valeurs de plage. La valeur initiale est utilisée pour déterminer l'état initial du point (déterminé par les paramètres d'entrée), tandis que la valeur actuelle changera dans cette plage pour faire bouger le point.

Ainsi, à l'exception de la valeur de l'axe X, les valeurs actuelles des autres trois paramètres sont calculées comme suit :

.. code-block:: arduino

    void setSize() {
        currentSize = initSize + sizeRange * sin( timer );
    }

    void setPosition() {
        currentY = initY + positionRange * cos( timer *2);
    }

    void setColor() {
        currentColor = int(initColor + ColorRange * sin( timer ));
    }


Si vous êtes familier avec les fonctions trigonométriques, il ne devrait pas être difficile de comprendre les notions de `sine and cosine <https://en.wikipedia.org/wiki/Sine>`_, qui produisent un changement périodique et fluide (de -1 à 1) de la valeur actuelle du point.

Nous devons également ajouter une graine, ``timer``, pour gérer cette variation périodique. Elle s'incrémente d'une valeur fixe dans la méthode ``update()`` et est appelée dans ``draw()``.

.. code-block:: arduino

    void update() {
        timer += speed;
    }

Enfin, le point est affiché selon la valeur actuelle en utilisant la méthode ``show()``, qui est également appelée dans ``draw()``.

.. code-block:: arduino

    void show() {
        fill(currentColor, 100, 100); 
        ellipse(currentX, currentY, currentSize, currentSize);
    }

**Et ensuite ?**

Après avoir maîtrisé l'utilisation des classes, vous pouvez déjà dessiner plusieurs points avec les mêmes propriétés. Alors pourquoi ne pas essayer quelque chose de plus sophistiqué ? Par exemple, pourquoi ne pas dessiner un système binaire stable ou créer un jeu de type « DUET » ?


Pour plus d'informations, consultez la `Processing Reference <https://processing.org/reference/>`_.
