Þ    0                              2  
   ;     F     e          £     ´     Å  7  Ò  ]   
  j   h  A   Ó  
     g                    µ  a   Ï     1     K     X     á  ;       ¼
  	   Ï
  L   Ù
  {   &     ¢  ;   ´  7   ð  ]   (  £     I   *  ®   t    #  ý   5  Ø   3       M        Ü  m   ô     b  3   ý  o   1  D   ¡     æ  Y  g     Á     Ø     æ  '   ú  6   "  9   Y  $     $   ¸     Ý    ó  ~     {     ?        Â  s   É     =     J     d  V        Ú  	   ÷  ³     É   µ  ö       v       ]        è  	   x   F      <   É   `   !  ª   g!  ]   "  Ý   p"    N#    \$  ü   i%  «   f&  `   '     s'     '  æ   (  B   ý(     @)  X   Ç)  Ë    *   **Code Explanation** **Code** **Keypad** **Step 1:** Build the circuit. **Step 2:** Open the code file. **Step 3:** Compile the code. **Step 3:** Run. **Step 4:** Run. 2.1.5 Keypad A keypad is a rectangular array of 12 or 16 OFF-(ON) buttons. Their contacts are accessed via a header suitable for connection with a ribbon cable or insertion into a printed circuit board. In some keypads, each button connects with a separate contact in the header, while all the buttons share a common ground. A keypad is a rectangular array of buttons. In this project, We will use it input characters. After the code runs, the values of pressed buttons on keypad (button Value) will be printed on the screen. After the loop judgment is completed, an array will be generated: Components Declare each key of the matrix keyboard to the array keys[] and define the pins on each row and column. Experimental Procedures For C Language Users For Python Language Users If you press the buttons â1â and â3â, there will return pressed_keys = [â1â,â3â]. If you press the key '3': Introduction KeyCompare() and keyCopy() are used to judge whether the state of a button has changed (that is, a button has been pressed or released). KeyCopy() is used to re-write the current button value for the a array (last_key_pressed[BUTTON_NUM]) after each comparison. So we can compare them next time. More often, the buttons are matrix encoded, meaning that each of them bridges a unique pair of conductors in a matrix. This configuration is suitable for polling by a microcontroller, which can be programmed to send an output pulse to each of the four horizontal wires in turn. During each pulse, it checks the remaining four vertical wires in sequence, to determine which one, if any, is carrying a signal. Pullup or pulldown resistors should be added to the input wires to prevent the inputs of the microcontroller from behaving unpredictably when no signal is present. Phenomenon Picture Principle Prints the value of the currently pressed key when the condition is tenable. RowPin [0] writes in the high level, and colPin[2] gets the high level. ColPin [0], colPin[1], colPin[3] get the low level. Schematic Diagram The function keyRead() will read the state of every button. The loop stopped, there returns pressed_keys = â3â. The statement if len(pressed_keys) != 0 and last_key_pressed != pressed_keys is used to judge The statement last_key_pressed = pressed_keys assigns the state of each judgment to an array last_key_pressed to facilitate the next round of conditional judgment. There are four states:0, 0, 1, 0; and we write â3â into pressed_keys. These two functions are used to judge whether the key state has changed, for example when you release your hand when pressing '3' or pressing '2', keyCompare() returns false. This function assigns a high level to each row in turn, and when the button in the column is pressed, the column in which the key is located gets a high level. After the two-layer loop is judged, the value of the button whose state is 1 is stored in the array pressed_keys. This function assigns a high level to each row in turn, and when the key in the column is pressed, the column in which the key is located gets a high level. After the two-layer loop judgment, the key state compilation will generate an array (reasult[]). This function is used to print the value of the button currently pressed. If the button '1' is pressed, the '1' will be printed. If the button '1' is pressed and the button '3' is pressed, the '1, 3' will be printed. This gives us 0,0,1,0. When rowPin[1], rowPin[2] and rowPin[3] are written in high level, colPin[0]~colPin[4] will get low level. This is the part of the main function that reads and prints the button value. When pressing button 3: When rowPins[1] , rowPins[2] , rowPins[3] are written into high level, colPins[0] ~ colPins[4] get low level. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. colPins[0]ãcolPins[1]ãcolPins[3] get low level. keyPrint() will print the button value of the button whose current level is high level (the button is pressed). rowPins[0] is written in high level, and colPins[2] gets high level. whether a key is pressed and the state of the pressed button. (If you press '3' when you press '1', theÂ judgementÂ is tenable.) Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 17:58+0800
PO-Revision-Date: 2021-05-28 07:31+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **ã³ã¼ãã®èª¬æ** **ã³ã¼ã** **ã­ã¼ããã** **ã¹ããã1ï¼** åè·¯ãä½ãã **ã¹ããã2ï¼** ã³ã¼ããã¡ã¤ã«ãéãã **ã¹ããã3ï¼** ã³ã¼ããã³ã³ãã¤ã«ããã **ã¹ããã3ï¼** å®è¡ããã **ã¹ããã4ï¼** å®è¡ããã 2.1.5 ã­ã¼ããã ã­ã¼ãããã¯12åã¾ãã¯16åã®OFF-ï¼ONï¼ãã¿ã³ã®é·æ¹å½¢éåã§ããããªãã³ã±ã¼ãã«ã¨ã®æ¥ç¶ã¾ãã¯ããªã³ãåºæ¿ã¸ã®æ¿å¥ã«é©ãããããã¼ãä»ãã¦ãããã®æ¥ç¹ã«ã¢ã¯ã»ã¹ãããä¸é¨ã®ã­ã¼ãããã§ã¯ãåãã¿ã³ã¯ãããã¼ã®åå¥ã®é£çµ¡åã«æ¥ç¶ããããããã¹ã¦ã®ãã¿ã³ã¯å±éã®æ¥å°ãå±æããã ã­ã¼ãããã¯ããã¿ã³ã®é·æ¹å½¢ã®éåã§ããããã®ãã­ã¸ã§ã¯ãã§ã¯ãå¥åæå­ãä½¿ç¨ããã ã³ã¼ãã®å®è¡å¾ãã­ã¼ãããã§æ¼ããããã¿ã³ã®å¤ï¼ãã¿ã³å¤ï¼ãç»é¢ã«ããªã³ããããã ã«ã¼ãå¤å®ãå®äºããã¨ãéåãçæãããï¼ é¨å ãããªãã¯ã¹ã­ã¼ãã¼ãã®åã­ã¼ãéåkeys []ã«è¡¨ç¤ºããåè¡ã¨åã«ãã³ãå®ç¾©ããã å®é¨æé  Cè¨èªã¦ã¼ã¶ã¼åã Pythonè¨èªã¦ã¼ã¶ã¼åã ãã¿ã³ã1ãã¨ã3ããæ¼ãã¨ãpressed_keys = ['1'ã '3']ãè¿ãããã ã­ã¼ã3ããæ¼ãã¨ï¼ åæ¸ã KeyCompare() ã¨keyCopy() ã¯ããã¿ã³ã®ç¶æãå¤åãããã©ããï¼ã¤ã¾ãããã¿ã³ãæ¼ããããé¢ããããï¼ãå¤æ­ããããã«ä½¿ç¨ãããã KeyCopy() ã¯ããããã®æ¯è¼å¾ã«éåï¼last_key_pressed [BUTTON_NUM]ï¼ã®ç¾å¨ã®ãã¿ã³å¤ãæ¸ãæããããã«ä½¿ç¨ããããã§ãããæ¬¡åã«ããããæ¯è¼ã§ããã å¤ãã®å ´åããã¿ã³ã¯ãããªãã¯ã¹ã¨ã³ã³ã¼ãããã¦ãããã¤ã¾ããåãã¿ã³ã¯ãããªãã¯ã¹åã®ä¸æã®ã³ã³ãã¯ã¿ã¼ãã¢ãããªãã¸ãã¦ããããã®æ§æã¯ããã¤ã¯ã­ã³ã³ãã­ã¼ã©ã¼ã«ãããã¼ãªã³ã°ã«é©ãã4æ¬ã®æ°´å¹³ç·ã®ããããã«é çªã«åºåãã«ã¹ãéä¿¡ããããã«ãã­ã°ã©ã ã§ãããåãã«ã¹ä¸­ã«ãæ®ãã®4æ¬ã®åç´ã¯ã¤ã¤ãé çªã«ãã§ãã¯ãã¦ãä¿¡å·ãä¼éãã¦ããã®ãã©ãããå¤æ­ãããä¿¡å·ãå­å¨ããªãå ´åã«ãã¤ã¯ã­ã³ã³ãã­ã¼ã©ã®å¥åãäºæããªãåä½ããããã¨ãé²ããããå¥åã¯ã¤ã¤ã«ãã«ã¢ããã¾ãã¯ãã«ãã¦ã³æµæãè¿½å ãã¦ãã ããã ç¾è±¡ç»å åç æ¡ä»¶ãä¸»å¼µã§ããå ´åãç¾å¨æ¼ããã¦ããã­ã¼ã®å¤ãããªã³ãããã RowPin [0]ã¯é«ã¬ãã«ã§æ¸ãè¾¼ã¿ãcolPin [2]ã¯é«ã¬ãã«ã«ãªããColPin [0]ãcolPin [1]ãcolPin [3]ã¯ä½ã¬ãã«ã«ãªãã åè·¯å³ é¢æ°keyRead() ã¯ããã¹ã¦ã®ãã¿ã³ã®ç¶æãèª­ã¿åãã ã«ã¼ããåæ­¢ããpressed_keys = '3'ãè¿ãããã if lenï¼pressed_keysï¼ï¼= 0ã¨last_key_pressedï¼= Pressed_keysã®ã¹ãã¼ãã¡ã³ãã¯ã ã¹ãã¼ãã¡ã³ãlast_key_pressed = pressed_keysã¯ãããããã®å¤æ­ã®ç¶æãéålast_key_pressedã«å²ãå½ã¦ãæ¬¡ã®æ¡ä»¶å¤æ­ãå®¹æã«ããã 4ã¤ã®ç¶æãããï¼0ã0ã1ã0ãããã¦ãpressed_keysã«ã3ããæ¸ãè¾¼ãã ãããäºã¤ã®é¢æ°ã¯ãã­ã¼ã®ç¶æãå¤åãããã©ãããå¤æ­ããããã«ä½¿ç¨ããããã¨ãã°ãã3ãã¾ãã¯ã2ããæ¼ããã¨ãã«æãé¢ãã¨ãkeyCompare() ã¯falseãè¿ãã ãã®é¢æ°ã¯åè¡ã«é çªã«é«ã¬ãã«ãå²ãå½ã¦ãåã®ãã¿ã³ãæ¼ãããã¨ãã­ã¼ãéç½®ããã¦ããåãé«ã¬ãã«ã«ãªãã2å±¤ã«ã¼ããå¤å®ãããå¾ãç¶æã1ã®ãã¿ã³ã®å¤ã¯ãpressed_keyséåã«ä¿å­ãããã ãã®é¢æ°ã¯åè¡ã«é çªã«é«ã¬ãã«ãå²ãå½ã¦ãåã®ã­ã¼ãæ¼ãããã¨ãã­ã¼ãéç½®ããã¦ããåãé«ã¬ãã«ã«ãªããtwo- layer loopã®å¤å®å¾ãã­ã¼ç¶æã®ã³ã³ãã¤ã«ã«ããéåï¼reasult []ï¼ãçæãããã ãã®é¢æ°ã¯ç¾å¨æ¼ããã¦ãããã¿ã³ã®å¤ãããªã³ãããããã«ä½¿ç¨ããããã1ããã¿ã³ãæ¼ãã¨ãã1ããããªã³ããããããã¿ã³ã1ãã¨ã3ããæ¼ãããã¨ãã1ã3ããããªã³ããããã ããã«ããã0,0,1,0ãå¾ããããrowPin [1]ãrowPin [2]ãrowPin [3]ãé«ã¬ãã«ã§æ¸ãè¾¼ã¾ããã¨ãcolPin [0]ãcolPin [4]ã¯ä½ã¬ãã«ã«ãªãã ããã¯ããã¿ã³å¤ãèª­ã¿åããããªã³ãããã¡ã¤ã³é¢æ°ã®ä¸é¨ã§ããã ãã¿ã³3ãæ¼ãã¨ãï¼ rowPins [1]ãrowPins [2]ãrowPins [3]ãé«ã¬ãã«ã«æ¸ãè¾¼ã¾ããã¨ãcolPins [0]ãcolPins [4]ã¯ä½ã¬ãã«ã«ãªãã ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã colPins [0]ãcolPins [1]ãcolPins [3]ã¯ä½ã¬ãã«ã«ãªãã keyPrint() ã¯ç¾å¨ã®ã¬ãã«ãé«ã¬ãã«ï¼ãã¿ã³ãæ¼ããã¦ããï¼ã®ãã¿ã³ã®ãã¿ã³å¤ãããªã³ãããã rowPins [0]ã¯é«ã¬ãã«ã§æ¸ãè¾¼ã¾ããcolPins [2]ã¯é«ã¬ãã«ã«ãªããã ã­ã¼ãæ¼ããããã©ãããæ¼ããããã¿ã³ã®ç¶æãå¤æ­ããããã«ä½¿ç¨ããããï¼ã1ããæ¼ããã¨ãã«ã3ããæ¼ããå ´åãå¤æ­ã¯åãå¥ãããããï¼ 