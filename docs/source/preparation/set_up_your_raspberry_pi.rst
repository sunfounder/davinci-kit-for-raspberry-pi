.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Configurazione del Tuo Raspberry Pi
=======================================

Se hai uno schermo
------------------------

Se disponi di uno schermo, sarà semplice operare direttamente sul Raspberry Pi.

**Componenti Necessari**

* Un Raspberry Pi (qualsiasi modello)
* 1 * Alimentatore
* 1 * Scheda Micro SD
* 1 * Alimentatore per schermo
* 1 * Cavo HDMI
* 1 * Schermo
* 1 * Mouse
* 1 * Tastiera

#. Inserisci la scheda SD configurata con Raspberry Pi OS nello slot micro SD sotto al tuo Raspberry Pi.

#. Collega il mouse e la tastiera.

#. Connetti lo schermo alla porta HDMI del Raspberry Pi e assicurati che sia collegato a una presa di corrente e acceso.

    .. note::

        Se usi un Raspberry Pi 4, è necessario collegare lo schermo a HDMI0 (la porta più vicina all’ingresso dell’alimentazione).

#. Alimenta il Raspberry Pi utilizzando l’alimentatore. Dopo alcuni secondi, verrà visualizzato il desktop di Raspberry Pi OS.

    .. image:: img/login1.png
        :align: center

.. _no_screen:

Se Non Hai Uno Schermo
--------------------------

Se non disponi di un monitor, puoi accedere da remoto al tuo Raspberry Pi.

Puoi utilizzare il comando SSH per aprire la Bash del Raspberry Pi. Bash è la shell standard per Linux e consente di eseguire la maggior parte delle operazioni necessarie tramite comandi.

Se non ti soddisfa usare solo la finestra di comando per accedere al tuo Raspberry Pi, puoi anche usare la funzione di desktop remoto per gestire facilmente i file tramite interfaccia grafica (GUI).

Consulta qui di seguito i tutorial dettagliati per ogni sistema operativo.

.. toctree::

    remote_macosx
    remote_windows
    remote_linux

