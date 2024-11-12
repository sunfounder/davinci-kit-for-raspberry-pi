.. note::

    Ciao, benvenuto nella SunFounder Raspberry Pi & Arduino & ESP32 Enthusiasts Community su Facebook! Unisciti a noi per approfondire Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi?**

    - **Supporto esperto**: Risolvi problemi post-vendita e sfide tecniche con l’aiuto della nostra community e del nostro team.
    - **Impara e condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Accedi in anteprima agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti speciali**: Approfitta di sconti esclusivi sui nostri nuovi prodotti.
    - **Promozioni festive e omaggi**: Partecipa a promozioni e omaggi in occasione delle festività.

    👉 Pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

Cos’è Nodejs?
===================

Node.js è stato rilasciato a maggio 2009 e sviluppato da Ryan Dahl. Si tratta di un ambiente di runtime JavaScript basato sul motore V8 di Chrome. Utilizza un modello I/O non bloccante e basato su eventi, consentendo a JavaScript di funzionare come piattaforma di sviluppo lato server.

In breve, Node.js è JavaScript che gira sul server. Se hai familiarità con JavaScript, apprendere Node.js sarà molto semplice.

Nodejs utilizza solitamente il comando ``npm install xxx`` per installare pacchetti di terze parti, il che richiede l'installazione dello strumento npm, simile a pip per Python.

Installare o aggiornare nodejs e npm
------------------------------------------

Esegui i seguenti comandi per installare e aggiornare nodejs e npm.

.. raw:: html

    <run></run>

.. code-block::

    sudo apt-get update
    sudo apt-get install nodejs
    sudo apt-get install npm 
    sudo npm install npm -g

Successivamente, verifica la versione corrente di Node con il seguente comando.

.. raw:: html

    <run></run>

.. code-block::

    node -v

Il comando seguente verifica la versione corrente di npm.

.. raw:: html

    <run></run>

.. code-block::

    npm -v