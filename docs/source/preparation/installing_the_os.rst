.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Unisciti a noi per approfondire le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni l'accesso anticipato agli annunci sui nuovi prodotti.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Omaggi**: Partecipa a promozioni festive e ricevi omaggi.

    👉 Sei pronto per esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

.. _install_os:

Installazione del Sistema Operativo (Generale)
=================================================

**Passaggio 1**

Raspberry Pi ha sviluppato uno strumento grafico per la scrittura su SD card 
compatibile con Mac OS, Ubuntu 18.04 e Windows. Questa opzione è la più semplice 
per la maggior parte degli utenti poiché scarica e installa automaticamente 
l’immagine del sistema sulla SD card.

Visita la pagina di download: https://www.raspberrypi.org/software/. Clicca sul 
link del **Raspberry Pi Imager** compatibile con il tuo sistema operativo, e 
quando il download è completato, avvialo per eseguire l'installazione.

.. image:: img/image11.png
    :align: center

**Passaggio 2**

Quando avvii l'installatore, il sistema operativo potrebbe tentare di bloccare 
l'esecuzione. Ad esempio, su Windows potrebbe apparire il seguente messaggio:

Se appare questo avviso, clicca su **More info** e poi su **Run anyway** per 
procedere con l'installazione del Raspberry Pi Imager.

.. image:: img/image12.png
    :align: center

**Passaggio 3**

Inserisci la tua SD card nello slot del computer o laptop.

**Passaggio 4**

Nel Raspberry Pi Imager, seleziona il sistema operativo che desideri 
installare e la SD card su cui intendi installarlo.

.. image:: img/image13.png
    :align: center

.. note:: 

    * È necessario essere connessi a Internet la prima volta che si utilizza il software.
    * L'OS verrà memorizzato per un utilizzo offline futuro (``lastdownload.cache``, ``C:/Users/yourname/AppData/Local/Raspberry Pi/Imager/cache``). Alla prossima apertura del software, comparirà la dicitura "Released: data, cached on your computer".

.. Scarica l'immagine `raspios_armhf-2020-05-28 <https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-05-28/2021-05-07-raspios-buster-armhf.zip>`_ e selezionala in Raspberry Pi Imager.

.. .. image:: img/otherOS.png
..     :align: center

.. .. warning::
..     Raspberry Pi OS ha subito modifiche significative dopo la versione 2021-05-28, il che potrebbe rendere alcune funzioni non disponibili. Attualmente, si consiglia di non utilizzare l'ultima versione.

.. .. mark


**Passaggio 5**

Seleziona la SD card che stai utilizzando.

.. image:: img/image14.png
    :align: center

**Passaggio 6**

Premi **Ctrl+Shift+X** o clicca sull'icona delle **impostazioni** per aprire la pagina delle **Opzioni avanzate** e abilitare SSH, impostando anche nome utente e password.

    .. note::
        * Poiché il Raspberry Pi ora non ha una password predefinita, è necessario impostarla. Anche il nome utente può essere modificato.
        * Per l'accesso remoto, dovrai abilitare manualmente SSH.

.. image:: img/image15.png
    :align: center

Scorri verso il basso per completare la configurazione del Wi-Fi e clicca su **SAVE**.

.. note::

    Il parametro ``wifi country`` deve essere impostato secondo il `ISO/IEC alpha2 code <https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements>`_ del paese in cui utilizzi il Raspberry Pi.

.. image:: img/image16.png
    :align: center

**Passaggio 7**

Clicca sul pulsante **WRITE**.

.. image:: img/image17.png
    :align: center

**Passaggio 8**

Se la tua SD card contiene file, potrebbe essere utile fare un backup per 
evitare la perdita dei dati. In caso contrario, clicca su **Yes**.

.. image:: img/image18.png
    :align: center

**Passaggio 9**

Dopo un breve tempo di attesa, apparirà la finestra che indica il 
completamento della scrittura.

.. image:: img/image19.png
    :align: center
