Þ                                   2     ;     P  Ô   h  ¯   =     í  )        6  $   T  $   y  	     K  ¨  Ñ  ô  
   Æ     Ñ     é     þ  2       K	     X	  	   k	    u	     x
     
  ·    p   É  )  :  F   d  k   «       Y  ²          $     2     C  þ   T  È   S  '     <   D  9     6   »  6   ò  	   )  Ö  3    
               ,     F  k  e  	   Ñ     Û     è  !  ï  	            ¬      ¯  -  P  u   ~     ô  æ       **Code Explanation** **Code** **Delay adjustment** **Distance Adjustment** **H:** **Repeatable trigger mode**, after sensing the human body, the module outputs high level. During the subsequent delay period, if somebody enters the sensing range,the output will keep being the high level. **L:** **Non-repeatable trigger mode**, outputs high level when it senses the human body. After the delay, the output will change from high level into low level automatically. **Step 1:** Build the circuit. **Step 2:** Go to the folder of the code. **Step 3:** Compile the code. **Step 3:** Run the executable file. **Step 4:** Run the executable file. 2.2.4 PIR After the code runs, PIR detects surroundings and let RGB LED glow yellow if it senses someone walking by. There are two potentiometers on the PIR module: one is to adjust sensitivity and the other is to adjust the detection distance. In order to make the PIR module work better, you need to try to adjust these two potentiometers. After the sensing module is wired, there is a one-minute initialization. During the initialization, module will output for 0~3 times at intervals. Then the module will be in the standby mode. Please keep the interference of light source and other sources away from the surface of the module so as to avoid the misoperation caused by the interfering signal. Even you'd better use the module without too much wind, because the wind can also interfere with the sensor. Components Experimental Procedures For C Language Users For Python Language Users In this project, we will make a device by using the human body infrared pyroelectric sensors. When someone gets closer to the LED, the LED will turn on automatically. If not, the light will turn off. This infrared motion sensor is a kind of sensor that can detect the infrared emitted by human and animals. Introduction Phenomenon Picture Principle Rotate the knob of the delay adjustment potentiometer clockwise, you can also see the sensing delay increasing. The maximum of the sensing elay can reach up to 300s. On the contrary, if rotate it anticlockwise, you can shorten the delay with a minimum of 5s. Schematic Diagram The PIR sensor detects infrared heat radiation that can be used to detect the presence of organisms that emit infrared heat radiation. The PIR sensor is split into two slots that are connected to a differential amplifier. Whenever a stationary object is in front of the sensor, the two slots receive the same amount of radiation and the output is zero. Whenever a moving object is in front of the sensor, one of the slots receives more radiation than the other , which makes the output fluctuate high or low. This change in output voltage is a result of detection of motion. These codes are used to set the color of the RGB LED, and please refer to :ref:`1.1.2 RGB LED` for more details. Turning the knob of the distance adjustment potentiometer clockwise, the range of sensing distance increases, and the maximum sensing distance range is about 0-7 meters. If turn it anticlockwise, the range of sensing distance is reduced, and the minimum sensing distance range is about 0-3 meters. Two trigger modes: (choosing different modes by using the jumper cap). When PIR detects the human infrared spectrum, RGB LED emits the yellow light; if not, emits the blue light. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-10 11:29+0800
