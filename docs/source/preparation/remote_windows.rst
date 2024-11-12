.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni un accesso anticipato agli annunci dei nuovi prodotti e anteprime.
    - **Sconti speciali**: Approfitta di sconti esclusivi sui nostri ultimi prodotti.
    - **Promozioni festive e giveaway**: Partecipa a giveaway e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Utenti Windows
=======================


Se sei un utente Windows, puoi utilizzare Windows PowerShell per accedere da remoto al tuo Raspberry Pi.

#. Premi i tasti ``windows`` + ``R`` sulla tastiera per aprire il programma **Esegui**. Digita **powershell** nella casella di testo.

    .. image:: img/sp221221_135900.png
        :align: center

#. Verifica che il tuo Raspberry Pi sia sulla stessa rete digitando ``ping <hostname>.local``.

    .. code-block:: shell

        ping raspberrypi.local

    .. image:: img/sp221221_145225.png
        :width: 550
        :align: center

    * Se il terminale mostra ``Ping request could not find host <hostname>.local``, potrebbe essere che il Raspberry Pi non sia connesso alla rete. Verifica la connessione di rete.
    * Se non riesci a pingare ``<hostname>.local``, prova a :ref:`get_ip` e a ``ping <IP address>`` (ad esempio, ``ping 192.168.6.116``).
    * Se ricevi risposte come "Risposta da <indirizzo IP>: bytes=32 time<1ms TTL=64", significa che il tuo computer può accedere al Raspberry Pi.

#. Digita ``ssh <username>@<hostname>.local`` (o ``ssh <username>@<IP address>``).

    .. code-block:: shell

        ssh pi@raspberrypi.local

#. Potrebbe apparire il seguente messaggio.

    .. code-block::

        L'autenticità dell'host 'raspberrypi.local (192.168.6.116)' non può essere verificata.
        L'impronta digitale della chiave ECDSA è SHA256:7ggckKZ2EEgS76a557cddfxFNDOBBuzcJsgaqA/igz4.
        Sei sicuro di voler continuare la connessione (yes/no/[fingerprint])?

    Digita \"yes\".

#. Inserisci la password impostata precedentemente. (Nel mio caso è ``raspberry``.)

    .. note::
        Durante l’inserimento della password, i caratteri non saranno visibili 
        nella finestra, il che è normale. Assicurati di inserire la password corretta.

#. Ora sei connesso al Raspberry Pi e pronto per il passaggio successivo.

    .. image:: img/sp221221_140628.png
        :width: 550
        :align: center

Desktop remoto
-------------------

Se non ti basta accedere al Raspberry Pi tramite terminale, puoi utilizzare la funzione di desktop remoto per gestire facilmente i file sul tuo Raspberry Pi attraverso una GUI.

Qui utilizziamo `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

**Abilitare il servizio VNC**

Il servizio VNC è preinstallato nel sistema ma è disabilitato per impostazione 
predefinita. Devi abilitarlo nelle impostazioni di configurazione.

#. Digita il seguente comando:

    .. raw:: html

        <run></run>

    .. code-block:: shell 

        sudo raspi-config

#. Seleziona **3 Interfacing Options** utilizzando le frecce della tastiera, quindi premi **Invio**.

    .. image:: img/image282.png
        :align: center

#. Quindi seleziona **P3 VNC**.

    .. image:: img/image288.png
        :align: center

#. Usa le frecce per selezionare **<Yes>** -> **<OK>** -> **<Finish** per completare la configurazione.

    .. image:: img/mac_vnc8.png
        :align: center

**Accedi a VNC**

#. Scarica e installa `VNC Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_ sul computer personale.

#. Apri VNC Viewer dopo l'installazione e inserisci il nome host o l'indirizzo IP, poi premi Invio.

    .. image:: img/vnc_viewer1.png
        :align: center

#. Dopo aver inserito il nome utente e la password del Raspberry Pi, clicca su **OK**.

    .. image:: img/vnc_viewer2.png
        :align: center

#. Ora puoi vedere il desktop del Raspberry Pi.

    .. image:: img/login1.png
        :align: center
