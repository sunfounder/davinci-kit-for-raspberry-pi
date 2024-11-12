.. note::

    Ciao, benvenuto nella Community SunFounder per gli appassionati di Raspberry Pi, Arduino e ESP32 su Facebook! Unisciti a noi per esplorare a fondo Raspberry Pi, Arduino e ESP32 insieme ad altri appassionati.

    **Perché Unirsi a Noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia consigli e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato agli annunci di nuovi prodotti e anteprime.
    - **Sconti Esclusivi**: Approfitta di sconti speciali sui nostri prodotti più recenti.
    - **Promozioni e Concorsi Festivi**: Partecipa a promozioni e concorsi speciali durante le festività.

    👉 Pronto per esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti a noi oggi stesso!


Video 21: Utilizzo di un Sensore Ultrasonico HC-SR04 per l’Ecolocazione
=======================================================================================

Questo tutorial illustra come creare un sensore di distanza ultrasonico con un Raspberry Pi, utilizzando il sensore HC-SR04. 
Il video spiega i principi dell’ecolocazione, introduce i componenti necessari, dimostra il cablaggio 
e guida passo passo attraverso il processo di codifica. 
Si sottolinea l’importanza di una temporizzazione precisa nel codice per misurazioni accurate della distanza e si promuovono buone pratiche ingegneristiche.

1. **Introduzione all’Ecolocazione**: Uso del suono per rilevare la posizione degli oggetti, ispirato da pipistrelli e balene.
2. **Panoramica dei Componenti**: Introduzione al sensore ultrasonico HC-SR04 e al suo collegamento con il Raspberry Pi.
3. **Configurazione dei Collegamenti**: Connessione del sensore HC-SR04 ai pin GPIO di Raspberry Pi per alimentazione, massa, trigger ed echo.
4. **Processo di Codifica**: Guida al codice Python per generare impulsi ultrasonici, attivare il sensore e misurare il tempo di ritorno dell’eco.
5. **Considerazioni sul Timing**: Importanza di una temporizzazione precisa per misure di distanza accurate.
6. **Buone Pratiche Ingegneristiche**: Importanza della pianificazione e comprensione del codice prima dell’implementazione.
7. **Attesa del Pin Echo**: Utilizzo di un ciclo while per attendere che il pin echo vada alto.
8. **Registrazione dell’Ora di Inizio**: Cattura dell’ora di sistema quando il pin echo diventa alto per segnare l’inizio della misurazione.
9. **Misura del Tempo di Viaggio dell’Impulso**: Calcolo del tempo di viaggio dell’impulso determinando la differenza di tempo tra il pin echo alto e basso.
10. **Conversione delle Unità**: Moltiplicazione del tempo di viaggio dell’impulso per un milione per una maggiore leggibilità.
11. **Aggiunta di un Ritardo**: Introduzione di un ritardo dopo ogni misurazione per prevenire echi multipli.
12. **Calcolo della Distanza**: Uso della velocità del suono e del tempo di viaggio dell’impulso per calcolare la distanza dall’oggetto target.

**Video**

.. raw:: html

    <iframe width="700" height="500" src="https://www.youtube.com/embed/SoAGLXoQ5XI?si=OPMqLtQ53hKNHs4j" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>