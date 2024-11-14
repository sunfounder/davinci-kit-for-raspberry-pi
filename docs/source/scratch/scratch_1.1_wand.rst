.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato alle novità sui prodotti e alle anteprime esclusive.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

1.1 Bacchetta Magica
=======================

Oggi utilizzeremo un LED, un Raspberry Pi e Scratch per creare un gioco divertente. Quando agitiamo la bacchetta magica, il LED si accenderà e spegnerà a intermittenza.

.. image:: img/1.1_header.png

Componenti Necessari
-------------------------

.. image:: img/1.1_list.png

Costruisci il Circuito
-------------------------

.. image:: img/1.1_image49.png

Aggiungere l'Estensione GPIO
-------------------------------

Fai clic sul pulsante **Aggiungi Estensione** in basso a sinistra, quindi aggiungi **Raspberry Pi GPIO**, un'estensione che useremo in tutti i nostri progetti Scratch.

.. image:: img/1.1_scratchled1.png
    :align: center

.. image:: img/1.1_scratchled2.png
    :align: center

.. image:: img/1.1_scratchled3.png
    :align: center

Carica il Codice e Guarda Cosa Succede
----------------------------------------

Carica il file di codice dal tuo computer (``davinci-kit-for-raspberry-pi/scratch/code``) su Scratch 3.

.. image:: img/1.1_scratch_step1.png

.. image:: img/1.1_scratch_step2.png

Dopo aver cliccato sulla bacchetta magica nell'area di scena, vedrai che il LED si accenderà e spegnerà per due secondi.

.. image:: img/1.1_step3.png


Suggerimenti sugli Sprite
----------------------------

Fai clic su **Carica Sprite**.

.. image:: img/1.1_upload_sprite.png

Carica **Wand.png** dal percorso ``davinci-kit-for-raspberry-pi/scratch/picture`` su Scratch 3.

.. image:: img/1.1_upload.png

Infine, elimina **Sprite1**.

.. image:: img/1.1_delete.png

Suggerimenti sul Codice
---------------------------

.. image:: img/1.1_LED1.png
  :width: 300

Questo è un blocco evento la cui condizione di attivazione è fare clic sulla bandiera verde nella scena. È necessario un evento di avvio all'inizio di ogni codice, e puoi selezionare altri eventi di avvio nella categoria **Eventi** della **palette dei blocchi**.

.. image:: img/1.1_events.png
  :width: 300

Ad esempio, ora possiamo cambiare l'evento di attivazione in un clic sullo sprite.

.. image:: img/1.1_LED2.png
  :width: 300

Questo è un blocco con un numero impostato di cicli. Quando inseriamo il numero 10, gli eventi all'interno del blocco verranno eseguiti 10 volte.

.. image:: img/1.1_LED4.png
  :width: 300

Questo blocco è utilizzato per mettere in pausa il programma per un certo tempo in secondi.

.. image:: img/1.1_LED3.png
  :width: 500

Poiché in Scratch viene utilizzata la nomenclatura BCM, questo codice imposta GPIO17 (BCM17) a 0V (livello basso). Dato che il catodo del LED è collegato a GPIO17, il LED si accenderà. Al contrario, se imposti GPIO (BCM17) su alto, il LED si spegnerà.
