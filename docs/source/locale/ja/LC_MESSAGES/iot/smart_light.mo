Þ                         ü      ý   þ     ³        Ã     Ô  9   ì  m   &  _     O   ô     D     S     a  n   m  Z  Ü     7     S  ç   t     \     o  Q   |  °   Î     	  U   ÿ	     U
     q
     
     ¦
   Build the circuit. By setting the value of the ``'value'`` key, we can set the initial value of the Slider widget, then always read the value of the ``'value'`` key and send the current level of ``LED_PIN`` (the value returned by the function ``led_control``) to Cloud4RPi. Call the ``GPIO.PWM()`` function to define ``LED_PIN`` as PWM pin and set the frequency of PWM pin to 2000Hz, then use the ``start()`` function to set the initial duty cycle to 0. Code Explanation Experimental Procedures Find the line below and fill in the correct device token. Go to Cloud4RPi, add a new Control Panel named project3, and click **Add Widget** to add a **Slider** widget. In this project, we will learn to control the brightness of LED with Cloud4RPi's Silder widget. Once added, you can use the Slider widget to control the brightness of the LED. Open the code. Run the code. Smart Light The value sent by Slider widget to Raspberry Pi is used as PWM duty cycle to change the brightness of the LED. Project-Id-Version: SunFounder Da Vinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-29 17:00+0800
PO-Revision-Date: 2021-08-04 17:51+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 åè·¯ãæ§ç¯ãã¾ãã ``'value'`` ã­ã¼ã®å¤ãè¨­å®ãããã¨ã§ãSlider widgetã®åæå¤ãè¨­å®ããå¸¸ã« ``'value'`` ã­ã¼ã®å¤ãèª­ã¿åããç¾å¨ã®ã¬ãã«ã® ``LED_PIN`` ãéä¿¡ã§ãã¾ãã ï¼é¢æ° ``led_control`` ã«ãã£ã¦è¿ãããå¤ï¼ãCloud4RPiã«éä¿¡ãã¾ãã ``GPIO.PWM()`` é¢æ°ãå¼ã³åºãã¦ ``LED_PIN`` ãPWMãã³ã¨ãã¦å®ç¾©ããPWMãã³ã®å¨æ³¢æ°ã2000Hzã«è¨­å®ãã¦ããã``start()`` é¢æ°ãä½¿ç¨ãã¦åæãã¥ã¼ãã£ãµã¤ã¯ã«ã0 ã«è¨­å®ãã¾ãã ã³ã¼ãã®èª¬æ å®é¨æé  ä»¥ä¸ã®è¡ãè¦ã¤ãã¦ãæ­£ããdevice tokenãå¥åãã¦ãã ããã Cloud4RPiã«ç§»åããproject3ã¨ããååã®æ°ããã³ã³ãã­ã¼ã«ããã«ãè¿½å ãã**Add Widget** ãã¯ãªãã¯ãã¦ **Slider** widgetãè¿½å ãã¾ãã ãã®ãã­ã¸ã§ã¯ãã§ã¯ãCloud4RPiã®Silder widgetãä½¿ç¨ãã¦LEDã®æãããå¶å¾¡ããæ¹æ³ãå­¦ã³ã¾ãã è¿½å ããã¨ãSlider widgetãä½¿ç¨ãã¦LEDã®æãããå¶å¾¡ã§ãã¾ãã ã³ã¼ããéãã¾ãã ã³ã¼ããå®è¡ãã¾ãã ã¹ãã¼ãã©ã¤ã Slider widgetããRaspberryPiã«éä¿¡ãããå¤ã¯ãLEDã®æãããå¤æ´ããããã®PWMãã¥ã¼ãã£ãµã¤ã¯ã«ã¨ãã¦ä½¿ç¨ããã¾ãã 