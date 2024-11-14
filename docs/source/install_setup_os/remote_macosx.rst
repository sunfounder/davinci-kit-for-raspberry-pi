.. note::

    Ciao, benvenuto nella Community di appassionati di Raspberry Pi, Arduino e ESP32 di SunFounder su Facebook! Approfondisci il tuo viaggio con Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto esperto**: Risolvi i problemi post-vendita e le sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni accesso anticipato a nuovi annunci di prodotti e anteprime.
    - **Sconti speciali**: Godi di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e concorsi festivi**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

Per gli utenti Mac OS X
=============================

Per gli utenti Mac OS X, SSH (Secure Shell) offre un metodo sicuro e conveniente per accedere e controllare da remoto un Raspberry Pi. Questo è particolarmente utile per lavorare con il Raspberry Pi a distanza o quando non è collegato a un monitor. Utilizzando l'applicazione Terminale su un Mac, puoi stabilire questa connessione sicura. Durante la prima connessione, verrà visualizzato un messaggio di sicurezza che richiederà la conferma dell'autenticità del Raspberry Pi.

#. Per connetterti al Raspberry Pi, digita il seguente comando SSH:

    .. code-block::

        ssh pi@raspberrypi.local

    .. image:: img/mac_vnc14.png

#. Al primo accesso, apparirà un messaggio di sicurezza. Rispondi con **yes** per procedere.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Inserisci la password per il Raspberry Pi. Ricorda che la password non verrà visualizzata sullo schermo mentre la digiti, come misura di sicurezza standard.

    .. code-block::

        pi@raspberrypi.local's password: 
        Linux raspberrypi 5.15.61-v8+ #1579 SMP PREEMPT Fri Aug 26 11:16:44 BST 2022 aarch64

        The programs included with the Debian GNU/Linux system are free software;
        the exact distribution terms for each program are described in the
        individual files in /usr/share/doc/*/copyright.

        Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
        permitted by applicable law.
        Last login: Thu Sep 22 12:18:22 2022
        pi@raspberrypi:~ $ 

