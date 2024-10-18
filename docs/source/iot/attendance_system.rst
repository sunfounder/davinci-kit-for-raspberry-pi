.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Rejoignez d'autres amateurs pour explorer plus en profondeur le monde du Raspberry Pi, de l'Arduino et de l'ESP32.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et relevez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des conseils et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux nouvelles annonces de produits et avant-premières.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos nouveaux produits.
    - **Promotions festives et concours** : Participez à nos concours et promotions saisonnières.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Système de présence
========================

Dans ce projet, nous utilisons le module RFID MFRC522 et Cloud4RPi pour créer un système de gestion des présences. Vous pouvez consulter les informations de présence sur Cloud4RPi ou ouvrir le fichier .csv local pour voir les enregistrements de présence.

En raison du délai de transmission des données sur le réseau, le projet ne permet de pointer que lorsque la LED verte est allumée, et les données sont téléchargées lorsque la LED rouge est allumée.

Procédures expérimentales
----------------------------

Construisez le circuit.

.. image:: img/rfid1.png
    :align: center

Ouvrez le fichier de code.

.. raw:: html

   <run></run>

.. code-block:: 

    cd ~/cloud4rpi-raspberrypi-python
    sudo nano attendance_system.py

Trouvez la ligne ci-dessous et renseignez le bon jeton d'appareil.

.. code-block:: python

    DEVICE_TOKEN = '__YOUR_DEVICE_TOKEN__'

Exécutez le code.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo python3 attendance_system.py

Accédez à Cloud4RPi, ajoutez un nouveau panneau de contrôle nommé **project5** et ajoutez 2 widgets (text et graphique) via le bouton **Add widget**.

.. image:: img/rfid2.png
    :align: center

Une fois ajoutés, vous pouvez consulter les enregistrements de pointage pour différentes périodes sur le widget Graphique (quand la valeur de LED ON est True, cela signifie qu’une personne a pointé), et voir le nombre de personnes ayant pointé sur le widget Texte.

Vous pouvez également trouver le fichier ``.csv`` avec la date sous le chemin ``~/cloud4rpi-raspberrypi-python``.

.. image:: img/rfid3.png
    :align: center

Ouvrez-le avec la commande suivante.

.. raw:: html

   <run></run>

.. code-block:: 

    sudo nano attendance_sheet.2021.06.28.csv

De cette façon, vous pouvez lire les enregistrements de pointage pour différentes périodes. À gauche se trouve l'ID de différents modules RFID MFRC522, et à droite, l'heure du pointage.

.. image:: img/rfid4.png
    :align: center

.. note::

    Si le nom de la personne est déjà écrit dans le module RFID MFRC522 et que l'ID est remplacé par le texte dans le code (ce qui sera expliqué plus tard), la feuille de présence enregistrera alors le nom de chaque personne au lieu de l'ID de la carte.

Explication du code
-----------------------

.. code-block:: python

    RedPin = 13
    GreenPin = 11

    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(RedPin, GPIO.OUT, initial=GPIO.HIGH)
    GPIO.setup(GreenPin, GPIO.OUT, initial=GPIO.HIGH)

Configurer 2 LEDs en sortie et définir la valeur initiale à haute.

.. code-block:: python

    def get_time():
        time.time()
        year = str(time.strftime('%Y',time.localtime(time.time())))
        month = str(time.strftime('%m',time.localtime(time.time())))
        day = str(time.strftime('%d',time.localtime(time.time())))
        hour = str(time.strftime('%H',time.localtime(time.time())))
        minute = str(time.strftime('%M',time.localtime(time.time())))
        second = str(time.strftime('%S',time.localtime(time.time())))
        present_time = year + '.' + month + '.' + day + '.' + hour + '.' + minute + '.' + second
        present_date = year + '.' + month + '.' + day
        return present_date, present_time

Utilisez la fonction ``get_time()`` pour obtenir l'horodatage actuel et renvoyer deux valeurs. ``present_date`` correspond à la date et ``present_time`` à l'heure précise.

.. code-block:: python

    attendance = False
    GPIO.output(GreenPin, GPIO.LOW)
    GPIO.output(RedPin, GPIO.HIGH)
	print("Reading...Please place the card...")
    id, text = reader.read()
	print("ID: %s\nText: %s" % (id,text))
    GPIO.output(RedPin, GPIO.LOW)
    GPIO.output(GreenPin, GPIO.HIGH)

Tout d'abord, nous définissons ``attendance`` sur False, ce qui signifie qu'aucune personne n'a pointé.

Puis, nous passons GreenPin à un niveau bas pour l'allumer, et RedPin à un niveau haut pour l'éteindre, indiquant que le système de présence fonctionne normalement.

Lorsque quelqu'un pointe, l'ID et le texte de la carte seront imprimés. Si la LED rouge est allumée et que la LED verte est éteinte, cela signifie que le pointage a réussi et le résultat est envoyé à Cloud4RPi.

Pendant cette période, le système de présence est en état de veille jusqu'au début du prochain cycle (LED verte allumée).

.. code-block:: python

    if not id in attendance_list:
        attendance = True
        attendance_list.append(id)
        present_date, present_time = get_time()
        attendance_statistics[id] = present_time
        with open('attendance_sheet.' + present_date + '.csv', 'w') as f:
            [f.write('{0}  {1}\n'.format(key, value)) for key, value in attendance_statistics.items()]

Tout d'abord, vérifiez si l'identifiant est déjà présent dans ``attendance_list`` grâce à une instruction ``if``. Si ce n'est pas le cas, cela signifie que le pointage est valide, et l'identifiant est ajouté à ``attendance_list``. Ensuite, récupérez l'horodatage actuel et utilisez l'identifiant comme clé du dictionnaire ``attendance_statistics`` et ``present_time`` comme valeur correspondante. Ainsi, le dictionnaire ``attendance_statistics`` stocke l'heure de pointage de l'identifiant actuel.

Enfin, écrivez le contenu du dictionnaire ``attendance_statistics`` dans un fichier .csv, nommé ``'attendance_sheet.' + present_date + '.csv'``, afin de conserver les informations de présence de manière chronologique.

.. note::

    Si vous avez préalablement enregistré le nom de la personne dans le module RFID MFRC522, remplacez l'``id`` par ``text``, ce qui permettra d'enregistrer le nom de la personne dans la feuille de présence au lieu de l'identifiant.

.. code-block:: python

    def get_num():
        return len(attendance_list)

Retourne la longueur de la liste ``attendance_list``, c’est-à-dire le nombre de personnes ayant pointé.
