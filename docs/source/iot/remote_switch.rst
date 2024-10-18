.. note::

    Bonjour, bienvenue dans la communauté des passionnés de SunFounder Raspberry Pi & Arduino & ESP32 sur Facebook ! Plongez au cœur de l'univers du Raspberry Pi, Arduino et ESP32 avec d'autres amateurs.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des conseils et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et à des aperçus exclusifs.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos derniers produits.
    - **Promotions et cadeaux festifs** : Participez à des concours et promotions pendant les périodes festives.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Interrupteur à Distance
===========================

Dans ce projet, nous allons apprendre à utiliser le bouton Interrupteur de Cloud4RPi pour contrôler le relais, permettant ainsi de piloter la charge du relais (par exemple, une LED). Vous pouvez également changer la charge du relais par des appareils électroménagers, mais veillez à respecter les consignes de sécurité.

Procédures expérimentales
-----------------------------

Montez le circuit.

.. image:: img/relay1.png
    :align: center

Ouvrez le fichier de code.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano remote_switch.py

Trouvez la ligne ci-dessous et complétez-la avec le bon token de l'appareil.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Exécutez le code.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 remote_switch.py

Accédez à Cloud4RPi, ajoutez un nouveau panneau de contrôle nommé **project2** et cliquez sur **Add Widget** pour ajouter un widget **Switch**.

.. image:: img/relay2.png
    :align: center

Une fois ajouté, vous pouvez utiliser le widget Switch pour contrôler le relais.

.. image:: img/relay3.png
    :align: center

Explication du code
------------------------

.. code-block:: python

    RELAY_PIN = 18

Le relais est connecté au GPIO18 de la carte d'extension T.

.. code-block:: python

    GPIO.setmode(GPIO.BCM)
    GPIO.setup(RELAY_PIN, GPIO.OUT)

Configurez le mode de numérotation BCM et définissez ``RELAY_PIN`` en tant que sortie.

.. code-block:: python

    def relay_control(value=None):
        GPIO.output(RELAY_PIN, value)
        return GPIO.input(RELAY_PIN)

Cette fonction contrôle le relais en fonction de la valeur ``value`` et renvoie le niveau actuel du relais.

.. note::

    Comme le relais fonctionne à un niveau haut, le relais se ferme lorsque l'état de l'interrupteur est à **True** et s'ouvre lorsque l'état de l'interrupteur est à **False**.

.. code-block:: python

    variables = {
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': relay_control
        },
    }

En définissant la valeur de la clé ``'value'``, nous pouvons fixer la valeur initiale du widget Switch, puis lire en continu la valeur de la clé ``'value'`` et envoyer le niveau actuel de ``RELAY_PIN`` (la valeur renvoyée par la fonction ``relay_control()``) à Cloud4RPi.
