.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, d'Arduino et d'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux nouvelles annonces de produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Carte d'Extension GPIO
==========================

Avant de commencer à apprendre les commandes, il est important de mieux connaître 
les broches du Raspberry Pi, un point essentiel pour les études futures.

Nous pouvons facilement connecter les broches du Raspberry Pi à une breadboard à 
l'aide d'une carte d'extension GPIO, afin d'éviter d'endommager les broches GPIO 
en raison de branchements ou de débranchements fréquents. Voici notre carte d'extension 
GPIO 40 broches et le câble GPIO pour Raspberry Pi modèle B+, 2 modèle B et 3, 4 modèle B.

.. image:: img/image32.png
    :align: center

**Numéro de Broche**

Les broches du Raspberry Pi peuvent être nommées de trois manières différentes : wiringPi, BCM et Board.

Parmi ces méthodes de dénomination, la carte d'extension GPIO 40 broches utilise la méthode BCM. Cependant, pour certaines broches spéciales, telles que les ports I2C et SPI, la dénomination est spécifique à leurs noms d'origine.

Le tableau ci-dessous présente les méthodes de dénomination WiringPi, Board ainsi que le nom intrinsèque de chaque broche sur la carte d'extension GPIO. Par exemple, pour la broche GPIO17, la dénomination Board correspond à 11, celle de WiringPi est 0, et le nom intrinsèque est GPIO0.

.. note::

    1) En langage C, la méthode de dénomination utilisée est WiringPi.
    
    2) En langage Python, les méthodes de dénomination utilisées sont Board et BCM, et la fonction ``GPIO.setmode()`` est utilisée pour les configurer.

.. image:: img/gpio_board.png