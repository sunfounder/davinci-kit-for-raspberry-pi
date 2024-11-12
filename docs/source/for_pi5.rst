.. note:: 

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto da esperti**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni un accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e omaggi**: Partecipa a promozioni speciali e omaggi durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

Per Pi 5
============================

Il rilascio di Raspberry Pi 5 ha portato con sé un modello più potente, ma 
anche alcuni cambiamenti, in particolare per quanto riguarda il GPIO. Sebbene 
mantenga l'interfaccia standard a 40 pin, le funzionalità sono cambiate a 
causa della connessione con il nuovo chip RP1, integrato come southbridge. 
Questo chip personalizzato RP1 ora gestisce le periferiche sul Pi 5, creando 
diverse problematiche di compatibilità. Al momento, solo la libreria GPIO Zero, 
gestita ufficialmente dall'organizzazione Raspberry Pi, è pienamente compatibile. 
Abbiamo sviluppato una serie di corsi focalizzati su questa libreria.

.. toctree::
    :maxdepth: 1
    
    python_pi5/play_with_python_pi5
    c_pi5/play_with_c
    scratch_pi5/play_with_scratch

Per questioni di compatibilità con altri linguaggi di programmazione, consulta le informazioni dettagliate qui sotto:

**Processing**

Utilizzando Processing 4 su Raspberry Pi 5, si riscontrano difficoltà nella programmazione GPIO. Durante l'esecuzione di codice relativo al GPIO, si verificano errori come "Invalid argument" e "GPIO pin 17 seems to be unavailable on your platform" (come illustrato nell'immagine allegata). Per maggiori dettagli, visita: https://github.com/benfry/processing4/issues/807

.. image:: img/pi5_processing.png

**Node.js**

Node.js utilizza la libreria pigpio, che attualmente non supporta Raspberry Pi 5. Per ulteriori informazioni, visita: https://github.com/joan2937/pigpio/issues/589

.. image:: img/pi5_nodejs.png
    :width: 700

Su un sistema a 64 bit, l'importazione della libreria Raspberry Pi GPIO presenta problemi che portano a un mancato funzionamento. Per ulteriori dettagli, visita: https://github.com/raspberrypi/bookworm-feedback/issues/91.
