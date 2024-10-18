.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez dans l'univers de Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et relevez les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux annonces de nouveaux produits et à des avant-premières.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos produits les plus récents.
    - **Promotions festives et cadeaux** : Participez à des concours et à des promotions spéciales lors des fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !


Remote Desktop 
=====================

Il existe deux manières de contrôler le bureau de votre Raspberry Pi à distance :

**VNC** et **XRDP**, vous pouvez choisir l'un ou l'autre.

VNC 
--------------

Vous pouvez utiliser la fonction de bureau à distance via VNC.

**Activer le service VNC**

Le service VNC est déjà installé dans le système, mais il est désactivé par défaut. Vous devez l'activer dans la configuration.

**Étape 1**

Saisissez la commande suivante :

.. raw:: html

   <run></run>

.. code-block:: 

   sudo raspi-config

.. image:: img/image287.png
   :align: center

**Étape 2**

Choisissez **3 Options d'interfaçage** en appuyant sur la flèche bas de votre 
clavier, puis appuyez sur **Entrée**.

.. image:: img/image282.png
   :align: center

**Étape 3**

Sélectionnez **P3 VNC**

.. image:: img/image288.png
   :align: center

**Étape 4**

Sélectionnez **Oui -> OK -> Terminer** pour quitter la configuration.

.. image:: img/image289.png
   :align: center

**Connexion à VNC**

**Étape 1**

Téléchargez et installez `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ sur votre ordinateur personnel. Une fois l'installation terminée, ouvrez le programme.

**Étape 2**

Sélectionnez "**Nouvelle connexion**".

.. image:: img/image290.png
   :align: center

**Étape 3**

Saisissez l'adresse IP du Raspberry Pi et un **Nom** quelconque.

.. image:: img/image291.png
   :align: center

**Étape 4**

Double-cliquez sur la **connexion** que vous venez de créer :

.. image:: img/image292.png
   :align: center

**Étape 5**

Entrez le nom d'utilisateur (**pi**) et le mot de passe (**raspberry** par défaut).

.. image:: img/image293.png
   :align: center

**Étape 6**

Vous pouvez maintenant voir le bureau de votre Raspberry Pi :

.. image:: img/image294.png
   :align: center

C'est la fin de la partie VNC.


XRDP
-----------------------

Une autre méthode de bureau à distance est XRDP, qui fournit un accès graphique aux machines distantes en utilisant le protocole RDP (Remote Desktop Protocol) de Microsoft.

**Installer XRDP**

**Étape 1**

Connectez-vous au Raspberry Pi en utilisant SSH.

**Étape 2**

Entrez les instructions suivantes pour installer XRDP.

.. raw:: html

   <run></run>

.. code-block:: 

   sudo apt-get update
   sudo apt-get install xrdp

**Étape 3**

Lorsque l'installation démarre, 

entrez "Y" et appuyez sur "Entrée" pour confirmer.

.. image:: img/image295.png
   :align: center

**Étape 4**

Une fois l'installation terminée, connectez-vous à votre Raspberry Pi en 
utilisant une application de bureau à distance sous Windows.

**Connexion à XRDP**

**Étape 1**

Si vous êtes un utilisateur de Windows, utilisez la fonctionnalité Bureau à 
distance intégrée. Si vous utilisez un Mac, vous pouvez télécharger et utiliser 
Microsoft Remote Desktop depuis l'App Store. Les deux fonctionnent de la même 
manière. L'exemple suivant utilise le bureau à distance de Windows.

**Étape 2**

Tapez "**mstsc**" dans Exécuter (WIN+R) pour ouvrir la connexion au bureau à distance, 
et saisissez l'adresse IP du Raspberry Pi, puis cliquez sur "Connecter".

.. image:: img/image296.png
   :align: center

**Étape 3**

La page de connexion XRDP apparaît. Veuillez saisir votre nom d'utilisateur et votre 
mot de passe. Lors de la première connexion, le nom d'utilisateur est "pi" et le mot 
de passe est "raspberry". Ensuite, cliquez sur "OK".

.. image:: img/image297.png
   :align: center

**Étape 4**

Vous êtes maintenant connecté au Raspberry Pi via le bureau à distance.

.. image:: img/image20.png
   :align: center

**Avis de droits d'auteur**

Tout le contenu de ce manuel, y compris mais sans s'y limiter les textes, images et 
codes, est la propriété de la société SunFounder. Vous ne devez l'utiliser qu'à des 
fins d'études personnelles, de recherche, de loisirs ou d'autres usages non commerciaux 
ou à but non lucratif, conformément aux réglementations et lois sur les droits d'auteur 
en vigueur, sans enfreindre les droits légaux de l'auteur et des détenteurs de droits 
associés. Toute utilisation à des fins lucratives sans autorisation préalable sera 
passible de poursuites judiciaires par la société.
