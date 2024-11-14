.. note::

    Bonjour et bienvenue dans la Communauté Facebook des passionnés de Raspberry Pi, Arduino et ESP32 de SunFounder ! Plongez plus profondément dans l'univers des Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des cadeaux et des promotions de vacances.

    👉 Prêt à explorer et à créer avec nous ? Cliquez [|link_sf_facebook|] et rejoignez-nous aujourd'hui !

.. _install_wiringpi:

Installer et vérifier WiringPi
=======================================

``wiringPi`` est une bibliothèque GPIO en langage C appliquée au Raspberry Pi. Elle est conforme 
à la licence GUN Lv3. Les fonctions de wiringPi sont similaires à celles du système de câblage 
d'Arduino. Elles permettent aux utilisateurs familiers avec Arduino d'utiliser wiringPi plus 
facilement.

``wiringPi`` comprend de nombreuses commandes GPIO qui vous permettent de contrôler toutes sortes 
d'interfaces sur le Raspberry Pi.

Veuillez exécuter la commande suivante pour installer la bibliothèque ``wiringPi`` :

.. raw:: html

   <run></run>

.. code-block::

    sudo apt-get update
    git clone https://github.com/WiringPi/WiringPi
    cd WiringPi 
    ./build

Vous pouvez tester si la bibliothèque wiringPi est installée avec succès en utilisant l'instruction suivante :

.. raw:: html

   <run></run>

.. code-block::

    gpio -v

.. image:: ../img/image30.png

Vérifiez le GPIO avec la commande suivante :

.. raw:: html

   <run></run>

.. code-block::

    gpio readall

.. image:: ../img/image31.png

Pour plus de détails sur wiringPi, vous pouvez vous référer à `WiringPi <https://github.com/WiringPi/WiringPi>`_.
