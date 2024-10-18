.. note::

    Bonjour, bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez au cœur de l’univers Raspberry Pi, Arduino et ESP32 en compagnie d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes post-achat et les défis techniques grâce à l’aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux prévisualisations exclusives.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et promotions spéciales lors des fêtes.

    👉 Prêt à explorer et à créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd’hui !

.. _create_virtual:

Créer un environnement virtuel
======================================
Lors de l'utilisation de Raspberry Pi ou de dispositifs similaires, il est recommandé d’installer les packages avec ``pip`` dans un environnement virtuel. Cela permet d’isoler les dépendances, d’augmenter la sécurité du système, de maintenir la propreté du système et de faciliter la migration et le partage de projets, simplifiant ainsi la gestion des dépendances. Ces avantages font des environnements virtuels un outil indispensable dans le développement Python.

Voici les étapes pour créer un environnement virtuel :

**1. Créer un environnement virtuel**

Tout d’abord, assurez-vous que Python est bien installé sur votre système. À partir de la version 3.3, Python inclut le module ``venv`` pour créer des environnements virtuels, ce qui évite toute installation supplémentaire. Si vous utilisez Python 2 ou une version antérieure à la 3.3, vous devrez installer ``virtualenv``.

* Pour Python 3 :

Les versions de Python 3.3 et ultérieures peuvent utiliser directement le module ``venv`` :

.. raw:: html

    <run></run>

.. code-block:: shell

    python3 -m venv myenv

Cela crée un environnement virtuel nommé ``myenv`` dans le répertoire courant.

* Pour Python 2 :

Si vous utilisez encore Python 2, vous devez d’abord installer ``virtualenv`` :

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install virtualenv

Ensuite, créez l’environnement virtuel :

.. raw:: html

    <run></run>

.. code-block:: shell

    virtualenv myenv

Cela créera également un environnement virtuel nommé ``myenv`` dans le répertoire courant.

**2. Activer l’environnement virtuel**

Après avoir créé l’environnement virtuel, vous devez l’activer pour l’utiliser.

.. note::

    À chaque redémarrage du Raspberry Pi ou à l’ouverture d’un nouveau terminal, vous devrez de nouveau exécuter la commande suivante pour activer l’environnement virtuel.

.. raw:: html

    <run></run>

.. code-block:: shell

    source myenv/bin/activate

Une fois l’environnement activé, le nom de l’environnement apparaît devant l’invite de commande, indiquant que vous travaillez dans l’environnement virtuel.


**3. Installer les dépendances**

Avec l’environnement activé, vous pouvez utiliser pip pour installer les dépendances nécessaires. Par exemple :

.. raw:: html

    <run></run>

.. code-block:: shell

    pip install requests

Cela installera la bibliothèque requests dans l’environnement virtuel actuel, plutôt que dans l’environnement global. Cette étape ne doit être effectuée qu’une seule fois.


**4. Quitter l’environnement virtuel**

Lorsque vous avez terminé votre travail et souhaitez quitter l’environnement virtuel, il vous suffit d’exécuter :

.. raw:: html

    <run></run>

.. code-block:: shell

    deactivate

Cela vous ramènera à l’environnement Python global du système.

**5. Supprimer l’environnement virtuel**

Si vous n’avez plus besoin d’un environnement virtuel particulier, vous pouvez simplement supprimer le répertoire contenant l’environnement :

.. raw:: html

    <run></run>

.. code-block:: shell

    rm -rf myenv