PO-Revision-Date: 2021-05-28 08:23+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **ã³ã¼ãã® èª¬æ** **ã³ã¼ã** **éå»¶èª¿æ´** **è·é¢èª¿æ´** **Hï¼** **ç¹°ãè¿ãå¯è½ãªããªã¬ã¼ã¢ã¼ã**ãäººä½ãæç¥ããå¾ãã¢ã¸ã¥ã¼ã«ã¯é«ã¬ãã«ãåºåãã¾ãã ãã®å¾ã®éå»¶æéä¸­ã«ãèª°ããæ¤ç¥ç¯å²ã«å¥ãã¨ãåºåã¯é«ã¬ãã«ã®ã¾ã¾ã«ãªãã¾ãã **Lï¼** **ç¹°ãè¿ãä¸å¯ã®ããªã¬ã¼ã¢ã¼ã**ãäººä½ãæç¥ããã¨é«ã¬ãã«ãåºåãã¾ãã éå»¶å¾ãåºåã¯èªåçã«é«ã¬ãã«ããä½ã¬ãã«ã«å¤ããã¾ãã **ã¹ããã1ï¼** åè·¯ãä½ãã **ã¹ããã2ï¼** ã³ã¼ãã®ãã©ã«ãã¼ã«å¥ãã **ã¹ããã3ï¼** ã³ã¼ããã³ã³ãã¤ã«ããã **ã¹ããã3ï¼** EXEãã¡ã¤ã«ãå®è¡ããã **ã¹ããã4ï¼** EXEãã¡ã¤ã«ãå®è¡ããã 2.2.4 PIR ã³ã¼ãã®å®è¡å¾ãPIRã¯å¨å²ã®ç¶æ³ãæ¤åºããèª°ããæ­©ãã¦ãããã¨ãæç¥ããã¨ãRGB LEDãé»è²ãåãããã«ãããPIRã¢ã¸ã¥ã¼ã«ã«ã¯2ã¤ã®ããã³ã·ã§ã¡ã¼ã¿ã¼ãããï¼1ã¤ã¯æåº¦ãèª¿æ´ããããã®ãã®ã§ããã1ã¤ã¯æ¤åºè·é¢ãèª¿æ´ããããã®ãã®ã§ãããPIRã¢ã¸ã¥ã¼ã«ã®åä½ãæ¹åããããã«ãããã2ã¤ã®ããã³ã·ã§ã¡ã¼ã¿ã¼ãèª¿æ´ããå¿è¦ãããã æ¤ç¥ã¢ã¸ã¥ã¼ã«ã®éç·å¾ã1åéã®åæåãè¡ããããåæåä¸­ã«ãã¢ã¸ã¥ã¼ã«ã¯ééãç½®ãã¦0ã3ååºåããããã®å¾ãã¢ã¸ã¥ã¼ã«ã¯ã¹ã¿ã³ãã¤ã¢ã¼ãã«ãªããå¹²æ¸ä¿¡å·ã«ãã£ã¦å¼ãèµ·ããããèª¤åä½ãé¿ããããã«ãåæºã¨ä»ã®æºã®å¹²æ¸ãã¢ã¸ã¥ã¼ã«ã®è¡¨é¢ããé ããã¦ãã ãããé¢¨ã¯ã»ã³ãµã¼ã«ãå¹²æ¸ããå¯è½æ§ããããããé¢¨ããã¾ãç¡ãã¦ã¢ã¸ã¥ã¼ã«ãä½¿ç¨ãããã¨ããå§ãããã é¨å å®é¨æé  Cè¨èªã¦ã¼ã¶ã¼åã Pythonè¨èªã¦ã¼ã¶ã¼åã ãã®ãã­ã¸ã§ã¯ãã§ã¯ãäººä½ã®èµ¤å¤ç·ç¦é»ã»ã³ãµã¼ãä½¿ç¨ãã¦ããã¤ã¹ãä½æãããèª°ããLEDã«è¿ã¥ãã¨ãLEDã¯èªåçã«ç¹ç¯ãããããã§ãªãå ´åãã©ã¤ãã¯æ¶ç¯ããããã®èµ¤å¤ç·ã¢ã¼ã·ã§ã³ã»ã³ãµã¼ã¯ãäººéãåç©ãçºããèµ¤å¤ç·ãæ¤åºã§ããã»ã³ãµã¼ã®ä¸ç¨®ã§ããã åæ¸ã ç¾è±¡ç»å åç éå»¶èª¿æ´ããã³ã·ã§ã¡ã¼ã¿ã¼ã®ãããæè¨åãã«åãã¨ãæ¤ç¥éå»¶ãå¢å ãããã¨ãåãããæ¤ç¥éå»¶ã®æå¤§å¤ã¯ãæå¤§300ç§ã«éããå¯è½æ§ããããéã«ãåæè¨åãã«åè»¢ãããã¨ãæå°5ç§ã§éå»¶ãç­ç¸®ã§ããã åè·¯å³ PIRã»ã³ãµã¼ã¯ãèµ¤å¤ç·ç±æ¾å°ãæ¤åºããèµ¤å¤ç·ç±æ¾å°ãæ¾åºããçç©ã®å­å¨ãæ¤åºããããã«ä½¿ç¨ã§ããã PIRã»ã³ãµã¼ã¯å·®åå¢å¹å¨ã«æ¥ç¶ããã2ã¤ã®ã¹ã­ããã«åå²ããããéæ­¢ç©ä½ãã»ã³ãµã¼ã®åã«ããã¨ãã¯ãã¤ã§ããäºã¤ã®ã¹ã­ããã¯åãéã®æ¾å°ç·ãåãåããåºåã¯ã¼ã­ã§ãããåãã¦ããç©ä½ãã»ã³ãµã¼ã®åã«ããã¨ãã¯ãã¤ã§ããã¹ã­ããã®ä¸ã¤ãä»ã®ã¹ã­ãããããå¤ãã®æ¾å°ç·ãåãåããåºåãä¸ä¸ã«å¤åãããããã®åºåé»å§ã®å¤åã¯ãåãã®æ¤åºã®çµæã§ããã ãããã®ã³ã¼ãã¯ãRGB LEDã®è²ãè¨­å®ããããã«ä½¿ç¨ããã¾ããè©³ç´°ã«ã¤ãã¦ã¯ã:ref:`1.1.2 RGB LED` ãåç§ãã¦ãã ããã è·é¢èª¿æ´ããã³ã·ã§ã¡ã¼ã¿ã®ãããæè¨åãã«åãã¨ãæ¤ç¥è·é¢ã®ç¯å²ãåºãããæå¤§æ¤ç¥è·é¢ç¯å²ã¯ç´0ã7ã¡ã¼ãã«ã§ãããåæè¨åãã«åãã¨ãæ¤ç¥è·é¢ã®ç¯å²ãç­ããªããæå°æ¤ç¥è·é¢ã®ç¯å²ã¯ç´0ã3ã¡ã¼ãã«ã§ããã äºã¤ã®ããªã¬ã¼ã¢ã¼ãï¼ï¼ã¸ã£ã³ãã¼ã­ã£ãããä½¿ç¨ãã¦ç°ãªãã¢ã¼ããé¸æããï¼ã PIRãäººéã®èµ¤å¤ç·ã¹ãã¯ãã«ãæ¤åºããã¨ãRGB LEDãé»è²ã®åãçºãããããã§ãªãå ´åã¯ãéè²ã®åãçºããã ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã 