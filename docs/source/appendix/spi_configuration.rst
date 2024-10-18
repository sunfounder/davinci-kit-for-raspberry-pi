.. note::

    Bonjour, bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et relevez les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux annonces de nouveaux produits et à des avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des concours et à des promotions spéciales lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

.. _spi_configuration:

Configuration SPI
-----------------------

**Étape 1** : Activez le port SPI de votre Raspberry Pi (Si vous l'avez déjà activé, 
passez cette étape. Si vous ne savez pas si cela a été fait, suivez les instructions 
ci-dessous).

.. raw:: html

   <run></run>

.. code-block:: 

    sudo raspi-config

**3 Options d'interfaçage**

.. image:: img/image282.png
   :align: center

**I3 SPI**

.. image:: img/i3spi.png
   :align: center

**<OUI>, puis cliquez sur <OK> et <Terminer>.**

.. image:: img/image286.png
   :align: center 

**Étape 2** : Vérifiez que les modules SPI sont chargés et actifs.

.. raw:: html

   <run></run>

.. code-block:: 

    ls /dev/sp*

Les lignes suivantes devraient apparaître (les numéros peuvent varier).

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
    Cette étape est destinée aux utilisateurs de Python. Si vous utilisez le langage C, 
    veuillez passer cette étape.
