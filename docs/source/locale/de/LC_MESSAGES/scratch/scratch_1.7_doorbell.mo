��          �                         *  �   <  ?     "   U  7   x     �  Y   �  f        �  5   �     �     �  �   �  �  {  a  O     �     �  �   �  N   �  .   	  8   D	     }	  o   �	  �   
  $   �
  <   �
     �
       �     �  �   1.7 Doorbell Build the Circuit Click on the green flag on the stage. When we click on the Button 3 sprite, it will turn blue and then the buzzer will sound; when we click again, the **Button3** sprite reverts to gray and the buzzer stops sounding. Delete the default sprite, then choose the **Button 3** sprite. Load the Code and See What Happens Load the code file (``1.7_doorbell.sb3``) to Scratch 3. Required Components Set gpio17 to low to make the buzzer sound; set it to high and the buzzer will not sound. The **status** switch is used here, and we will use a flowchart to help you understand the whole code. Then set the size to 200. This block allows you to switch the sprite's costume. Tips on Codes Tips on Sprite Today we will make a doorbell, click the button3 sprite on the stage, the buzzer will sound; click again, the buzzer will stop sounding. When the green flag is clicked, the **status** will be set to 0 first, and wait for the sprite to be clicked at this time; if **button3** sprite is clicked, it will switch to costume as **button-b** costume (blue) and the **status** will be set to 1. When the main program receives the **status** as 1, it will let the buzzer sound at 0.1s interval. If **button3** is clicked again, it will switch to **button-a** costume (gray) and **status** will be set to 0 again. Project-Id-Version: SunFounder Da Vinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-04 15:50+0800
PO-Revision-Date: 2021-08-04 17:37+0800
Last-Translator: 
Language: de
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 1.7 Türklingel Bauen Sie den Stromkreis auf Klicken Sie auf die grüne Flagge auf der Bühne. Wenn wir auf das Sprite Button 3 klicken, wird es blau und der Summer ertönt. Wenn wir erneut klicken, wird das Sprite **Button3** wieder grau und der Summer hört auf zu ertönen. Löschen Sie das Standard-Sprite und wählen Sie dann das Sprite **Button 3**. Laden Sie den Code und sehen Sie, was passiert Lade die Code-Datei (``1.7_doorbell.sb3``) in Scratch 3. Erforderliche Komponenten Setzen Sie gpio17 auf niedrig, damit der Summer ertönt; stellen Sie ihn auf hoch und der Summer ertönt nicht. Hier wird der Schalter **status** verwendet, und wir verwenden ein Flussdiagramm, um Ihnen das Verständnis des gesamten Codes zu erleichtern. Dann setzen Sie die Größe auf 200. Mit diesem Block kannst du das Kostüm des Sprites wechseln. Tipps zu Codes Tipps zu Figur Heute werden wir eine Türklingel bauen, klicke auf das Button3-Sprite auf der Bühne, der Summer ertönt; klicke erneut, der Summer hört auf zu ertönen. Wenn das grüne Flag angeklickt wird, wird der **Status** zuerst auf 0 gesetzt und gewartet, bis das Sprite zu diesem Zeitpunkt angeklickt wird; Wenn **button3** geklickt wird, wechselt es zum Kostüm als **button-b** Kostüm (blau) und der **Status** wird auf 1 gesetzt. Wenn das Hauptprogramm den **Status* erhält * als 1 wird der Summer im 0,1s-Intervall ertönt. Wenn **button3** erneut geklickt wird, wechselt es zu **button-a** Kostüm (grau) und **status** wird wieder auf 0 gesetzt. 