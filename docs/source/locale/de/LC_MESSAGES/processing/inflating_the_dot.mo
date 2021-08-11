��    
      l               �      �   
   �   
   �   U   �      ;    M  �   S    �  s   �  a  j     �     �     �  d        i  )  {  �   �  2  H  �   {	   **How it works?** **Sketch** **Wiring** For more please refer to `Processing Reference <https://processing.org/reference/>`_. Inflating the Dot Next, let's build a circuit that allows the button to control the size of the dot. When we press the button, the dot will quickly get bigger; when we release the button, the dot will gradually get smaller, which makes the dot look like a balloon being inflated. The ``GPIO.pinMode()`` function is used to set ``buttonPin`` to pull-up input mode, which makes the pin get high automatically in the default state. Then use the ``GPIO.digitalRead()`` function to read the value of ``buttonPin``. When the value is LOW, it means the button is pressed, at which point let the diameter of the dot increase by 5; if the button is released, then the diameter of the dot will decrease by 1. This project uses the input function compared to the previous 2 projects that used the output function of the GPIO. Project-Id-Version: SunFounder Da Vinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-04 15:50+0800
PO-Revision-Date: 2021-08-04 18:13+0800
Last-Translator: 
Language: de
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **Wie es funktioniert?** **Skizzieren** **Verdrahtung** Weitere Informationen finden Sie unter `Verarbeitungsreferenz <https://processing.org/reference/>`_. Aufblasen des Dot Als nächstes bauen wir eine Schaltung, die es der Schaltfläche ermöglicht, die Größe des Punkts zu steuern. Wenn wir die Taste drücken, wird der Punkt schnell größer; Wenn wir die Taste loslassen, wird der Punkt allmählich kleiner, wodurch der Punkt wie ein aufgeblasener Ballon aussieht. Die Funktion ``GPIO.pinMode()`` wird verwendet, um ``buttonPin`` in den Pull-Up-Eingangsmodus zu setzen, wodurch der Pin im Standardzustand automatisch hoch wird. Verwenden Sie dann die Funktion ``GPIO.digitalRead()``, um den Wert von ``buttonPin`` auszulesen. Wenn der Wert NIEDRIG ist, bedeutet dies, dass die Taste gedrückt wird. Lassen Sie dann den Durchmesser des Punkts um 5 zunehmen; Wird die Taste losgelassen, verringert sich der Durchmesser des Punktes um 1. Dieses Projekt verwendet die Eingabefunktion im Vergleich zu den vorherigen 2 Projekten, die die Ausgabefunktion des GPIO verwendet haben. 