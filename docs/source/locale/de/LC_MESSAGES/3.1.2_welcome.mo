��    2      �              <     =     R     k     �     �     �     �     �     �               
                                L  (     u  @   y  0   �  
   �  �   �  ?   w  L   �  J        O     g     n     u     |  �   �  I  x     �	     �	     �	     �	     �	     �	     �	     
  �   
  �     C     N   J  �   �     4     =  `  F     �     �     �  +   �  $   %     J     f     �     �     �     �     �     �     �     �     �     �     �  �  �     L  @   P  A   �     �  �   �  P   �  c   �  U   7     �     �     �     �     �  2  �  c  �     Y     e     t     {     �     �     �     �    �    �  S   �  O   0  �   �     ;     D   **Code Explanation** **For C Language Users** **For Python Language Users** **Step 1:** Build the circuit. **Step 2:** Change directory. **Step 3:** Compile. **Step 3:** Run. **Step 4:** Run. **code** 0 1 17 18 2 22 27 3 3.1.2 Welcome After the code runs, if the PIR sensor detects someone passing by, the door will automatically open (simulated by the servo), turn on the indicator and play the doorbell music. After the doorbell music plays, the system will automatically close the door and turn off the indicator light, waiting for the next time someone passes by. BCM C:\Users\sunfounder\Desktop\3.1.4_Welcome_bb.png3.1.4_Welcome_bb Close the door and turn off the indicator light. Components Create a closedoor function to simulate closing the door, turn off the LED and let the servo turn from 180 degrees to 0 degree. Create a function, doorbell to enable the buzzer to play music. Create a function, servowrite to write the angle in the servo that is 0-180. Create a function, setAngle to write the angle in the servo that is 0-180. Experimental Procedures GPIO17 GPIO18 GPIO22 GPIO27 In the function main(), initialize library wiringPi and setup softTone, then set ledPin to output state and pirPin to input state. If the PIR sensor detects someone passing by, the function opendoor will be called to simulate opening the door. In this project, we will use PIR to sense the movement of pedestrians, and use servos, LED, buzzer to simulate the work of the sensor door of the convenience store. When the pedestrian appears within the sensing range of the PIR, the indicator light will be on, the door will be opened, and the buzzer will play the opening bell. Introduction Phenomenon Picture Pin 11 Pin 12 Pin 13 Pin 15 Schematic Diagram T-Board Name The function opendoor() includes several parts: turn on the indicator light, turn the servo (simulate the action of opening the door), play the doorbell music of the convenience store, and call the function closedoor() after playing music. The function, opendoor() consists of several parts: turn on the indicator light, turn the servo (to simulate the action of opening the door), play the doorbell music of the convenience store, and call the function , closedoor() after playing music. These statements are used to initialize the pins of each component. When RIP senses that someone is passing by, it calls the function, opendoor(). You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. physical wiringPi Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 17:51+0800
PO-Revision-Date: 2021-06-01 10:23+0800
Last-Translator: 
Language: de
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Code Erklärung** **Für Benutzer in C-Sprache** **Für Python-Sprachbenutzer** **Schritt 1:** Bauen Sie die Schaltung auf. **Schritt 2:** Verzeichnis wechseln. **Schritt 3:** Kompilieren. **Schritt 3:** Ausführen. **Schritt 4:** Ausführen. **code** 0 1 17 18 2 22 27 3 3.1.2 Willkommen Wenn der PIR-Sensor nach dem Ausführen der Kode jemanden erkennt, der vorbeikommt, öffnet sich die Tür automatisch (vom Servo simuliert), schaltet die Anzeige ein und spielt die Türklingelmusik ab. Nachdem die Türklingelmusik abgespielt wurde, schließt das System automatisch die Tür und schaltet die Anzeigelampe aus, um auf das nächste Mal zu warten, wenn jemand vorbeikommt. BCM C:\Users\sunfounder\Desktop\3.1.4_Welcome_bb.png3.1.4_Welcome_bb Schließen Sie die Tür und schalten Sie die Kontrollleuchte aus. Komponenten Erstellen Sie eine Closedoor-Funktion, um das Schließen der Tür zu simulieren, schalten Sie die LED aus und lassen Sie das Servo von 180 Grad auf 0 Grad drehen. Erstellen Sie eine Funktion, Türklingel, damit der Summer Musik abspielen kann. Erstellen Sie eine Funktion von servowrite, um den Winkel in das Servo zu schreiben, der 0-180 ist. Erstellen Sie eine Funktion, setAngle, um den Winkel im Servo von 0-180 zu schreiben. Experimentelle Verfahren GPIO17 GPIO18 GPIO22 GPIO27 Initialisieren Sie in der Funktion main () die Bibliothek wiringPi und richten Sie softTone ein. Setzen Sie dann ledPin in den Ausgabestatus und pirPin in den Eingabestatus. Wenn der PIR-Sensor jemanden erkennt, der vorbeikommt, wird die Funktion opendoor aufgerufen, um das Öffnen der Tür zu simulieren. In diesem Projekt werden wir PIR verwenden, um die Bewegung von Fußgängern zu erfassen, und Servos, LED und Summer verwenden, um die Arbeit der Sensortür des Supermarkts zu simulieren. Wenn der Fußgänger innerhalb des Erfassungsbereichs des PIR erscheint, leuchtet die Anzeigelampe, die Tür wird geöffnet und der Summer ertönt die Öffnungsglocke. Einführung Phänomen Bild Pin 11 Pin 12 Pin 13 Pin 15 Schematische Darstellung T-Karte Name Die Funktion opendoor () besteht aus mehreren Teilen: Schalten Sie die Anzeigelampe ein, schalten Sie das Servo ein (simulieren Sie das Öffnen der Tür), spielen Sie die Klingelmusik des Supermarkts und rufen Sie nach dem Abspielen der Musik die Funktion geschlossene Tür() auf. Die Funktion opendoor () besteht aus mehreren Teilen: Schalten Sie die Anzeigelampe ein, schalten Sie das Servo ein (um das Öffnen der Tür zu simulieren), spielen Sie die Klingelmusik des Supermarkts und rufen Sie nach dem Spielen die Funktion Closedoor() auf Musik. Diese Anweisungen werden verwendet, um die Pins jeder Komponente zu initialisieren. Wenn RIP erkennt, dass jemand vorbeikommt, ruft es die Funktion opendoor() auf. Sie können den folgenden Code **Ändern/Zurücksetzen/ Kopieren/Ausführen/Stoppen**. Zuvor müssen Sie jedoch zu einem Quellcodepfad wie ``davinci-kit-for-raspberry-pi\\python`` gehen. physisch wiringPi 