.. note::

    Ciao, benvenuto nella Community di appassionati di Raspberry Pi, Arduino e ESP32 di SunFounder su Facebook! Approfondisci il tuo viaggio con Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto esperto**: Risolvi i problemi post-vendita e le sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni accesso anticipato a nuovi annunci di prodotti e anteprime.
    - **Sconti speciali**: Godi di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e concorsi festivi**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

Per gli utenti Windows
==========================

Per gli utenti di Windows 10 o superiore, è possibile accedere da remoto a un Raspberry Pi seguendo questi passaggi:

#. Cerca ``powershell`` nella barra di ricerca di Windows. Fai clic con il tasto destro su ``Windows PowerShell`` e seleziona ``Esegui come amministratore``.

    .. image:: img/powershell_ssh.png
        :align: center

#. Determina l'indirizzo IP del tuo Raspberry Pi digitando ``ping -4 <hostname>.local`` in PowerShell.

    .. code-block::

        ping -4 raspberrypi.local

    .. image:: img/sp221221_145225.png
        :width: 550
        :align: center

    L'indirizzo IP del Raspberry Pi verrà visualizzato una volta connesso alla rete.

    * Se il terminale mostra ``Ping request could not find host pi.local. Please check the name and try again.``, verifica che il nome host inserito sia corretto.
    * Se l'indirizzo IP non è ancora recuperabile, controlla le impostazioni di rete o del WiFi sul Raspberry Pi.

#. Una volta confermato l'indirizzo IP, accedi al tuo Raspberry Pi utilizzando ``ssh <username>@<hostname>.local`` oppure ``ssh <username>@<IP address>``.

    .. code-block::

        ssh pi@raspberrypi.local

    .. warning::

        Se compare un errore del tipo ``The term 'ssh' is not recognized as the name of a cmdlet...``, il tuo sistema potrebbe non avere gli strumenti SSH preinstallati. In tal caso, devi installare manualmente OpenSSH seguendo :ref:`openssh_powershell`, o utilizzare uno strumento di terze parti come descritto in :ref:`login_windows`.

#. Al primo accesso, apparirà un messaggio di sicurezza. Digita ``yes`` per procedere.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Inserisci la password che hai impostato in precedenza. Nota che i caratteri della password non verranno visualizzati sullo schermo, come misura di sicurezza standard.

    .. note::
        L'assenza di caratteri visibili durante la digitazione della password è normale. Assicurati di inserire la password corretta.

#. Una volta connesso, il tuo Raspberry Pi è pronto per le operazioni remote.

    .. image:: img/sp221221_140628.png
        :width: 550
        :align: center

