.. note::

    Bonjour et bienvenue dans la Communauté Facebook des passionnés de Raspberry Pi, Arduino et ESP32 de SunFounder ! Plongez plus profondément dans l'univers des Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus.
    - **Réductions spéciales** : Profitez de réductions exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des cadeaux et des promotions de vacances.

    👉 Prêt à explorer et à créer avec nous ? Cliquez [|link_sf_facebook|] et rejoignez-nous aujourd'hui !

.. _install_os:

Installer le Système d'Exploitation
=======================================

**Composants Nécessaires**

* Raspberry Pi 5
* Un ordinateur personnel
* Une carte Micro SD

**Étapes d'Installation**

#. Visitez la page de téléchargement du logiciel Raspberry Pi à `Raspberry Pi Imager <https://www.raspberrypi.org/software/>`_. Choisissez la version de l'Imager compatible avec votre système d'exploitation. Téléchargez et ouvrez le fichier pour lancer l'installation.

    .. image:: img/os_install_imager.png

#. Un avertissement de sécurité peut apparaître pendant l'installation, selon votre système d'exploitation. Par exemple, Windows pourrait afficher un message d'avertissement. Dans ce cas, sélectionnez **Plus d'infos** puis **Exécuter quand même**. Suivez les instructions à l'écran pour terminer l'installation du Raspberry Pi Imager.

    .. image:: img/os_info.png

#. Insérez votre carte SD dans le lecteur de carte SD de votre ordinateur ou portable.

#. Lancez l'application Raspberry Pi Imager en cliquant sur son icône ou en tapant ``rpi-imager`` dans votre terminal.

    .. image:: img/os_open_imager.png

#. Cliquez sur **CHOOSE DEVICE** et sélectionnez votre modèle spécifique de Raspberry Pi dans la liste.

    .. image:: img/os_choose_device.png

#. Cliquez ensuite sur Choose OS et sélectionnez un système d'exploitation pour l'installation.

    .. image:: img/os_choose_os.png

#. Cliquez sur **Choose Storage** et sélectionnez le périphérique de stockage approprié pour l'installation.

    .. note::

        Assurez-vous de sélectionner le bon périphérique de stockage. Pour éviter toute confusion, déconnectez tout périphérique de stockage supplémentaire si plusieurs sont connectés.

    .. image:: img/os_choose_sd.png

#. Cliquez sur **NEXT** puis **EDIT SETTINGS** pour personnaliser les paramètres de votre OS. Si vous avez un moniteur pour votre Raspberry Pi, vous pouvez ignorer les étapes suivantes et cliquer sur 'Yes' pour commencer l'installation. Vous pourrez ajuster les autres paramètres plus tard sur le moniteur.

    .. image:: img/os_enter_setting.png

#. Définissez un **nom d'hôte** pour votre Raspberry Pi.

    .. note::

        Le nom d'hôte est l'identifiant réseau de votre Raspberry Pi. Vous pouvez accéder à votre Pi en utilisant ``<hostname>.local`` ou ``<hostname>.lan``.

    .. image:: img/os_set_hostname.png

#. Créez un **nom d'utilisateur** et un **mot de passe** pour le compte administrateur du Raspberry Pi.

    .. note::

        Établir un nom d'utilisateur et un mot de passe uniques est essentiel pour sécuriser votre Raspberry Pi, qui n'a pas de mot de passe par défaut.

    .. image:: img/os_set_username.png

#. Configurez le réseau sans fil en fournissant le **SSID** et le **mot de passe** de votre réseau.

    .. note::

        Définissez le ``pays du réseau sans fil`` sur le code à deux lettres `ISO/IEC alpha2 code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements>`_ correspondant à votre emplacement.

    .. image:: img/os_set_wifi.png

#. Cliquez sur **SERVICES** et activez **SSH** pour un accès distant sécurisé basé sur un mot de passe. N'oubliez pas de sauvegarder vos paramètres.

    .. image:: img/os_enable_ssh.png

#. Confirmez vos paramètres sélectionnés en cliquant sur **Yes**.

    .. image:: img/os_click_yes.png

#. Si la carte SD contient des données existantes, assurez-vous de les sauvegarder pour éviter toute perte de données. Cliquez sur **Yes** si aucune sauvegarde n'est nécessaire.

    .. image:: img/os_continue.png

#. Le processus d'installation du système d'exploitation commencera sur la carte SD. Une boîte de dialogue de confirmation apparaîtra une fois l'installation terminée.

    .. image:: img/os_finish.png
        :align: center
