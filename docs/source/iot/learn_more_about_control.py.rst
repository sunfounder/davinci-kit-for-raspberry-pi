.. note::

    Bonjour, bienvenue dans la communauté des passionnés de SunFounder Raspberry Pi & Arduino & ESP32 sur Facebook ! Plongez au cœur des projets avec Raspberry Pi, Arduino et ESP32 aux côtés d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprenez & Partagez** : Échangez des conseils et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Obtenez un accès anticipé aux nouvelles annonces de produits et à des avant-premières.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos produits les plus récents.
    - **Promotions festives et tirages au sort** : Participez à des concours et à des promotions pendant les fêtes.

    👉 Prêt(e) à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

.. _control_py:

Learn More about ``control.py``
====================================

Afin de mieux comprendre les projets à venir, examinons le code exemple officiel fourni par Cloud4RPi.

.. note::

    Veuillez compléter la section précédente :ref:`Quick Guide on Cloud4RPi` avant de consulter cette partie.

Ouvrez le fichier ``control.py``.

.. raw:: html

   <run></run>

.. code-block:: 

    cd cloud4rpi-raspberrypi-python
    sudo nano control.py

Cloud4RPi attribue un **token de périphérique** pour chaque appareil, et vous devez renseigner la variable DEVICE_TOKEN avec le bon token pour connecter le périphérique correspondant.

.. code-block:: python

    DEVICE_TOKEN = '556UfPaRw6r6rDKYfzx5Nd1jd'

``variables`` est un dictionnaire à deux dimensions, et la valeur correspondant à chacune de ses clés est également un dictionnaire.

Les clés du dictionnaire ``variables`` sont : ``'Room Temp'``, ``'LED On'``, ``'CPU Temp'``, ``'STATUS'``, ``'Location'``, qui correspondent aux données affichées sur les widgets du tableau de bord de contrôle.

La valeur de chaque clé dans le dictionnaire ``variables`` est elle-même un dictionnaire, dont les clés sont identiques, où la valeur de la clé ``'bind'`` est une fonction capable de retourner le contenu transmis, et ``'type'`` est le type de données du contenu transmis (``'numeric'`` pour un type numérique, ``'string'`` pour une chaîne de caractères, ``'bool'`` pour un booléen, et ``'location'`` pour une liste contenant deux dictionnaires).

Grâce à l'analyse du dictionnaire ``variables``, nous comprenons que Cloud4RPi lit les clés du dictionnaire et affiche la valeur correspondante dans le tableau de bord. De toute évidence, nous ne pouvons pas modifier les clés de ce dictionnaire, mais nous pouvons changer la valeur associée à une clé (la valeur de ``'bind'``) pour que les widgets affichent le contenu souhaité.

Par exemple, si nous souhaitons envoyer des valeurs d'humidité à Cloud4RPi, nous ne pouvons pas ajouter une nouvelle clé dans le dictionnaire ``variables``, mais nous pouvons réutiliser une clé existante, telle que ``'Room Temp'``, puis écrire une fonction qui retourne la valeur d'humidité dans la clé ``'bind'`` correspondante.

.. code-block:: python

    variables = {
        'Room Temp': {
            'type': 'numeric' if ds_sensors else 'string',
            'bind': ds_sensors[0] if ds_sensors else sensor_not_connected
        },
        'LED On': {
            'type': 'bool',
            'value': False,
            'bind': led_control
        },
        'CPU Temp': {
            'type': 'numeric',
            'bind': rpi.cpu_temp
        },
        'STATUS': {
            'type': 'string',
            'bind': listen_for_events
        },
        'Location': {
            'type': 'location',
            'bind': get_location
        }

Le dictionnaire ``vdiagnostics`` stocke les informations sur le Raspberry Pi et est utilisé pour vérifier et prévenir les mauvaises connexions.

.. code-block:: python

    vdiagnostics = {
        'CPU Temp': rpi.cpu_temp,
        'IP Address': rpi.ip_address,
        'Host': rpi.host_name,
        'Operating System': rpi.os_name,
        'Client Version:': cloud4rpi.__version__,
    }
