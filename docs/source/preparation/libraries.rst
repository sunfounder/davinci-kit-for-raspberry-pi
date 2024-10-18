.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, d'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux nouvelles annonces de produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Bibliothèques
===============

Deux bibliothèques importantes sont utilisées pour la programmation avec Raspberry Pi : 
wiringPi et RPi.GPIO. Le système d'exploitation Raspberry Pi OS les installe par défaut, 
vous pouvez donc les utiliser directement.

RPi.GPIO
--------

Si vous êtes utilisateur de Python, vous pouvez programmer les GPIO avec l'API fournie 
par RPi.GPIO.

RPi.GPIO est un module permettant de contrôler les canaux GPIO du Raspberry Pi. 
Ce package fournit une classe pour gérer les GPIO sur un Raspberry Pi. Pour plus 
d'exemples et de documentation, consultez : http://sourceforge.net/p/raspberry-gpio-python/wiki/Home/.

Pour vérifier si RPi.GPIO est installé, tapez la commande suivante dans Python :

.. raw:: html

    <run></run>

.. code-block::

    python

.. image:: img/image27.png

Dans l'interface Python CLI, saisissez ``import RPi.GPIO``. Si aucune erreur n'est 
affichée, cela signifie que RPi.GPIO est bien installé.

.. raw:: html

    <run></run>

.. code-block::

    import RPi.GPIO

.. image:: img/image28.png

Pour quitter l'interface CLI de Python, tapez :

.. raw:: html

    <run></run>

.. code-block:: 

    exit()

.. image:: img/image29.png

.. _install_wiringpi:

Installer et vérifier WiringPi
---------------------------------

``wiringPi`` est une bibliothèque GPIO en langage C dédiée au Raspberry Pi. 
Elle est distribuée sous la licence GNU Lv3. Les fonctions de wiringPi sont 
similaires à celles du système de câblage de l'Arduino. Cela permet aux 
utilisateurs familiers avec Arduino de se servir plus facilement de wiringPi.

``wiringPi`` inclut de nombreuses commandes GPIO qui vous permettent de contrôler 
tous types d'interfaces sur le Raspberry Pi.

Veuillez exécuter les commandes suivantes pour installer la bibliothèque ``wiringPi`` :

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi 
    ./build

Vous pouvez tester si la bibliothèque wiringPi est installée correctement avec la 
commande suivante :

.. raw:: html

    <run></run>

.. code-block::

    gpio -v

.. image:: img/image30.png

Vérifiez les GPIO avec la commande suivante :

.. raw:: html

    <run></run>

.. code-block:: 

    gpio readall

.. image:: img/image31.png

Pour plus de détails sur wiringPi, vous pouvez consulter `WiringPi <https://github.com/WiringPi/WiringPi>`_.
