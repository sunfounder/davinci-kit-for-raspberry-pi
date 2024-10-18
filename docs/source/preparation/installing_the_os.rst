.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, d'Arduino et d'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux nouvelles annonces de produits et aux avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales lors des fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

.. _install_os:

Installation du Système d'Exploitation (OS)
==============================================

**Étape 1**

Raspberry Pi a développé un outil graphique de gravure de carte SD compatible 
avec Mac OS, Ubuntu 18.04 et Windows, et qui représente la solution la plus 
simple pour la majorité des utilisateurs. Cet outil télécharge l'image et l'installe 
automatiquement sur la carte SD.

Rendez-vous sur la page de téléchargement : https://www.raspberrypi.org/software/. 
Cliquez sur le lien du **Raspberry Pi Imager** correspondant à votre système d'exploitation. 
Une fois le téléchargement terminé, exécutez le programme d'installation.

.. image:: img/image11.png
    :align: center

**Étape 2**

Lorsque vous lancez l'installateur, votre système d'exploitation peut tenter de bloquer 
l'exécution. Par exemple, sous Windows, vous pourriez voir le message suivant :

Si cela apparaît, cliquez sur **Informations complémentaires**, puis sur 
**Exécuter quand même** et suivez les instructions pour terminer l'installation du 
Raspberry Pi Imager.

.. image:: img/image12.png
    :align: center

**Étape 3**

Insérez votre carte SD dans le lecteur de carte SD de votre ordinateur.

**Étape 4**

Dans Raspberry Pi Imager, sélectionnez le système d'exploitation à installer et la 
carte SD sur laquelle l'installer.

.. image:: img/image13.png
    :align: center

.. note::

    * Vous devrez être connecté à Internet lors de la première utilisation.
    * Le système d'exploitation sera alors stocké pour une utilisation hors ligne future (``lastdownload.cache``, ``C:/Users/votrenom/AppData/Local/Raspberry Pi/Imager/cache``). Ainsi, lors des prochaines ouvertures du logiciel, il affichera "Released: date, cached on your computer".

.. Téléchargez l'image `raspios_armhf-2020-05-28 <https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-05-28/2021-05-07-raspios-buster-armhf.zip>`_ et sélectionnez-la dans le Raspberry Pi Imager.

.. .. image:: img/otherOS.png
..     :align: center

.. .. warning::
..     Raspberry Pi OS has major changes after the 2021-05-28 version, which may cause some functions to be unavailable. Please do not use the latest version for now.


.. .. marque


**Étape 5**

Sélectionnez la carte SD que vous utilisez.

.. image:: img/image14.png
    :align: center

**Étape 6**

Appuyez sur **Ctrl+Shift+X** ou cliquez sur l'icône **paramètres** pour ouvrir la page **Options avancées** et activer SSH, puis définissez le nom d'utilisateur et le mot de passe.

    .. note::
        * Étant donné que le Raspberry Pi n'a plus de mot de passe par défaut, vous devrez le définir vous-même. Le nom d'utilisateur peut également être modifié.
        * Pour un accès à distance, vous devrez également activer manuellement le SSH.

.. image:: img/image15.png
    :align: center

Ensuite, descendez pour compléter la configuration du Wi-Fi et cliquez sur **ENREGISTRER**.

.. note::

    Le paramètre ``wifi country`` doit être défini selon le code à deux lettres de la norme `ISO/IEC alpha2 code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements>`_ correspondant au pays dans lequel vous utilisez votre Raspberry Pi.

.. image:: img/image16.png
    :align: center

**Étape 7**

Cliquez sur le bouton **WRITE**.

.. image:: img/image17.png
    :align: center

**Étape 8**

Si votre carte SD contient déjà des fichiers, il est conseillé de les sauvegarder 
pour éviter de les perdre définitivement. Si vous n'avez pas de fichiers à sauvegarder, 
cliquez sur **Oui**.

.. image:: img/image18.png
    :align: center

**Étape 9**

Après un certain temps, la fenêtre suivante apparaîtra pour indiquer que l'installation 
est terminée.

.. image:: img/image19.png
    :align: center


