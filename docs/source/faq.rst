.. note:: 

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Scopri di più su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto da esperti**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Ottieni un accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni e omaggi**: Partecipa a promozioni speciali e omaggi durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi!

FAQ
============

Il codice C non funziona?
----------------------------------

* Verifica che i collegamenti siano corretti.
* Controlla se il codice riporta errori. In caso affermativo, consulta: :ref:`install_wiringpi`.
* Assicurati che il codice sia stato compilato prima di eseguirlo.
* Se tutti e tre i punti precedenti sono corretti, potrebbe essere che la tua versione di wiringPi (2.50) non sia compatibile con il tuo Raspberry Pi 4B o superiore. Consulta :ref:`install_wiringpi` per aggiornare manualmente alla versione 2.52.

.. _faq_soc:

Se ``gpiozero`` non funziona.
-------------------------------------------------------------------------

Il nostro tutorial GPIO per Raspberry Pi 5 si basa sulla libreria gpiozero ed è stato testato accuratamente durante il processo di progettazione.

Tuttavia, recenti modifiche al kernel Linux su Raspberry Pi OS [1] hanno cambiato il modo in cui vengono gestite le chiamate di sistema GPIO, 
causando l’impossibilità della libreria Python originale di accedere a GPIO sul Raspberry Pi 5. I nostri sviluppatori hanno segnalato questo 
problema al team della libreria gpiozero, e gli sviluppatori della gpiozero sono a conoscenza del problema e stanno lavorando attivamente a un aggiornamento [2].

* [1] https://github.com/raspberrypi/linux/pull/6144
* [2] https://github.com/gpiozero/gpiozero/issues/1166

Nel frattempo, abbiamo trovato una soluzione temporanea: eseguendo il comando 
seguente, il GPIO funzionerà normalmente.

.. code-block::

    sudo ln -s gpiochip0 /dev/gpiochip4

Questa soluzione sarà efficace fino a quando la libreria gpiozero non rilascerà un aggiornamento adeguato.
