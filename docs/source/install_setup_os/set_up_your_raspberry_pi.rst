.. note::

    Ciao, benvenuto nella Community di appassionati di Raspberry Pi, Arduino e ESP32 di SunFounder su Facebook! Approfondisci il tuo viaggio con Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto esperto**: Risolvi i problemi post-vendita e le sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni accesso anticipato a nuovi annunci di prodotti e anteprime.
    - **Sconti speciali**: Godi di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e concorsi festivi**: Partecipa a concorsi e promozioni durante le festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

Configurare il tuo Raspberry Pi
========================================

Configurazione con schermo
------------------------------

Disporre di uno schermo semplifica il processo di utilizzo del Raspberry Pi.

**Componenti necessari**

* Raspberry Pi
* Alimentatore
* Scheda Micro SD
* Alimentatore per lo schermo
* Cavo HDMI
* Schermo
* Mouse
* Tastiera

**Passaggi**:

#. Collega il mouse e la tastiera al Raspberry Pi.

#. Usa il cavo HDMI per collegare lo schermo alla porta HDMI del Raspberry Pi. Assicurati che lo schermo sia collegato a una fonte di alimentazione e acceso.

#. Alimenta il Raspberry Pi utilizzando l'adattatore di corrente. Dopo pochi secondi, dovrebbe apparire il desktop del sistema operativo Raspberry Pi sullo schermo.

    .. image:: img/bullseye_desktop.png
        :align: center

Configurazione senza schermo
--------------------------------

Se non hai un monitor, l'accesso remoto è un'opzione valida.

**Componenti necessari**

* Raspberry Pi
* Alimentatore
* Scheda Micro SD

Usando SSH, puoi accedere alla shell Bash del Raspberry Pi, che è la shell predefinita di Linux. Bash offre un'interfaccia a riga di comando per eseguire varie operazioni.

Per chi preferisce un'interfaccia grafica (GUI), la funzione di desktop remoto è un'alternativa conveniente per gestire file e operazioni.

Per tutorial dettagliati sulla configurazione in base al tuo sistema operativo, consulta le sezioni seguenti:

.. toctree::

    remote_macosx
    remote_windows
    remote_linux
    remote_desktop

