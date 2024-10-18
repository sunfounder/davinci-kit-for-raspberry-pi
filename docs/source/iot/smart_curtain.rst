.. note::

    Bonjour, bienvenue dans la communauté des passionnés de SunFounder Raspberry Pi & Arduino & ESP32 sur Facebook ! Plongez au cœur de l'univers du Raspberry Pi, Arduino et ESP32 avec d'autres amateurs.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des conseils et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et à des aperçus exclusifs.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions et cadeaux festifs** : Participez à des concours et promotions pendant les périodes festives.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Rideau Intelligent
=====================

Dans ce projet, nous allons simuler un scénario où les rideaux s'ouvrent ou se ferment automatiquement en fonction de la luminosité de la pièce.  
Lorsque la photorésistance détecte que la pièce est trop lumineuse, le Raspberry Pi actionne le moteur pour fermer le rideau ; lorsqu'il fait trop sombre, le rideau s'ouvre.

Vous pouvez également consulter l'évolution de la luminosité intérieure via le widget texte sur Cloud4RPi, ou contrôler la lampe avec le widget interrupteur (pour des raisons de sécurité, nous utilisons une LED dans cet exemple à la place d'une lampe électrique).



Procédures expérimentales
----------------------------

Construisez le circuit.

.. image:: img/window1.png
    :align: center

Ouvrez le fichier de code.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano smart_curtain.py

Trouvez la ligne ci-dessous et complétez-la avec le bon token de l'appareil.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Exécutez le code.

.. raw:: html

    <run></run>

.. code-block:: 

    sudo python3 smart_curtain.py

Accédez à Cloud4RPi, ajoutez un nouveau panneau de contrôle nommé **project4** et ajoutez 3 widgets (Switch, Text et Chart) via le bouton **Add Widget**.

.. image:: img/window2.png
    :align: center

Une fois ajouté, vous pouvez utiliser le widget Switch pour contrôler la LED ; la valeur de la photorésistance sur le widget texte sera mise à jour toutes les minutes.  
Lorsque la valeur est supérieure à 100, le moteur tourne dans le sens horaire pendant 5 secondes ; si la valeur est inférieure à 20, le moteur tourne dans le sens antihoraire pendant 5 secondes. Vous pouvez suivre l'évolution de ces valeurs sur le widget graphique.

Explication du code
-----------------------

.. code-block:: python

    def getValue():
        analogVal = ADC0834.getResult()
        if analogVal > 100:
            move.clockwise()
            sleep(5)
            move.stop()
        elif analogVal < 20:
            move.contrarotate()
            sleep(5)
            move.stop()
        return analogVal

Lit la valeur du canal CH0 (auquel est connecté la photorésistance) de l'ADC0834. Si la valeur est supérieure à 100, le moteur tourne dans le sens horaire pendant 5 secondes. Si la valeur est inférieure à 20, le moteur tourne dans le sens antihoraire pendant 5 secondes.

.. code-block:: python

    'CPU Temp': {
        'type': 'numeric',
        'bind': getValue
    },

Passez la fonction ``getValue()`` dans la clé ``'bind'`` comme fonction de rappel, afin que la valeur de luminosité (valeur de retour de la fonction ``getValue()``) puisse être envoyée au widget texte.

