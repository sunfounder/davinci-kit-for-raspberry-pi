.. note::

    Ciao, benvenuto nella Community di appassionati di SunFounder Raspberry Pi & Arduino & ESP32 su Facebook! Approfondisci le tue conoscenze su Raspberry Pi, Arduino ed ESP32 insieme ad altri appassionati.

    **Perché unirti a noi?**

    - **Supporto Esperto**: Risolvi problemi post-vendita e sfide tecniche con l'aiuto della nostra community e del nostro team.
    - **Impara e Condividi**: Scambia suggerimenti e tutorial per migliorare le tue competenze.
    - **Anteprime Esclusive**: Ottieni accesso anticipato alle novità sui prodotti e alle anteprime esclusive.
    - **Sconti Speciali**: Approfitta di sconti esclusivi sui nostri prodotti più recenti.
    - **Promozioni Festive e Giveaway**: Partecipa a concorsi e promozioni speciali durante le festività.

    👉 Sei pronto a esplorare e creare con noi? Clicca su [|link_sf_facebook|] e unisciti oggi stesso!

Guida Rapida a Scratch
==========================

.. note::

    Durante la programmazione con Scratch 3, potresti aver bisogno di uno schermo per un'esperienza migliore. Naturalmente, se non hai uno schermo, puoi anche utilizzare **VNC** per accedere al desktop di Raspberry Pi in remoto; per un tutorial dettagliato consulta :ref:`VNC`.

Inoltre, Scratch 3 richiede almeno 1GB di RAM per funzionare, e consigliamo un Raspberry Pi 4 con almeno 2GB di RAM. Puoi comunque eseguire Scratch 3 su Raspberry Pi 2, 3, 3B+ o Raspberry 4 con 1GB di RAM, ma le prestazioni saranno ridotte, e a seconda di altri software in esecuzione contemporanea, Scratch 3 potrebbe non avviarsi per mancanza di memoria.


Installare Scratch 3
------------------------

Quando installi Raspberry Pi OS (:ref:`install_os`), scegli la versione con desktop, sia solo desktop che desktop con software consigliato.

Se installi la versione con software consigliato, troverai Scratch 3 nel menu di sistema alla voce **Programmazione**.

Se hai installato la versione solo desktop, dovrai installare Scratch 3 manualmente come descritto di seguito.

Apri il menu, fai clic su **Preferenze** -> **Software Consigliato**.

.. image:: img/quick_scratch1.png

Trova Scratch 3 e selezionalo, quindi fai clic su **Applica** e attendi il termine dell'installazione.

.. image:: img/quick_scratch2.png

Una volta completata l'installazione, dovresti vederlo in **Programmazione** nel menu di sistema.

.. image:: img/quick_scratch3.png

Interfaccia di Scratch 3
------------------------------

Scratch 3 è progettato per essere divertente, educativo e facile da imparare. Offre strumenti per creare storie interattive, giochi, arte, simulazioni e altro, utilizzando la programmazione a blocchi. Scratch include anche un editor grafico e un editor audio integrati.

Nella parte superiore di Scratch 3 troviamo alcune opzioni di base: la prima da sinistra è l'opzione per la lingua, con cui puoi scegliere la lingua di programmazione. La seconda è **File**, per creare nuovi file, aprire file locali e salvare il file corrente. La terza è **Modifica**, per ripristinare operazioni di eliminazione e attivare la modalità di accelerazione (in cui il movimento dello sprite diventa particolarmente veloce). La quarta è **Tutorial**, per accedere ai tutorial di vari progetti. La quinta è l’opzione per nominare il file, dove puoi rinominare il progetto.

.. image:: img/quick_scratch13.png

**Codice**

Scratch 3 ha tre sezioni principali: l’area di scena, la palette dei blocchi e l'area di codifica. La programmazione avviene cliccando e trascinando i blocchi dalla palette all'area di codifica, e infine il risultato viene visualizzato nell'area di scena.

.. image:: img/quick_scratch4.png

Questa è l’area degli sprite di Scratch 3. Sopra l'area ci sono i parametri di base degli sprite; puoi aggiungere sprite presenti in Scratch 3 o caricarne di locali.

.. image:: img/quick_scratch5.png

Questa è l’area degli sfondi di Scratch 3, utile per aggiungere uno sfondo alla scena; puoi scegliere uno sfondo predefinito o caricarne uno locale.

.. image:: img/quick_scratch6.png

Questo è il pulsante **Aggiungi Estensione**.

.. image:: img/quick_scratch7.png

In Scratch 3 possiamo aggiungere diverse estensioni utili; qui prendiamo come esempio **Video Sensing** e facciamo clic su di esso.

.. image:: img/quick_scratch8.png

Lo vedrai nella palette dei blocchi e potrai usare le funzioni associate a questa estensione. Se hai una fotocamera collegata, vedrai la schermata della fotocamera nell'area di scena.

.. image:: img/quick_scratch9.png

**Costumi**

Clicca sull’opzione **Costumi** in alto a sinistra per entrare nella palette dei costumi. Diversi costumi permettono agli sprite di avere movimenti statici diversi, e quando questi movimenti statici vengono combinati, formano un movimento dinamico coerente.

.. image:: img/quick_scratch10.png

**Suoni**

Potresti voler usare delle clip musicali per rendere i tuoi esperimenti più interessanti. Clicca su **Suoni** in alto a sinistra e puoi modificare il suono corrente o selezionarne/caricarne uno nuovo.

.. image:: img/quick_scratch11.png
