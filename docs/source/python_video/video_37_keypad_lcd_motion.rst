.. note::

    Bonjour, bienvenue dans la communauté des passionnés de Raspberry Pi, Arduino et ESP32 de SunFounder sur Facebook ! Plongez dans l’univers du Raspberry Pi, de l’Arduino et de l’ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes post-achat et relevez vos défis techniques avec l'aide de notre communauté et de notre équipe.
    - **Apprendre et partager** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Obtenez un accès anticipé aux nouvelles annonces de produits et à des aperçus exclusifs.
    - **Remises spéciales** : Bénéficiez de réductions exclusives sur nos nouveaux produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales pendant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !


Vidéo 37 : Système d’alarme avec détection de mouvement, écran LCD et pavé numérique
=======================================================================================

Ce tutoriel présente la création d’un système d’alarme utilisant un Raspberry Pi, un pavé numérique pour les entrées et un écran LCD pour l'affichage. 
Il propose des instructions pas à pas pour le câblage des composants, la configuration des bibliothèques 
et l’implémentation de fonctionnalités telles que l’activation, la désactivation et la modification du mot de passe. 
La vidéo met en avant la portabilité et le déploiement dans des situations concrètes, au-delà d’une utilisation sur bureau.


1. **Portabilité et déploiement** : Étendre les projets Raspberry Pi au-delà de l'environnement de bureau pour des applications réelles.
2. **Installation du pavé numérique et de l’écran LCD** : Câblage d’un pavé numérique et d’un écran LCD aux broches GPIO du Raspberry Pi pour les entrées et les sorties.
3. **Multitâche avec le threading** : Utilisation du threading pour gérer les entrées du pavé numérique tout en exécutant d’autres tâches.
4. **Intégration des bibliothèques** : Importation et utilisation de bibliothèques pour la gestion des fonctionnalités du pavé numérique et de l’écran LCD.
5. **Flux du programme** : Implémentation de trois modes pour le système d'alarme : armé, désarmé, et changement de mot de passe, avec surveillance continue des entrées via le pavé numérique.
6. **Gestion des erreurs** : Mise en place de mécanismes de gestion d'erreurs, comme la possibilité pour l'utilisateur de terminer le programme en appuyant sur l'astérisque.
7. **Structure du programme** : Démonstration de la configuration des threads, de la définition de la boucle principale et de la gestion des entrées du pavé numérique.
8. **Gestion des entrées du pavé numérique** : Explication sur le traitement des commandes du pavé numérique pour armer, désarmer, changer de mot de passe et déclencher les actions de l’alarme.
9. **Fonctionnalité de l'alarme** : Présentation de l'implémentation de la détection de mouvement à l’aide d’un capteur PIR pour déclencher des alertes d’intrusion affichées sur l’écran LCD.
10. **Interaction avec l'utilisateur** : Retour d'informations en temps réel sur l'écran LCD concernant l'état du système, les alertes et les invites de mot de passe.
11. **Gestion des erreurs et nettoyage** : Garantie d’une terminaison propre du programme avec gestion des erreurs, nettoyage des broches GPIO et réinitialisation de l’écran LCD.
12. **Défi pour les spectateurs** : Encouragement à enrichir le système d'alarme avec des fonctionnalités supplémentaires, telles que des alarmes sonores ou une intégration Bluetooth, dans le cadre d'un concours pour se démarquer.

**Vidéo**

.. raw:: html

    <iframe width="700" height="500" src="https://www.youtube.com/embed/y0PEhuLAjNY?si=LI-oSA53Obuf8wn2" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

