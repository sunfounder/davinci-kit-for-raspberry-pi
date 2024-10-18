.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez au cœur de l’univers Raspberry Pi, Arduino et ESP32 en compagnie d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et relevez les défis techniques grâce à l’aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour approfondir vos compétences.
    - **Aperçus exclusifs** : Profitez d’un accès anticipé aux annonces de nouveaux produits et à des avant-premières.
    - **Réductions spéciales** : Bénéficiez de remises exclusives sur nos produits les plus récents.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

.. _i2c_config:

I2C Configuration
-----------------------

**Étape 1 :** Activez le port I2C de votre Raspberry Pi (Si vous l’avez déjà activé, 
ignorez cette étape ; si vous ne savez pas si c’est le cas, veuillez continuer).

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo raspi-config

**3 Options d'interfaçage**

.. image:: img/image282.png
    :align: center

**I4 I2C**

.. image:: img/I4i2c.jpeg
    :align: center

**<Oui>, puis <Ok> -> <Terminer>**

.. image:: img/image284.png
    :align: center

**Étape 2 :** Vérifiez si les modules i2c sont chargés et actifs.

.. raw:: html

   <run></run>
 
.. code-block:: 

    lsmod | grep i2c

Si les lignes suivantes apparaissent (les numéros peuvent varier), cela signifie que les modules sont actifs. Si ce n'est pas le cas, redémarrez le Raspberry Pi avec ``sudo reboot``.

.. code-block:: 

    i2c_dev                     6276    0
    i2c_bcm2708                 4121    0

**Étape 3 :** Installez i2c-tools.

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install i2c-tools

**Étape 4 :** Vérifiez l’adresse du périphérique I2C.

.. raw:: html

    <run></run>
  
.. code-block:: 

    i2cdetect -y 1      # Pour Raspberry Pi 2 et versions ultérieures



.. raw:: html

   <run></run>
 
.. code-block:: 

    i2cdetect -y 0      # Pour Raspberry Pi 1


.. code-block:: 

    pi@raspberrypi ~ $ i2cdetect -y 1
        0  1  2  3   4  5  6  7  8  9   a  b  c  d  e  f
    00:           -- -- -- -- -- -- -- -- -- -- -- -- -- 
    10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    40: -- -- -- -- -- -- -- -- 48 -- -- -- -- -- -- -- 
    50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
    70: -- -- -- -- -- -- -- -- 

Si un périphérique I2C est connecté, l’adresse de l’appareil sera affichée.

**Étape 5 :**

**Pour les utilisateurs C :** Installez libi2c-dev.

.. raw:: html

   <run></run>
 
.. code-block:: 

    sudo apt-get install libi2c-dev 

**Pour les utilisateurs Python :**

1. Activation de l’environnement virtuel.

.. note::
    
    * Avant l'activation, assurez-vous d'avoir créé un environnement virtuel. Pour plus de détails, consultez : :ref:`create_virtual`.

    * À chaque redémarrage du Raspberry Pi ou ouverture d’un nouveau terminal, il faudra réexécuter la commande suivante pour activer l’environnement virtuel.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Une fois l'environnement virtuel activé, le nom de l'environnement s'affiche avant l'invite de commande, indiquant que vous travaillez dans l'environnement virtuel.


2. Installez smbus pour I2C.

.. raw:: html

    <run></run>
 
.. code-block:: 

    sudo pip3 install smbus2


3. Sortir de l’environnement virtuel.

Lorsque vous avez terminé votre travail et souhaitez quitter l'environnement virtuel, il suffit de taper :

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Cela vous ramènera à l'environnement Python global du système.
