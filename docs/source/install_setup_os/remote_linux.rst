.. note::

    Ciao, benvenuto nella Community di appassionati di Raspberry Pi, Arduino e ESP32 di SunFounder su Facebook! Approfondisci il tuo viaggio con Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto esperto**: Risolvi i problemi post-vendita e le sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni accesso anticipato a nuovi annunci di prodotti e anteprime.
    - **Sconti speciali**: Godi di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e concorsi festivi**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

Per gli utenti Linux/Unix
==============================

#. Trova e apri il **Terminale** sul tuo sistema Linux/Unix.

#. Assicurati che il tuo Raspberry Pi sia connesso alla stessa rete. Verifica digitando `ping <hostname>.local`. Ad esempio:

    .. code-block::

        ping raspberrypi.local

    Dovresti vedere l'indirizzo IP del Raspberry Pi se è connesso alla rete.

    * Se il terminale mostra un messaggio del tipo ``Ping request could not find host pi.local. Please check the name and try again.``, controlla nuovamente il nome host inserito.
    * Se non riesci a recuperare l'indirizzo IP, verifica le impostazioni della tua rete o del WiFi sul Raspberry Pi.

#. Inizia una connessione SSH digitando ``ssh <username>@<hostname>.local`` oppure ``ssh <username>@<IP address>``. Ad esempio:

    .. code-block::

        ssh pi@raspberrypi.local

#. Al primo accesso, incontrerai un messaggio di sicurezza. Digita ``yes`` per procedere.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Inserisci la password che hai impostato in precedenza. Nota che, per motivi di sicurezza, la password non sarà visibile mentre la digiti.

    .. note::
        È normale che i caratteri della password non vengano visualizzati nel terminale. Assicurati semplicemente di digitare la password corretta.


#. Una volta effettuato l'accesso, il tuo Raspberry Pi sarà connesso e pronto per procedere al passaggio successivo.

