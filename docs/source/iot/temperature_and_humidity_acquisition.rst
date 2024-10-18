.. note::

    Bonjour, bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 sur Facebook ! Plongez dans l’univers du Raspberry Pi, Arduino et ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et surmontez vos défis techniques avec l’aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des conseils et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et à des démonstrations exclusives.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions et cadeaux festifs** : Participez à des concours et à des promotions lors des fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Acquisition de Température et d'Humidité
===========================================

Dans ce projet, nous utilisons le capteur DHT11 pour lire la température et l'humidité ambiantes, puis les afficher sur Cloud4RPi.

Procédures expérimentales
----------------------------

Construisez le circuit.

.. image:: img/tem4.png
  :align: center

Ouvrez le fichier de code.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano temperature_and_humidity_acquisition.py

Trouvez la ligne ci-dessous et remplissez-la avec le bon token de l'appareil.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Exécutez le code.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 temperature_and_humidity_acquisition.py

Accédez à Cloud4RPi, ajoutez un nouveau panneau de contrôle nommé **project1**, et cliquez sur **Add Widget**.

.. image:: img/tem1.png
  :align: center

Sélectionnez un widget **Chart** avec les variables **Room Temp** et **CPU Temp** à afficher.

.. image:: img/tem2.png
  :align: center

Une fois ajoutées, vous verrez les courbes de température (Room Temp) et d'humidité (CPU Temp) s'afficher au fil du temps, et vous pourrez ajuster la fenêtre d'affichage en cliquant sur les options en bas à droite.

.. image:: img/tem3.png
  :align: center

Explication du code
----------------------

.. code-block:: python

    dht11 = DHT11.DHT11(17)

Instanciez un objet dht11.

.. code-block:: python

    def getTem():
        result = dht11.get_result()
        while True:
            if result:
                break
            else:
                result = dht11.get_result()
        return result[1]

La température (``result[1]``) est obtenue grâce à cette fonction, qui ne s'interrompra pas tant que la lecture n'est pas réussie.

.. code-block:: python

    def getHum():
        result = dht11.get_result()
        while True:
            if result:
                break
            else:
                result = dht11.get_result()
        return result[0]

L'humidité (``result[0]``) est obtenue par cette fonction, qui ne s'interrompra pas tant que la lecture n'est pas réussie.

.. code-block:: python

    variables = {
        'Room Temp': {
            'type': 'numeric',
            'bind': getTem
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': getHum
        },
    }

La température est stockée dans la clé ``'bind'`` de ``'Room Temp'``, et l'humidité dans la clé ``'bind'`` de ``'CPU Temp'``. Lorsque Cloud4RPi reçoit le dictionnaire ``variables``, il le convertit en un objet JavaScript reconnaissable par la page web.

