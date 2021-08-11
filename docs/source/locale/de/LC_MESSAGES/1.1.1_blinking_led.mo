��    `                              ,     A     J  �   R     �       4   $  )   Y     �     �  �   �  @   h     �     �     �  U  �  3   
  5   K
     �
  G   �
  C   �
  V     
   h  L   s  :   �  ^   �     Z  L   r  N   �  �       �          -  I   4  E   ~  ?   �  J     D   O  �   �  F   (  }   o  f   �    T    Y  �   j  .  �  �   #  q   �     =  J   J  �   �     5     H  �   O  �   �  
  �  	   �  �   �     u  �   �  q   \  *   �  >   �  �   8     �  �   �  �   �  �   f  r  @   %   �"  n   �"  i   H#  �   �#  �   �$  v   �%  K  �%  #  I'  �   m(  �   A)  o   &*  �   �*  #  �+  �   �,  �   N-     �-     �-     �-     �-  h   �-  k   b.     �.     �.     �.     �.  `  
/     k0     z0     �0     �0  �   �0     Q1  (   `1  F   �1  +   �1  '   �1  '   $2  �   L2  Y   .3     �3     �3     �3  �  �3  3   85  =   l5     �5  B   �5  J   �5  Z   <6     �6  \   �6  M    7  �   N7     �7  q   �7  k   Z8  7  �8     �:     ;     4;  V   ;;  T   �;  [   �;  `   C<  K   �<  �   �<  L   �=  �   �=  p   �>  �   ?  !  �?  �   A  ]  �A  �   $C  �   �C     sD  Z   D  �   �D     �E     �E  �   �E  �   !F  g  �F     ZH    bH     qI  �   �I  �   �J  F   	K  O   PK  �   �K     lL  �   yL  �   XM  �   #N  �  �N  *   �Q  u   R  �   ~R  �   S  P   T  �   QU  �  �U  K  mW  �   �X  "  �Y  �   �Z    P[  Y  e\  �   �]  �   z^     +_     3_     ;_     C_  w   K_  x   �_     <`     E`     N`     c`   **Breadboard** **Code Explanation** **Code** **LED** **Pin11** refers to the 11th pin of the Raspberry Pi from left to right, and its corresponding **wiringPi** and **BCM** pin numbers are shown in the following table. **Resistor** **Step 1:** Build the circuit. **Step 2:** Go to the folder of the code and run it. **Step 2:** Go to the folder of the code. **Step 3:** Compile the code **Step 3:** Run the code **Step 4:** If you want to edit the code file 1.1.1_BlinkingLed.py, press ``Ctrl + C`` to stop running the code. Then type the following command to open 1.1.1_BlinkingLed.py: **Step 4:** Run the executable file output in the previous step. 0 1.1.1 Blinking LED 17 A breadboard is a construction base for prototyping of electronics. It is used to build and test circuits quickly before finishing any circuit design. And it has many holes into which components mentioned above can be inserted like ICs and resistors as well as jumper wires. The breadboard allows you to plug in and remove components easily. After the code runs, you will see the LED flashing. As shown in the card, each color stands for a number. BCM Change directory to the path of the code in this experiment via ``cd``. Change directory to the path of the code in this experiment via cd. Click **Run** ->\ **Run Module** in the window and the following contents will appear. Components Define a destroy function for clean up everything after the script finished. Delay (500) keeps the current HIGH or LOW state for 500ms. Delay for 0.5 second. Here, the statement is delay function in C language, the unit is second. Experimental Procedures Find **C** in the folder, right-click on it and select **Open in Terminal**. Find 1.1.1_BlinkingLed.py and double click it to open. Now you're in the file. Fixed resistor is applied in this kit. In the circuit, it is essential to protect the connected components. The following pictures show a real object, 220Ω resistor and two generally used circuit symbols of resistor. Ω is the unit of resistance and the larger units include KΩ, MΩ, etc. Their relationship can be shown as follows: 1 MΩ=1000 KΩ, 1 KΩ = 1000 Ω. Normally, the value of resistance is marked on it. So if you see these symbols in a circuit, it means that there is a resistor. For C Language Users For Python Language Users GPIO17 Go to **/home/pi/** and find the folder **davinci-kit-for-raspberry-pi**. Here sudo - superuser do, and python means to run the file by Python. If you log into the Raspberry Pi remotely, type in the command: If you log into the Raspberry Pi remotely, use ``cd`` to change directory: If you use a screen, you're recommended to take the following steps. If you want to edit the code file ``1.1.1_BlinkingLed.c``, press ``Ctrl + C`` to stop running the code. Then type the following command to open it: Import time package, for time delay function in the following program. In either way, now you are in the folder C. The subsequent procedures based on these two methods are the same. Let's move on. In order to proceed smoothly, you need to bring your own Raspberry Pi, TF card and Raspberry Pi power. In the C language related content, we make GPIO0 equivalent to 0 in the wiringPi. Among the Python language related content, BCM 17 is 17 in the BCM column of the following table. At the same time, they are the same as the 11th pin on the Raspberry Pi, Pin 11. In the command, ``-o`` means outputting (the character immediately following -o is the filename output after compilation, and an executable named ``BlinkingLed`` will generate here) and ``-lwiringPi`` is to load the library wiringPi (``l`` is the abbreviation of library). In the following lessons, we will use command to enter the code file instead of right-clicking. But you can choose the method you prefer. In this experiment, connect a 220Ω resistor to the anode (the long pin of the LED), then the resistor to 3.3 V, and connect the cathode (the short pin) of the LED to GPIO17 of Raspberry Pi. Therefore, to turn on an LED, we need to make GPIO17 low (0V) level. We can get this phenomenon by programming. In this lesson, we will learn how to make a blinking LED by programming. Through your settings, your LED can produce a series of interesting phenomena. Now, go for it. In this way, import the RPi.GPIO library, then define a variable, GPIO to replace RPI.GPIO in the following code. Introduction LED connects to the GPIO17 of the T-shape extension board, namely, BCM 17. LED is a kind of diode. LED will shine only if the long pin of LED is connected to the positive electrode and the short pin is connected to negative electrode. Phenomenon Picture Pin 11 Pin GPIO17 of the T_Extension Board is corresponding to the GPIO0 in wiringPi. Assign GPIO0 to LedPin, LedPin represents GPIO0 in the code later. Press ``Ctrl+X`` to exit. If you have modified the code, there will be a prompt asking whether to save the changes or not. Type in ``Y`` (save) or ``N`` (don’t save). Press ``Ctrl+X`` to exit. If you have modified the code, there will be a prompt asking whether to save the changes or not. Type in ``Y`` (save) or ``N`` (don’t save). Then press ``Enter`` to exit. Repeat ``Step 3`` and ``Step 4`` to see the effect after modifying. Principle Resistor is an electronic element that can limit the branch current. A fixed resistor is a kind of resistor whose resistance cannot be changed, while that of a potentiometer or a variable resistor can be adjusted. Schematic Diagram Set GPIO0 as 0V (low level). Since the cathode of LED is connected to GPIO0, thus the LED will light up if GPIO0 is set low. On the contrary, set GPIO0 as high level, digitalWrite (LedPin, HIGH): LED will go out. Set GPIO17(BCM17) as 0V (low level). Since the cathode of LED is connected to GPIO17, thus the LED will light up. Set LedPin as output to write value to it. Set LedPin's mode to output, and initial level to High (3.3v). Standard I/O library. The pintf function used for printing the data displayed on the screen is realized by this library. There are many other performance functions for you to explore. T-Board Name The LED can not be directly connected to power supply, which can damage component. A resistor with 160Ω or larger (work in 5V) must be connected in series in the circuit of LED. The hardware drive library is designed for the C language of Raspberry Pi. Adding this library is conducive to the initialization of hardware, and the output of I/O ports, PWM, etc. The picture shows the internal structure of a full+ breadboard. Although these holes on the breadboard appear to be independent of each other, they are actually connected to each other through metal strips internally. The printf function is a standard library function and its function prototype is in the header file "stdio.h". The general form of the call is: printf(" format control string ", output table columns). The format control string is used to specify the output format, which is divided into format string and non-format string. The format string starts with '%' followed by format characters, such as' %d 'for decimal integer output. Unformatted strings are printed as prototypes. What is used here is a non-format string, followed by "\n" that is a newline character, representing automatic line wrapping after printing a string. The program code is shown as follows: Then a window will pop up as shown below. So now you've entered the path of the code **1.1.1_BlinkingLed.c** . Then press ``Enter`` to exit. Type in nano 1.1.1_BlinkingLed.py again to see the effect after the change. There are two ways of numbering the IO pins on a Raspberry Pi within RPi.GPIO: BOARD numbers and BCM numbers. In our lessons, what we use is BCM numbers. You need to set up every channel you are using as an input or an output. This function needs to be called with root privileges. When initialize wiring failed, print message to screen. The function “return” is used to jump out of the current function. Using return in main() function will end the program. This initialises wiringPi and assumes that the calling program is going to be using the wiringPi pin numbering scheme. This is a function that suspends the program for a period of time. And the speed of the program is determined by our hardware. Here we turn on or off the LED. If there is no delay function, the program will run the whole program very fast and continuously loop. So we need the delay function to help us write and debug the program. This is the general running structure of the code. When the program starts to run, it initializes the pin by running the setup(), and then runs the code in the main() function to set the pin to high and low levels. When 'Ctrl+C' is pressed, the program, destroy() will be  executed. To control the GPIO, you need to run the program, by the command, sudo(superuser do). The command ``./`` indicates the current directory. The whole command is to run the ``BlinkingLed`` in the current directory. To stop it from running, just click the X button on the top right to close it and then you'll back to the code. If you modify the code, before clicking **Run Module (F5)** you need to save it first. Then you can see the results. Usually, it is placed behind the main function, indicating that the function returns 0 on successful execution. When the system detects this, it will search the installation path of python in the env setting, then call the corresponding interpreter to complete the operation. It’s to prevent the user not installing the python onto the /usr/bin default path. When using a resistor, we need to know its resistance first. Here are two methods: you can observe the bands on the resistor, or use a multimeter to measure the resistance. You are recommended to use the first method as it is more convenient and faster. To measure the value, use multimeter. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. gcc is GNU Compiler Collection. Here, it functions like compiling the C language file *1_BlinkingLed.c* and outputting an executable file. image42 image43 image45 image46 nano is a text editor tool. The command is used to open the code file 1.1.1_BlinkingLed.py by this tool. nano is a text editor tool. The command is used to open the code file ``1.1.1_BlinkingLed.c`` by this tool. physical wiringPi |image42|\ |image43| |image45|\ |image46| Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 17:58+0800
PO-Revision-Date: 2021-08-09 11:18+0800
Last-Translator: 
Language: de
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Steckbrett** **Code Erklärung** **Code** **LED** **Pin11** bezieht sich von links nach rechts auf den 11. Pin des Raspberry Pi. Die entsprechenden **wiringPi** und **BCM**-Pin-Nummern sind in der folgenden Tabelle aufgeführt. **Widerstand** **Step 1:** Bauen Sie die Schaltung auf. **Schritt 2:** Gehen Sie zum Ordner des Codes und führen Sie ihn aus. **Step 2:** Gehen Sie zum Ordner des Codes. **Schritt 3:** Kompilieren Sie die Kode **Schritt 3:** Führen Sie die Kode aus **Schritt 4:** Wenn Sie die Dodedatei 1.1.1_BlinkingLed.py, bearbeiten möchten, drücken Sie ``Ctrl + C``, um die Ausführung der Kode zu beenden. Geben Sie dann den folgenden Befehl ein, um 1.1.1_BlinkingLed.py: zu öffnen: **Schritt 4:** Führen Sie die Ausgabe der ausführbaren Datei im vorherigen Schritt aus. 0 1.1.1 Blinkende LED 17 Ein Steckbrett ist eine Konstruktionsbasis für das Prototyping von Elektronik. Es wird verwendet, um Schaltungen schnell aufzubauen und zu testen, bevor ein Schaltungsentwurf abgeschlossen wird. Und es hat viele Löcher, in die oben erwähnte Komponenten wie ICs und Widerstände sowie Jumperdrähte eingesetzt werden können. Mit dem Steckbrett können Sie Komponenten einfach anschließen und entfernen. Nachdem der Kode ausgeführt wurde, blinkt die LED. Wie auf der Karte gezeigt, steht jede Farbe für eine Nummer. BCM Wechseln Sie in diesem Experiment per ``cd`` in den Pfad der Kode. Ändern Sie das Verzeichnis in den Codepfad in diesem Experiment durch CD. Klicken Sie im Fenster auf **Run** ->\ **Run Module**. Der folgende Inhalt wird angezeigt. Komponenten Definieren Sie eine Zerstörungsfunktion, um alles nach Abschluss des Skripts zu bereinigen. Die Verzögerung (500) hält den aktuellen HIGH- oder LOW-Status für 500 ms. Verzögerung um 0,5 Sekunden. Hier ähnelt die Anweisung der Verzögerungsfunktion in der Sprache C, die Einheit ist die zweite. Experimentelle Verfahren Suchen Sie **C** im Ordner, klicken Sie mit der rechten Maustaste darauf und wählen **Sie In Terminal öffnen**. Suchen Sie 1.1.1_BlinkingLed.py und doppelklicken Sie darauf, um es zu öffnen. Jetzt bist du in der Datei. In diesem Kit wird ein fester Widerstand angewendet. In der Schaltung ist es wichtig, die angeschlossenen Komponenten zu schützen. Die folgenden Bilder zeigen ein reales Objekt, einen 220Ω-Widerstand und zwei allgemein verwendete Schaltungssymbole des Widerstands. Ω ist die Widerstandseinheit und die größeren Einheiten umfassen KΩ, MΩ usw. Ihre Beziehung kann wie folgt gezeigt werden: 1 MΩ = 1000 KΩ, 1 KΩ = 1000 Ω. Normalerweise ist der Widerstandswert darauf markiert. Wenn Sie diese Symbole in einer Schaltung sehen, bedeutet, es gibt ein Widerstand. Für Benutzer in C-Sprache Für Python-Sprachbenutzer GPIO17 Gehen Sie zu **/home/pi/** und suchen Sie den Ordner **davinci-kit-for-raspberry-pi**. Hier tun sudo - superuser do und python bedeutet, die Datei von Python auszuführen. Wenn Sie sich beim Raspberry Pi aus der Ferne anmelden, geben Sie den folgenden Befehl ein: Wenn Sie sich beim Raspberry Pi aus der Ferne anmelden, wechseln Sie mit ``cd`` das Verzeichnis: Wenn Sie einen Bildschirm verwenden, sind die folgenden Schritte empfohlen. Wenn Sie die Kodedatei ``1.1.1_BlinkingLed.c`` bearbeiten möchten, drücken Sie ``Ctrl + C``, um die Ausführung des Kodes zu beenden. Geben Sie dann den folgenden Befehl ein und öffnen es: Zeitpaket importieren, für Zeitverzögerungsfunktion im folgenden Programm. In jedem Fall befinden Sie sich jetzt im Ordner C. Die weiteren Verfahren, die auf diesen beiden Methoden basieren, sind gleich. Lass uns weitermachen. Um reibungslos fortzufahren, müssen Sie Ihren eigenen Raspberry Pi, TF-Karte und Raspberry Pi-Strom mitbringen. In den C-Sprachinhalten machen wir GPIO0 sz bis 0 in der wiringPi. U Unter den Python-Sprachinhalten, BCM 17 ist 17 in der BCM-Spalte der folgenden Tabelle. Gleichzeitig sind sie gleich mit dem 11. Pin des Raspberry Pi, Pin 11. Im Befehl bedeutet ``-o`` die Ausgabe (das Zeichen unmittelbar nach -o ist die Dateinamenausgabe nach der Kompilierung, und eine ausführbare Datei namens ``BlinkingLed`` wird hier generiert) , ``-lwiringPi`` ist das Laden der Bibliothek wiringPi (``l`` ist die Abkürzung der Bibliothek). In den folgenden Lektionen verwenden wir den Befehl, um die Codedatei einzugeben, anstatt mit der rechten Maustaste zu klicken. Aber Sie können die Methode wählen, die Sie bevorzugen. In diesem Experiment schließen Sie einen 220 Ω-Widerstand an die Anode (den langen Pin der LED) und dann den Widerstand an 3,3 V an und verbinden Sie die Kathode (den kurzen Pin) der LED mit GPIO17 von Raspberry Pi. Da um eine LED einzuschalten, muss der GPIO17-Niveau niedrig (0V) sein. Wir können dieses Phänomen durch Programmierung erhalten. In dieser Lektion lernen wir, wie man durch Programmierung eine blinkende LED erzeugt. Durch Ihre Einstellungen kann Ihre LED eine Reihe interessanter Phänomene erzeugen. Jetzt mach es. Importieren Sie auf diese Weise die RPi.GPIO-Bibliothek und definieren Sie dann eine Variable, GPIO, um RPI.GPIO in der folgenden Kode zu ersetzen. Einführung Die LED wird mit dem GPIO17 der T-förmigen Erweiterungskarte, nämlich BCM 17, verbunden. LED ist eine Art Diode. Die LED leuchtet nur, wenn der lange Stift der LED mit der positiven Elektrode und der kurze Stift mit der negativen Elektrode verbunden ist. Phänomen Bild Pin 11 Pin GPIO17 der T_Erweiterungskarte entspricht dem GPIO0 in WiringPi. Weisen Sie Ledpin GPIO0 zu, was GPIO0 im zukünftigen Kode darstellt. Drücken Sie ``Ctrl+X`` für Ausfahrt Wenn Sie die Kode geändert haben, werden Sie gefragt, ob Sie die Änderungen speichern möchten oder nicht. Geben Sie ``Y`` (speichern) oder ``N`` (nicht speichern) ein. Drücken Sie ``Ctrl+X`` für Ausfahrt Wenn Sie die Kode geändert haben, werden Sie gefragt, ob Sie die Änderungen speichern möchten oder nicht. Geben Sie ``Y`` (speichern) oder ``N`` (nicht speichern) ein. Drücken Sie dann die ``Enter`` , um den Vorgang zu beenden. Wiederholen Sie ``Schritt 3`` und ``Schritt 4``, um den Effekt nach dem Ändern zu sehen. Prinzip Der Widerstand ist ein elektronisches Element, das den Zweigstrom begrenzen kann. Ein fester Widerstand ist ein Tpy von Widerstand, dessen Widerstand nicht geändert werden kann, während der eines Potentiometers oder eines variablen Widerstands eingestellt werden kann. Schematische Darstellung Stellen Sie GPIO0 auf 0V (niedriger Niveau) ein. Da die Kathode der LED mit GPIO0 verbunden ist, leuchtet die LED auf, wenn GPIO0 niedrig eingestellt ist. Im Gegenteil, stellen Sie GPIO0 als High-Level ein. DigitalWrite (LedPin, HIGH): Die LED erlischt. Stellen Sie GPIO17 (BCM17) auf 0V (niedriger Niveau) ein. Da die Kathode der LED mit GPIO17 verbunden ist, leuchtet die LED auf. Stellen Sie LedPin als Ausgabe ein, um einen Wert darauf zu schreiben. Stellen Sie den LedPin-Modus auf Ausgabe und den AnfangsNiveau auf Hoch (3.3v). Standard I/O Bibliothek. Die Pintf-Funktion zum Drucken der auf dem Bildschirm angezeigten Daten wird von dieser Bibliothek realisiert. Es gibt viele andere Leistungsfunktionen, die Sie erkunden können. T-Karte Name Die LED kann nicht direkt an die Stromversorgung angeschlossen werden, die Komponente kann daruas beschädigt werden. Ein Widerstand mit 160 Ω oder mehr (Arbeit in 5V) muss in der LED-Schaltung in Reihe geschaltet werden. Die Hardware-Laufwerksbibliothek wurde für die C-Sprache von Raspberry Pi entwickelt. Das Hinzufügen dieser Bibliothek fördert die Initialisierung der Hardware und die Ausgabe von I/O ports, PWM usw. Das Bild zeigt die interne Struktur eines Voll+ Steckbretts. Obwohl diese Löcher auf dem Steckbrett unabhängig voneinander zu sein scheinen, sind sie tatsächlich intern über Metallstreifen miteinander verbunden. Die printf-Funktion ist eine Standardbibliotheksfunktion und ihr Funktionsprototyp befindet sich in der Header-Datei "stdio.h". Die allgemeine Form des Aufrufs lautet: printf ("Format Control String", Spalten der Ausgabetabelle). Die Formatsteuerzeichenfolge wird verwendet, um das Ausgabeformat anzugeben, das in Formatzeichenfolge und Nichtformatzeichenfolge unterteilt ist. Die Formatzeichenfolge beginnt mit '%', gefolgt von Formatzeichen, z. B. '% d' für die Ausgabe von Dezimalzahlen. Unformatierte Zeichenfolgen werden als Prototypen gedruckt. Hier wird eine nicht formatierte Zeichenfolge verwendet, gefolgt von "\n", einem Zeilenumbruchzeichen, das den automatischen Zeilenumbruch nach dem Drucken einer Zeichenfolge darstellt. Der Programmkode wird wie folgt angezeigt: Dann öffnet sich ein Fenster wie unten gezeigt. Nun haben Sie den Pfad des Codes **1.1.1_BlinkingLed.c** eingegeben. Drücken Sie dann ``Enter``, um den Vorgang zu beenden. Geben Sie nano 1.1.1_BlinkingLed.py erneut ein, um den Effekt nach der Änderung zu sehen. Es gibt zwei Wisen, die IO -Pins eines Raspberry Pi in RPi.GPIO zu nummerieren: BOARD-Nummern und BCM-Nummern. In unseren Lektionen verwenden wir BCM-Nummern. Sie müssen jeden Kanal einrichten, den Sie als Eingang oder Ausgang verwenden. Diese Funktion muss mit Root-Rechten aufgerufen werden. Wenn die Initialisierung der Verkabelung fehlgeschlagen ist, drucken Sie die Nachricht auf dem Bildschirm. Die Funktion “Rückgabe” wird verwendet, um aus der aktuellen Funktion herauszuspringen. Wenn Sie die Funktion Rückgabe in main () verwenden, wird das Programm beendet. Dadurch wird wiringPi initialisiert und geht davon aus, dass das aufrufende Programm das wiringPi Nummerierungsschema verwendet. Dies ist eine Funktion, die das Programm für einen bestimmten Zeitraum anhält. Und die Geschwindigkeit des Programms wird von unserer Hardware bestimmt. Hier schalten wir die LED ein oder aus. Wenn es keine Verzögerungsfunktion gibt, führt das Programm das gesamte Programm sehr schnell und kontinuierlich aus. Wir brauchen also die Verzögerungsfunktion, um das Programm schreiben und debuggen zu können. Dies ist die allgemeine Ausführungsstruktur der Kode Wenn das Programm gestartet wird, wird der Pin durch Ausführen von setup () initialisiert und anschließend der Kode in der Funktion main () ausgeführt, um den Pin auf hohe und niedrige Niveau zu setzen. Wenn 'Ctrl+C' gedrückt wird, wird das Programm destroy () ausgeführt. Um das GPIO zu steuern, müssen Sie das Programm mit dem Befehl sudo (Superuser do) ausführen. Der Befehl ``./`` gibt das aktuelle Verzeichnis an. Der gesamte Befehl ist für die Ausführung der ``BlinkingLed`` im aktuellen Verzeichnis. Um die Ausführung zu stoppen, klicken Sie einfach auf die X-Schaltfläche oben rechts, um sie zu schließen, und kehren Sie dann zum Code zurück. Wenn Sie die Kode ändern, müssen Sie ihn zuerst speichern, bevor Sie auf **Run Module (F5)** klicken. Dann können Sie die Ergebnisse sehen. Normalerweise wird es hinter der Hauptfunktion platziert, was anzeigt, dass die Funktion bei erfolgreicher Ausführung 0 zurückgibt. Wenn das System dies erkennt, durchsucht es den Installationspfad von Python in der Umgebung env und ruft dann den entsprechenden Interpreter auf, um den Vorgang abzuschließen. Dies soll verhindern, dass der Benutzer die Python nicht auf dem Defaultpfad /usr/bin installiert. Wenn wir einen Widerstand verwenden, müssen wir zuerst seinen Widerstand kennen. Hier sind zwei Methoden: Sie können die Bänder am Widerstand beobachten oder den Widerstand mit einem Multimeter messen. Es wird empfohlen, die erste Methode zu verwenden, da diese bequemer und schneller ist. Verwenden Sie ein Multimeter, um den Wert zu messen. Sie können den folgenden Code **Ändern/Zurücksetzen/ Kopieren/Ausführen/Stoppen**. Zuvor müssen Sie jedoch zu einem Quellcodepfad wie ``davinci-kit-for-raspberry-pi\\python`` gehen. Hinweis: gcc ist die gcc ist die GNU Compilersammlung.. Hier funktioniert es wie das Kompilieren der C-Sprachdatei *1_BlinkingLed.c* und das Ausgeben einer ausführbaren Datei. image42 image43 image45 image46 nano ist ein Texteditor. Mit dem Befehl wird die Dodedatei 1.1.1_BlinkingLed.py by this tool.von diesem Tool geöffnet. nano ist ein Texteditor. Der Befehl wird verwendet, um die Kodedatei ``1.1.1_BlinkingLed.c`` mit diesem Tool zu öffnen. physisch wiringPi |image42|\ |image43| |image45|\ |image46| 