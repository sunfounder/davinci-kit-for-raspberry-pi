.. note::

    Bonjour, bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus exclusifs.
    - **Remises spéciales** : Profitez de réductions exclusives sur nos nouveaux produits.
    - **Promotions festives et cadeaux** : Participez à des concours et promotions pendant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Bibliothèques
================

Deux bibliothèques importantes sont utilisées pour la programmation avec 
Raspberry Pi : wiringPi et RPi.GPIO. Le système Raspberry Pi OS les installe 
par défaut, vous pouvez donc les utiliser directement.

RPi.GPIO
------------

Si vous êtes un utilisateur de Python, vous pouvez programmer les GPIO avec 
l'API fournie par RPi.GPIO.

RPi.GPIO est un module permettant de contrôler les canaux GPIO du Raspberry Pi. 
Ce package fournit une classe pour gérer les GPIO sur un Raspberry Pi. Pour des 
exemples et des documents, visitez : http://sourceforge.net/p/raspberry-gpio-python/wiki/Home/.

Pour vérifier si RPi.GPIO est installé, tapez dans Python :

.. raw:: html

    <run></run>

.. code-block:: 

    python

.. image:: img/image27.png


Dans l'interface CLI de Python, saisissez « import RPi.GPIO ». Si aucune erreur 
n'est affichée, cela signifie que RPi.GPIO est installé.

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
-------------------------------------

``wiringPi`` est une bibliothèque GPIO en langage C utilisée avec le Raspberry Pi. 
Elle est conforme à la licence GUN Lv3. Les fonctions de wiringPi sont similaires à 
celles du système de câblage d'Arduino, ce qui permet aux utilisateurs familiers avec 
Arduino de prendre en main wiringPi plus facilement.

``wiringPi`` inclut de nombreuses commandes GPIO qui vous permettent de contrôler 
toutes sortes d'interfaces sur le Raspberry Pi. 

Veuillez exécuter la commande suivante pour installer la bibliothèque ``wiringPi`` :

.. raw:: html

   <run></run>

.. code-block::

    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi 
    ./build

Vous pouvez vérifier si la bibliothèque wiringPi a été installée avec succès en 
utilisant l'instruction suivante :

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
