.. note::

    Bonjour, bienvenue dans la communauté SunFounder dédiée aux passionnés de Raspberry Pi, Arduino et ESP32 sur Facebook ! Plongez au cœur de l'univers du Raspberry Pi, d'Arduino et de l'ESP32 avec d'autres passionnés.

    **Pourquoi nous rejoindre ?**

    - **Support d'experts** : Résolvez les problèmes après-vente et surmontez les défis techniques grâce à l'aide de notre communauté et de notre équipe.
    - **Apprendre & Partager** : Échangez des astuces et des tutoriels pour développer vos compétences.
    - **Aperçus exclusifs** : Profitez d'un accès anticipé aux annonces de nouveaux produits et aux avant-premières.
    - **Réductions spéciales** : Bénéficiez de réductions exclusives sur nos derniers produits.
    - **Promotions festives et concours** : Participez à des concours et à des promotions spéciales pendant les périodes de fête.

    👉 Prêt à explorer et créer avec nous ? Cliquez sur [|link_sf_facebook|] et rejoignez-nous dès aujourd'hui !

Utilisateurs Linux/Unix
===========================
#. Localisez et ouvrez le **Terminal** sur votre système Linux/Unix.

#. Assurez-vous que votre Raspberry Pi est connecté au même réseau. Vérifiez cela en tapant la commande suivante : `ping <hostname>.local`. Par exemple :

    .. code-block::

        ping raspberrypi.local

    Vous devriez voir l'adresse IP du Raspberry Pi s'afficher s'il est connecté au réseau.

    * Si le terminal affiche un message du type ``La requête ping n'a pas trouvé l'hôte pi.local. Veuillez vérifier le nom et réessayer.``, vérifiez le nom d'hôte que vous avez saisi.
    * Si vous ne parvenez pas à obtenir l'adresse IP, vérifiez la configuration de votre réseau ou de votre connexion WiFi sur le Raspberry Pi.

#. Initiez une connexion SSH en tapant ``ssh <nom_utilisateur>@<hostname>.local`` ou ``ssh <nom_utilisateur>@<adresse_IP>``. Par exemple :

    .. code-block::

        ssh pi@raspberrypi.local

#. Lors de votre première connexion, un message de sécurité apparaîtra. Tapez ``yes`` pour continuer.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Entrez le mot de passe que vous avez défini précédemment. Notez que, pour des raisons de sécurité, le mot de passe ne sera pas visible lors de la saisie.

    .. note::
        Il est normal que les caractères du mot de passe ne s'affichent pas dans le terminal. Assurez-vous simplement de saisir le mot de passe correct.

#. Une fois connecté avec succès, votre Raspberry Pi est maintenant relié, et vous êtes prêt à passer à l'étape suivante.
