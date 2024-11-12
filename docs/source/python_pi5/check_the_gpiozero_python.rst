.. note::

    Ciao, benvenuto nella Community di Facebook dedicata agli appassionati di SunFounder Raspberry Pi, Arduino e ESP32! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirsi a noi?**

    - **Supporto Esperto**: Risolvi problematiche post-vendita e sfide tecniche con l’aiuto della nostra comunità e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e alle anteprime.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti subito!

Verifica di ``GPIO Zero``
=================================

Se sei un utente Python su Raspberry Pi 5, puoi programmare i GPIO utilizzando 
le API fornite da ``GPIO Zero``.

``GPIO Zero`` è un modulo per il controllo dei pin GPIO su Raspberry Pi. 
Questo pacchetto offre una gamma di classi e funzioni intuitive per gestire i GPIO. 
Per esempi e documentazione, visita: https://gpiozero.readthedocs.io/en/latest/.

Per verificare se ``GPIO Zero`` è installato, digita in Python:

.. raw:: html

   <run></run>

.. code-block::

    python

.. image:: ../python_pi5/img/zero_01.png
    :width: 100%


Nella CLI di Python, inserisci ``import gpiozero``. Se non appare alcun messaggio 
di errore, significa che GPIO Zero è installato.

.. raw:: html

   <run></run>

.. code-block::

    import gpiozero

.. image:: ../python_pi5/img/zero_02.png
    :width: 100%


Se desideri uscire dalla CLI di Python, digita:

.. raw:: html

   <run></run>

.. code-block::

    exit()

.. image:: ../python_pi5/img/zero_03.png
    :width: 100%


