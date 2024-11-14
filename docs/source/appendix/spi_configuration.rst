.. note::

    Bonjour et bienvenue dans la Communauté Facebook des passionnés de Raspberry Pi, Arduino et ESP32 de SunFounder ! Plongez plus profondément dans l'univers des Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des cadeaux et des promotions de vacances.

    👉 Prêt à explorer et à créer avec nous ? Cliquez [|link_sf_facebook|] et rejoignez-nous aujourd'hui !

.. _spi_configuration:

SPI Configuration
========================

**Étape 1** : Activez le port SPI de votre Raspberry Pi (Si vous l'avez
déjà activé, passez cette étape ; si vous ne savez pas si cela a été fait,
veuillez continuer).

.. raw:: html

   <run></run>

.. code-block:: 

    sudo raspi-config

**3 Options d'interfaçage**

.. image:: img/image282.png
   :align: center

**I3 SPI**

.. image:: img/image285.png
   :align: center

**<OUI>, puis cliquez sur <OK> et <Finish>.**

.. image:: img/image286.png
   :align: center 

**Étape 2** : Vérifiez que les modules spi sont chargés et actifs.

.. raw:: html

   <run></run>

.. code-block:: 

    ls /dev/sp*

Ensuite, les codes suivants apparaîtront (les numéros peuvent être différents).

.. code-block:: 

    /dev/spidev0.0  /dev/spidev0.1

**Étape 3** : Installez le module Python SPI-Py.

.. raw:: html

   <run></run>

.. code-block:: 

    git clone https://github.com/lthiery/SPI-Py.git
    cd SPI-Py
    sudo python3 setup.py install

.. note::
    Cette étape est pour les utilisateurs de python, si vous utilisez le langage C, veuillez
    passer.

