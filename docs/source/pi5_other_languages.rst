.. note::

    Bonjour, bienvenue dans la communauté SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts sur Facebook ! Plongez plus profondément dans l'univers du Raspberry Pi, Arduino et ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour améliorer vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux annonces de nouveaux produits et aux aperçus exclusifs.
    - **Remises spéciales** : Profitez de réductions exclusives sur nos nouveaux produits.
    - **Promotions festives et cadeaux** : Participez à des concours et promotions pendant les fêtes.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Autres Langages (pour Pi 5)
================================

La sortie du Raspberry Pi 5 nous a apporté un modèle plus puissant, mais elle a également introduit quelques changements, notamment au niveau des GPIO.

Bien qu'il conserve son interface standard à 40 broches, la fonctionnalité a été modifiée en raison de sa connexion avec la nouvelle puce RP1 Southbridge intégrée. Cette puce RP1 sur mesure gère désormais les périphériques du Pi 5, entraînant divers problèmes de compatibilité.

Langage C
--------------

L'implémentation en langage C repose sur la bibliothèque wiringPi. Cependant, la bibliothèque communautaire wiringPi est désormais archivée et ne reçoit plus de mises à jour, ce qui la rend inadaptée aux projets avec le Raspberry Pi 5. Pour plus d'informations, consultez : https://github.com/WiringPi/WiringPi

.. image:: img/pi5_c_language.png

Processing
--------------

Lors de l'utilisation de Processing 4 sur Raspberry Pi 5, la programmation GPIO rencontre des difficultés. Des erreurs telles que "Argument invalide" et "La broche GPIO 17 semble indisponible sur votre plateforme" apparaissent lors de l'exécution de code lié aux GPIO (comme illustré dans l'image ci-jointe). Pour plus de détails, visitez : https://github.com/benfry/processing4/issues/807

.. image:: img/pi5_processing.png

Node.js
------------

Node.js utilise la bibliothèque pigpio, qui, pour le moment, ne prend pas en charge le Raspberry Pi 5. Pour en savoir plus, rendez-vous sur : https://github.com/joan2937/pigpio/issues/589

.. image:: img/pi5_nodejs.png
    :width: 700

Scratch
------------

Sur un système 64 bits, l'importation de la bibliothèque GPIO de Raspberry Pi rencontre des problèmes, entraînant une absence de réponse. Pour plus d'informations, visitez : https://github.com/raspberrypi/bookworm-feedback/issues/91
