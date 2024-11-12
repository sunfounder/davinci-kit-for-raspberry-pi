.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Unisciti a noi per esplorare in profondità Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l’aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a promozioni festive e ricevi omaggi.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Utenti Mac OS X
==========================

Per gli utenti Mac, accedere direttamente al desktop del Raspberry Pi 
tramite VNC è più comodo rispetto all'uso della riga di comando. È possibile 
accedervi tramite Finder, inserendo la password dell'account dopo aver 
abilitato VNC sul Raspberry Pi.

Nota che questa modalità non crittografa la comunicazione tra Mac e Raspberry Pi. 
La comunicazione avviene all'interno della rete domestica o aziendale, quindi 
anche se non protetta, non sarà un problema. Tuttavia, se ti preoccupa la 
sicurezza, puoi installare un'applicazione VNC come `VNC® Viewer <https://www.realvnc.com/en/connect/download/viewer/>`_.

Un’altra opzione utile è quella di collegare temporaneamente un monitor (TV), 
un mouse e una tastiera per accedere direttamente al desktop del Raspberry Pi 
e configurare VNC. Se non disponi di questi, non preoccuparti: puoi usare il 
comando SSH per aprire la shell Bash del Raspberry Pi e configurare VNC da lì.

* :ref:`have_temp_monitor`
* :ref:`no_temp_monitor`


.. _have_temp_monitor:

Hai un monitor temporaneo (o TV)?
---------------------------------------------------------------------

#. Collega un monitor (o TV), un mouse e una tastiera al Raspberry Pi e accendilo. Seleziona il menu seguendo i numeri dell’immagine.

    .. image:: img/mac_vnc1.png
        :align: center

#. Verrà visualizzata la schermata seguente. Imposta **VNC** su **Abilitato** nella scheda **Interfacce** e clicca su **OK**.

    .. image:: img/mac_vnc2.png
        :align: center

#. Un’icona VNC appare in alto a destra dello schermo e il server VNC si avvia.

    .. image:: img/login1.png
        :align: center

#. Apri la finestra del server VNC cliccando sull'icona **VNC**, quindi clicca sul pulsante **Menu** in alto a destra e seleziona **Opzioni**.

    .. image:: img/mac_vnc4.png
        :align: center

#. Verrà visualizzata la schermata seguente dove puoi cambiare le opzioni.

    .. image:: img/mac_vnc5.png
        :align: center

    Imposta **Crittografia** su **Preferisci disattivato** e **Autenticazione** su **Password VNC**.
    
#. Cliccando su **OK** apparirà la schermata per l'inserimento della password. Puoi usare la stessa password del Raspberry Pi o una diversa; inseriscila e clicca **OK**.

    .. image:: img/mac_vnc16.png
        :align: center

    Ora sei pronto a connetterti dal tuo Mac. Puoi scollegare il monitor.

**Da qui, continua con le operazioni sul Mac.**

#. Ora, seleziona **Connessione al Server** dal menu di Finder, apribile con un clic destro.

    .. image:: img/mac_vnc10.png
        :align: center

#. Digita ``vnc://<username>@<hostname>.local`` (o ``vnc://<username>@<IP address>``). Dopo aver inserito, clicca su **Connetti**.

        .. image:: img/mac_vnc11.png
            :align: center

#. Verrà richiesta una password, inseriscila.

        .. image:: img/mac_vnc12.png
            :align: center

#. Il desktop del Raspberry Pi verrà visualizzato, e potrai utilizzarlo direttamente dal Mac.

        .. image:: img/mac_vnc13.png
            :align: center

.. _no_temp_monitor:

Non hai un monitor temporaneo (o TV)?
---------------------------------------------------------------------------

* Puoi utilizzare il comando SSH per aprire la shell Bash del Raspberry Pi.
* Bash è la shell standard predefinita per Linux.
* La shell stessa è un comando (istruzione) utilizzato dagli utenti di Unix/Linux.
* Quasi tutto ciò che devi fare può essere realizzato tramite la shell.
* Dopo aver configurato il Raspberry Pi, potrai accedere al desktop utilizzando il **Finder** dal Mac.

#. Digita ``ssh <username>@<hostname>.local`` per connetterti al Raspberry Pi.

    .. code-block:: shell

        ssh pi@raspberrypi.local


    .. image:: img/mac_vnc14.png

#. Al primo accesso, ti verrà mostrato un messaggio di sicurezza, quindi digita **yes**.

    .. code-block::

        The authenticity of host 'raspberrypi.local (2400:2410:2101:5800:635b:f0b6:2662:8cba)' can't be established.
        ED25519 key fingerprint is SHA256:oo7x3ZSgAo032wD1tE8eW0fFM/kmewIvRwkBys6XRwg.
        This key is not known by any other names
        Are you sure you want to continue connecting (yes/no/[fingerprint])?

#. Inserisci la password per il Raspberry Pi. La password non verrà visualizzata mentre la digiti, quindi fai attenzione a non commettere errori.

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




#. Configura il Raspberry Pi per accedere via VNC dal Mac. Per prima cosa, aggiorna il sistema operativo eseguendo i seguenti comandi.

    .. code-block:: shell

        sudo apt update
        sudo apt upgrade

 ``Vuoi continuare? [Y/n]``, Inserisci ``Y`` quando richiesto.

    L'aggiornamento potrebbe richiedere del tempo, a seconda del numero di aggiornamenti.

#. Inserisci il seguente comando per abilitare il **VNC Server**.

    .. code-block:: shell

        sudo raspi-config

#. Apparirà la schermata seguente. Seleziona **3 Interface Options** con i tasti freccia sulla tastiera e premi **Invio**.

    .. image:: img/image282.png
        :align: center

#. Successivamente, seleziona **P3 VNC**.

    .. image:: img/image288.png
        :align: center

#. Usa i tasti freccia per selezionare **<Sì>** -> **<OK>** -> **<Fine>** per completare la configurazione.

    .. image:: img/mac_vnc8.png
        :align: center


#. Ora che il server VNC è avviato, modifichiamo le impostazioni per connettersi da un Mac.

    Per specificare i parametri per tutti i programmi per tutti gli account utente sul computer, crea ``/etc/vnc/config.d/common.custom``.

    .. code-block:: shell

        sudo nano /etc/vnc/config.d/common.custom

    Dopo aver inserito ``Authentication=VncAuthenter``, premi ``Ctrl+X`` -> ``Y`` -> ``Invio`` per salvare e uscire.

    .. image:: img/mac_vnc15.png
        :align: center

#. Inoltre, imposta una password per il login tramite VNC dal Mac. Puoi usare la stessa password del Raspberry Pi o una diversa.

    .. code-block:: shell

        sudo vncpasswd -service

#. Al termine della configurazione, riavvia il Raspberry Pi per applicare le modifiche.

    .. code-block:: shell

        sudo reboot

#. Ora, seleziona **Connessione al Server** dal menu di **Finder**, apribile con un clic destro.

    .. image:: img/mac_vnc10.png
        :align: center

#. Digita ``vnc://<username>@<hostname>.local`` (o ``vnc://<username>@<IP address>``). Dopo aver inserito, clicca su **Connetti**.

        .. image:: img/mac_vnc11.png
            :align: center

#. Verrà richiesta una password, inseriscila.

        .. image:: img/mac_vnc12.png
            :align: center

#. Il desktop del Raspberry Pi verrà visualizzato, e potrai utilizzarlo direttamente dal Mac.

        .. image:: img/mac_vnc13.png
            :align: center
