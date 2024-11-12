.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Unisciti a noi per esplorare in profondità Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l’aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a promozioni festive e ricevi omaggi.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Utenti Linux/Unix
==========================


#. Individua e apri il **Terminale** sul tuo sistema Linux/Unix.

#. Assicurati che il Raspberry Pi sia connesso alla stessa rete. Verificalo digitando `ping <hostname>.local`. Ad esempio:

    .. code-block::

        ping raspberrypi.local

    Dovresti visualizzare l’indirizzo IP del Raspberry Pi se è connesso alla rete.

    * Se il terminale mostra un messaggio come ``Ping request could not find host pi.local. Please check the name and try again.``, controlla nuovamente il nome host inserito.
    * Se non riesci a ottenere l’indirizzo IP, verifica le impostazioni della rete o del Wi-Fi sul Raspberry Pi.

#. Avvia una connessione SSH digitando ``ssh <username>@<hostname>.local`` oppure ``ssh <username>@<indirizzo IP>``. Ad esempio:

    .. code-block::

        ssh pi@raspberrypi.local

#. Al primo accesso, visualizzerai un messaggio di sicurezza. Digita ``yes`` per continuare.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Inserisci la password che hai precedentemente impostato. Nota che, per motivi di sicurezza, la password non sarà visibile mentre la digiti.


    .. note::
        È normale che i caratteri della password non vengano visualizzati nel terminale. Assicurati semplicemente di inserire la password corretta.


#. Una volta effettuato l'accesso con successo, il tuo Raspberry Pi è ora connesso e sei pronto per procedere con il passaggio successivo.
