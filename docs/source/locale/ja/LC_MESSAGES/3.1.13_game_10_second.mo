Þ    =                    ì     í               $     B  )   a       $   ©  $   Î     ó     õ     ÷     ú          
                                        !     $     &     ?     A     C     Û  
   ß     ê          	                    %     ,  ®   3     â  Æ   ï  t  ¶     +	     >	     E	     L	     S	     Z	     a	     h	     o	     v	     ~	  í   	     ~
  #   
     ¯
     J     ç     ð  Y  ù     S     j     x  "     '   ¹  <   á  9     6   X  6        Æ     È     Ê     Í     Ú     Ý     à     ã     å     è     ë     î     ñ     ô     ÷     ù            Â        Ú     Þ     å     ò     ù                            ô   #  	     þ   "  ï  !               %     ,     3     :     A     H     O     V  	   ^  8  h     ¡  9   ¯  æ   é  Í   Ð          §   **Code Explanation** **Code** **For C Language Users** **For Python Language Users** **Step 1**: Build the circuit. **Step 2**: Go to the folder of the code. **Step 3**: Compile the code. **Step 3**: Run the executable file. **Step 4**: Run the executable file. 0 1 10 10 second_bb 12 17 18 2 22 23 24 25 26 27 3 3.1.13 GAMEâ 10 Second 4 5 After the interval reaches 0.01s, the timer function is called; add 1 to counter, and the timer is used again to execute itself repeatedly every 0.01s. BCM Components Experimental Procedures GPIO17 GPIO18 GPIO22 GPIO23 GPIO24 GPIO26 GPIO27 GameState =1 is the "show" mode, which stops the timing and displays the time on the segment display. Shaking the tilt switch again will reset the timer and restart the game. Introduction Loop() is the main function. First, the time is displayed on the 4-bit segment display and the value of the tilt switch is read. If the state of the tilt switch has changed, stateChange() is called. Next, follow me to make a game device to challenge your concentration. Tie the tilt switch to a stick to make a magic wand. Shake the wand, the 4-digit segment display will start counting, shake again will let it stop counting. If you succeed in keeping the displayed count at **10.00**, then you win. You can play the game with your friends to see who is the time wizard. Phenomenon Picture Pin 11 Pin 12 Pin 13 Pin 15 Pin 16 Pin 18 Pin 19 Pin 37 SPIMOSI Schematic Diagram Shake the wand, the 4-digit segment display will start counting, shake again will let it stop counting. If you succeed in keeping the displayed count at **10.00**, then you win. Shake it one more time to start the next round of the game. T-Board Name The game is divided into two modes: You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. gameState=0 is the "start" mode, in which the time is timed and displayed on the segment display, and the tilting switch is shaken to enter the "show" mode. physical wiringPi Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-07 09:33+0800
PO-Revision-Date: 2021-05-28 10:46+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **ã³ã¼ãã®èª¬æ** **ã³ã¼ã** **Cè¨èªã¦ã¼ã¶ã¼åã** **Pythonè¨èªã¦ã¼ã¶ã¼åã** **ã¹ããã1ï¼** åè·¯ãä½ãã **ã¹ããã2ï¼** ã³ã¼ãã®ãã©ã«ãã¼ã«å¥ãã **ã¹ããã3ï¼** ã³ã¼ããã³ã³ãã¤ã«ããã **ã¹ããã3ï¼** EXEãã¡ã¤ã«ãå®è¡ããã **ã¹ããã4ï¼** EXEãã¡ã¤ã«ãå®è¡ããã 0 1 10 10 second_bb 12 17 18 2 22 23 24 25 26 27 3 3.1.13 ã²ã¼ã â 10ç§ 4 5 ééã0.01ç§ã«éããã¨ãTimeré¢æ°ãå¼ã³åºããããã«ã¦ã³ã¿ã¼ã«1ãè¿½å ããã¨ãã¿ã¤ãã¼ãåã³ä½¿ç¨ããã¦ã0.01ç§ãã¨ã«ç¹°ãè¿ãå®è¡ãããã BCM é¨å å®é¨æé  GPIO17 GPIO18 GPIO22 GPIO23 GPIO24 GPIO26 GPIO27 GameState = 1ã¯ãè¡¨ç¤ºãã¢ã¼ãã§ãããã¿ã¤ãã³ã°ãåæ­¢ããã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«æéãè¡¨ç¤ºãããå¾æã¹ã¤ãããååº¦æ¯ãã¨ãã¿ã¤ãã¼ããªã»ãããããã²ã¼ã ãåèµ·åããã åæ¸ã Loop()ãä¸»ãªé¢æ°ã§ãããæåã«ã4ãããã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«æéãè¡¨ç¤ºãããå¾æã¹ã¤ããã®å¤ãèª­ã¿åããããå¾æã¹ã¤ããã®ç¶æãå¤æ´ãããå ´åãstateChange()ãå¼ã³åºãããã ãããããããªãã®éä¸­åã«ææ¦ã§ããã²ã¼ã ããã¤ã¹ãä½ãããå¾æã¹ã¤ãããã¹ãã£ãã¯ã«ã¤ãªãã§ãé­æ³ã®æ£ãä½ããæ£ãæ¯ãã¨ã4æ¡ã®ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãã«ã¦ã³ããéå§ããããä¸åº¦æ¯ãã¨ã«ã¦ã³ããåæ­¢ãããè¡¨ç¤ºãããã«ã¦ã³ãã10.00ã«ä¿ã¤ãã¨ã«æåããå ´åãããªããåã¤ãåéã¨ã²ã¼ã ããã¬ã¤ãã¦ãã¿ã¤ã ã¦ã£ã¶ã¼ããèª°ããç¢ºèªã§ããã ç¾è±¡ç»å Pin 11 Pin 12 Pin 13 Pin 15 Pin 16 Pin 18 Pin 19 Pin 37 SPIMOSI åè·¯å³ æ£ãæ¯ãã¨ã4æ¡ã®ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãã«ã¦ã³ããéå§ããããä¸åº¦æ¯ãã¨ã«ã¦ã³ããåæ­¢ãããè¡¨ç¤ºãããã«ã¦ã³ãã **10.00** ã«ä¿ã¤ãã¨ã«æåããå ´åãããªããåã¤ãããä¸åº¦æ¯ã£ã¦ãã²ã¼ã ã®æ¬¡ã®ã©ã¦ã³ããéå§ããã Tãã¼ãå ã²ã¼ã ã¯äºã¤ã®ã¢ã¼ãã«åãããã¦ããï¼ ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã gameState = 0ã¯ãéå§ãã¢ã¼ãã§ããããã®ã¢ã¼ãã§ã¯ãæéãè¨æ¸¬ãã¦ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«è¡¨ç¤ºããå¾æã¹ã¤ãããæ¯ã£ã¦ãè¡¨ç¤ºãã¢ã¼ãã«å¥ãã physical wiringPi 