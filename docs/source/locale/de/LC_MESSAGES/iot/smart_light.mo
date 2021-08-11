��          �               �      �   �     �        �     �  9   �  m   &  _   �  O   �     D     S     a  n   m  a  �     >  #  [  �        j     |  K   �  �   �  l   �	  j   �	     ^
     t
     �
  �   �
   Build the circuit. By setting the value of the ``'value'`` key, we can set the initial value of the Slider widget, then always read the value of the ``'value'`` key and send the current level of ``LED_PIN`` (the value returned by the function ``led_control``) to Cloud4RPi. Call the ``GPIO.PWM()`` function to define ``LED_PIN`` as PWM pin and set the frequency of PWM pin to 2000Hz, then use the ``start()`` function to set the initial duty cycle to 0. Code Explanation Experimental Procedures Find the line below and fill in the correct device token. Go to Cloud4RPi, add a new Control Panel named project3, and click **Add Widget** to add a **Slider** widget. In this project, we will learn to control the brightness of LED with Cloud4RPi's Silder widget. Once added, you can use the Slider widget to control the brightness of the LED. Open the code. Run the code. Smart Light The value sent by Slider widget to Raspberry Pi is used as PWM duty cycle to change the brightness of the LED. Project-Id-Version: SunFounder Da Vinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-04 15:50+0800
PO-Revision-Date: 2021-08-05 09:35+0800
Last-Translator: 
Language: de
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 Bauen Sie die Schaltung auf. Indem wir den Wert des Schlüssels ``'value`` setzen, können wir den Anfangswert des Slider Widgets setzen, dann immer den Wert des Schlüssels ``'value`` lesen und den aktuellen Pegel von ``LED_PIN`` (der Wert, der von der Funktion ``led_control`` zurückgegeben wird) an Cloud4RPi senden. Rufen Sie die Funktion ``GPIO.PWM()`` auf, um ``LED_PIN`` als PWM-Pin zu definieren und setzen Sie die Frequenz des PWM-Pins auf 2000Hz, dann verwenden Sie die Funktion ``start()``, um das anfängliche Tastverhältnis auf 0 zu setzen. Code Erläuterung Experimentelle Verfahren Suchen Sie die untere Zeile und tragen Sie den richtigen Geräte-Token ein. Gehen Sie zu Cloud4RPi, fügen Sie ein neues Control Panel namens project3 hinzu und klicken Sie auf **Widget hinzufügen**, um ein **Slider**-Widget hinzuzufügen. In diesem Projekt werden wir lernen, die Helligkeit von LEDs mit dem Silder-Widget von Cloud4RPi zu steuern. Nach dem Hinzufügen können Sie das Schieberegler-Widget verwenden, um die Helligkeit der LED zu steuern. Öffnen Sie den Code. Führen Sie den Code aus. Intelligentes Licht Der vom Slider-Widget an den Raspberry Pi gesendete Wert wird als PWM-Tastverhältnis verwendet, um die Helligkeit der LED zu ändern. 