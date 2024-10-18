.. note::

    Bonjour et bienvenue dans la communauté Facebook des passionnés de SunFounder Raspberry Pi, Arduino et ESP32 ! Plongez-vous plus profondément dans le monde du Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et relevez les défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Bénéficiez d'un accès anticipé aux nouvelles annonces de produits.
    - **Remises spéciales** : Profitez de réductions exclusives sur nos nouveaux produits.
    - **Promotions et cadeaux festifs** : Participez à des tirages au sort et des promotions spéciales durant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Vérifiez l'installation de ``GPIO Zero``
===========================================

Si vous êtes un utilisateur de Python sur Raspberry Pi 5, vous pouvez programmer 
les GPIO en utilisant les API fournies par ``GPIO Zero``.

``GPIO Zero`` est un module destiné au contrôle des broches GPIO du Raspberry Pi. 
Ce package propose une gamme de classes et de fonctions simples d'utilisation pour 
gérer les GPIO sur un Raspberry Pi. Pour des exemples et de la documentation, consultez : https://gpiozero.readthedocs.io/en/latest/.

Pour vérifier si GPIO Zero est installé, tapez dans le terminal Python :

.. raw:: html

   <run></run>

.. code-block::

    python

.. image:: ../python_pi5/img/zero_01.png
    :width: 100%


Dans l'interface CLI de Python, saisissez ``import gpiozero``. Si aucune erreur n'apparaît, cela signifie que GPIO Zero est installé correctement.

.. raw:: html

   <run></run>

.. code-block::

    import gpiozero

.. image:: ../python_pi5/img/zero_02.png
    :width: 100%


Pour quitter l'interface CLI de Python, saisissez :

.. raw:: html

   <run></run>

.. code-block::

    exit()

.. image:: ../python_pi5/img/zero_03.png
    :width: 100%


