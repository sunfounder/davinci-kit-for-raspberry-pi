.. note::

    Ciao, benvenuto nella community SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci Raspberry Pi, Arduino ed ESP32 con altri appassionati.

    **Perché unirsi?**

    - **Supporto esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra comunità e del nostro team.
    - **Impara e condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime esclusive**: Accedi in anticipo a nuovi annunci di prodotti e anteprime.
    - **Sconti speciali**: Goditi sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni festive e omaggi**: Partecipa a omaggi e promozioni festive.

    👉 Pronto per esplorare e creare con noi? Clicca [|link_sf_facebook|] e unisciti oggi stesso!

.. _login_windows:

PuTTY
=========================

Se sei un utente Windows, puoi utilizzare alcune applicazioni SSH. Qui ti consigliamo `PuTTY <https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html>`_.

**Passo 1**

Scarica PuTTY.

**Passo 2**

Apri PuTTY e clicca su **Session** nella struttura ad albero a sinistra. Inserisci 
l'indirizzo IP del Raspberry Pi nella casella di testo sotto **Host Name (or IP address)** 
e **22** sotto **Port** (il valore predefinito è 22).

.. image:: img/image25.png
    :align: center

**Passo 3**

Clicca su **Open**. Nota che quando accedi per la prima volta al Raspberry Pi con 
l'indirizzo IP, appare un promemoria di sicurezza. Clicca semplicemente su **Yes**.

**Passo 4**

Quando la finestra di PuTTY richiede \"**login as:**\", digita
\"**pi**\" (il nome utente del Raspberry Pi), e la **password**: \"raspberry\"
(quella predefinita, se non l'hai cambiata).

.. note::

    Quando inserisci la password, i caratteri non vengono visualizzati nella finestra, il che è normale. Devi solo digitare correttamente la password.
    
    Se appare "inactive" accanto a PuTTY, significa che la connessione è stata interrotta e deve essere ristabilita.
    
.. image:: img/image26.png
    :align: center

**Passo 5**

Ora, il Raspberry Pi è connesso ed è il momento di procedere con i passaggi successivi.
