.. note::

    Bonjour et bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez dans l’univers du Raspberry Pi, d’Arduino et d’ESP32 avec d’autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez vos problèmes après-vente et relevez vos défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour perfectionner vos compétences.
    - **Aperçus exclusifs** : Accédez en avant-première aux nouvelles annonces de produits et bénéficiez d'aperçus exclusifs.
    - **Réductions spéciales** : Profitez de remises exclusives sur nos tout derniers produits.
    - **Promotions et concours festifs** : Participez à des concours et à des promotions spéciales lors d’événements festifs.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !


Vidéo 10 : Réalisation d'une LED dimmable avec deux boutons-poussoirs
=======================================================================================

Ce tutoriel aborde la construction de circuits de LED dimmables à l'aide des 
broches GPIO du Raspberry Pi, en mettant l'accent sur un contrôle fluide de la 
luminosité. Paul McQuarter montre le processus pas à pas, de la configuration 
du circuit à la mise en œuvre du code. Dans la partie dédiée au Raspberry Pi, 
il explique comment construire le circuit en utilisant les broches GPIO et des 
boutons-poussoirs pour le contrôle, tout en implémentant la modulation de largeur 
d'impulsion (PWM) via des scripts Python.

La vidéo explore les subtilités du PWM, en mettant en avant les variations non 
linéaires du cycle de rapport (duty cycle) pour des transitions de luminosité 
plus douces, et aborde les problèmes de synchronisation entre la fréquence PWM 
et le taux de balayage de la caméra. Le concept de l'échelle exponentielle est 
présenté pour obtenir un contrôle précis de la luminosité. La vidéo approfondit 
des notions mathématiques telles que les logarithmes et les exposants, illustrant 
leur application dans le codage pour le réglage de la luminosité des LED. Des 
astuces de dépannage sont fournies pour affiner le code et garantir des performances optimales.

1. **Montage du circuit** : Explication et démonstration de la construction de circuits LED dimmables avec les broches GPIO du Raspberry Pi, en utilisant des boutons-poussoirs pour le contrôle.
2. **Programmation en Python** : Démonstration des scripts Python pour implémenter le contrôle PWM et l'échelle exponentielle pour le réglage de la luminosité des LED.
3. **Principes du PWM** : Comprendre le cycle de rapport du PWM et son utilisation dans le contrôle de la luminosité.
4. **Échelle exponentielle** : Utilisation de l'échelle exponentielle dans le code pour obtenir un contrôle fluide et linéaire de la luminosité.
5. **Concept logarithmique** : Application des logarithmes pour déterminer la constante nécessaire au nombre de pressions de bouton requises pour ajuster la luminosité.
6. **Ajustement non linéaire de la luminosité** : Exploration des modifications non linéaires du cycle de rapport pour des transitions de luminosité plus douces.
7. **Problèmes de synchronisation** : Réflexion sur les problèmes de synchronisation entre la fréquence PWM et le taux de balayage de la caméra.
8. **Dépannage et optimisation** : Techniques de débogage du code et d’optimisation de la fonctionnalité de gradation des LED pour des performances maximales.

**Vidéo**

.. raw:: html
    
    <iframe width="700" height="500" src="https://www.youtube.com/embed/2QAn1e8U5ho?si=1aWOugdV2_4pIO9N" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


