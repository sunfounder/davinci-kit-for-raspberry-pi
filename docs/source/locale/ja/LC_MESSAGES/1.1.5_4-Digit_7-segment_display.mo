Þ    N                    ü     ý          0     9     K     j     l     n                                        ¢     ¥     ¨     ª  P   ¬     ý  ?   ÿ  ?   ?       Ê     w   Û     S     Õ     o	  
   s	     ~	  k  	            º  1     ì     ó     ú                      @   #  @   d     ¥     ¸     ¿     Æ     Í     Ô     Û     â  	   é     ó     û       %        ³      Í      î       ¿     R   Ü  Q   /  {     S   ý  =   Q  ?     ¯  Ï  è        h     ï  ~     r   	  5   |     ²     »  Y  Ä  *        I     `     n  %        ¨     ª  ,   ¬     Ù     Ü     ß     â     å     ç     ê     í     ð     ó     õ     ÷       O     O   Õ  ½   %  Ñ   ã     µ  ²   K  ³   þ     ²     ¶     ½  ¾  Ê          £  F  Â     	"     "     "     "     %"     ,"  	   3"  =   ="  S   {"     Ï"     Ü"     ã"     ê"     ñ"     ø"     ÿ"     #     #     #  	   #  z   &#  7   ¡#  4   Ù#  1   $  1   @$     r$  ð   $  }   q%  q   ï%  Æ   a&  x   ('  r   ¡'  W   (  *  l(    *     ­+  æ   E,  ¯   ,-  }   Ü-  U   Z.     °.     ¹.   **4-Digit 7-Segment Display** **Code Explanation** **Code** **Display Codes** **Step 1**: Build the circuit. 0 1 1.1.5 4-Digit 7-Segment Display 10 12 17 18 2 22 23 24 27 3 4 4-Digit 7-segment display consists of four 7- segment displays working together. 5 A segment code array from 0 to 9 in Hexadecimal (Common anode). A segment code array from 0 to 9 in hexadecimal (common anode). After Timer reaches 1.0s, the Timer function is called; add 1 to counter, and the Timer is used again to execute itself repeatedly every second. After executing the signal(), once the process receives the corresponding signum (in this case SIGALRM), it immediately pauses the existing task and processes the set function (in this case timer(sig)). After the code runs, the program takes a count, increasing by 1 per second, and the 4 digit display displays the count. After the code runs, the program takes a count, increasing by 1 per second, and the 4-digit 7-segment display displays the count. After the interval, the function will be run. Here, the interval is 1.0ï¼and the function is timer(). start () means the Timer will start at this point. BCM Components Experimental Procedures First, start the fourth segment display,Â write the single-digitÂ number. Then start the third segment display, and type inÂ the tensÂ digit;Â after that,Â start the second and the first segment display respectively,Â and write the hundredsÂ and thousands digits respectively.Â Because the refreshingÂ speedÂ is veryÂ fast, we see aÂ completeÂ four-digit display. For C Language Users For Python Language Users For example, when "1234" is displayed on the display, "1" is displayed on the first 7-segment, and "234" is not displayed. After a period of time, the second 7-segment shows "2", the 1st 3th 4th of 7-segment does not show, and so on, the four digital display show in turn. This process is very short (typically 5ms), and because of the optical afterglow effect and the principle of visual residue, we can see four characters at the same time. GPIO17 GPIO18 GPIO22 GPIO23 GPIO24 GPIO27 Introduction It generates a SIGALRM signal after a certain number of seconds. Next, follow me to try to control the 4-digit 7-segment display. Phenomenon Picture Pin 11 Pin 12 Pin 13 Pin 15 Pin 16 Pin 18 Pin 19 Principle SPIMOSI Schematic Diagram Select the place of the value. there is only one place that should be enable each time. The enabled place will be written high. Step 2: Go to the folder of the code. Step 3: Compile the code. Step 3: Run the executable file. Step 4: Run the executable file. T-Board Name The 4-digtal 7-segment display works independently. It uses the principle of human visual persistence to quickly display the characters of each 7-segment in a loop to form continuous strings. The function is used to set the number displayed on the 4-digit 7-segment Dispaly. The functionis used to set the number displayed on the 4-digit 7-segment display. The module, threading is the common threading module in Pythonï¼and Timer is the subclass of it. The prototype of code is: These four pins control the common anode pins of the four-digit 7-segment displays. This is a system-provided function, the prototype of code is: This is also a system-provided function. The code prototype is: To help you get to know how 7-segment displays(Common Anode) display Numbers, we have drawn the following table. Numbers are the number 0-F displayed on the 7-segment display; (DP) GFEDCBA refers to the corresponding LED set to 0 or 1, For example, 11000000 means that DP and G are set to 1, while others are set to 0. Therefore, the number 0 is displayed on the 7-segment display, while HEX Code corresponds to hexadecimal number. We use the functions above to implement the timer function. After the ``alarm()`` generates the SIGALRM signal, the timer function is called. Add 1 to counter, and the function, ``alarm(1)`` will be repeatedly called after 1 second. Write "1" for eight times in SDI., so that the eight LEDs on the 7-segment Dispaly will turn off so as to clear the displayed content. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. ``clearDisplay()``ï¼write in 11111111 to turn off these eight LEDs on 7-segment display so as to clear the displayed content. ``hc595_shift(number[counter%10])``ï¼the number in the single digit of counter will display on the forth segment. ``pickDigit(0)``ï¼pick the fourth 7-segment display. physical wiringPi Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 17:51+0800
PO-Revision-Date: 2021-08-06 11:34+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **4æ¡7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤** **ã³ã¼ãã®èª¬æ** **ã³ã¼ã** **è¡¨ç¤ºã³ã¼ã** **ã¹ããã1**: åè·¯ãä½ãã 0 1 1.1.5 4æ¡7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ 10 12 17 18 2 22 23 24 27 3 4 4æ¡ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã¯ãé£æºãã¦åä½ãã4ã¤ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã§æ§æããã¦ããã 5 16é²æ°ï¼ã¢ãã¼ãã³ã¢ã³ï¼ã®0ã9ã®ã»ã°ã¡ã³ãã³ã¼ãéåã 16é²æ°ã®0ã9ã®ã»ã°ã¡ã³ãã³ã¼ãéåï¼ã¢ãã¼ãã³ã¢ã³ï¼ã Timerã1.0ç§ã«éããã¨ãTimeré¢æ°ãå¼ã³åºããããã«ã¦ã³ã¿ã¼ã«1ãè¿½å ããã¨ãã¿ã¤ãã¼ãåã³ä½¿ç¨ããã¦ã1ç§ãã¨ã«ç¹°ãè¿ãå®è¡ãããã signal()ãå®è¡ããå¾ããã­ã»ã¹ã¯å¯¾å¿ãã signumï¼ããã§SIGALRMï¼ãåä¿¡ããã¨ãããã«æ¢å­ã®ã¿ã¹ã¯ãä¸æåæ­¢ããè¨­å®é¢æ°ï¼ããã§timerï¼sig))ãå¦çããã ã³ã¼ãã®å®è¡å¾ããã­ã°ã©ã ã¯1ç§ãã¤å¢å ããã«ã¦ã³ãããã¦ã4æ¡ã®ãã£ã¹ãã¬ã¤ã«ã«ã¦ã³ããè¡¨ç¤ºãããã ã³ã¼ãã®å®è¡å¾ããã­ã°ã©ã ã¯1ç§éã«1ã¤ãã¤å¢ããã«ã¦ã³ããè¡ãã4æ¡ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«ãã®ã«ã¦ã³ããè¡¨ç¤ºãããã ééã®å¾ãé¢æ°ãå®è¡ããããããã§ã¯ãééã¯1.0ãé¢æ°ã¯timer()ã§ãããstart()ã¯ãã¿ã¤ãã¼ããã®æç¹ã§éå§ãããã¨ãæå³ããã BCM é¨å å®é¨æé  ã¾ãã4çªç®ã®ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãéå§ãã1æ¡ã®æ°å­ãæ¸ãè¾¼ããæ¬¡ã«ã3çªç®ã®ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãéå§ãã10æ¡ã®æ°å­ãå¥åããããã®å¾ã2çªç®ã¨1çªç®ã®ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãããããéå§ããããããæ°ç¾æ¡ã¨æ°åæ¡ãæ¸ãè¾¼ãããªãã¬ãã·ã¥éåº¦ãéå¸¸ã«éããããå®å¨ãª4æ¡ã®ãã£ã¹ãã¬ã¤ãè¡¨ç¤ºãããã Cè¨èªã¦ã¼ã¶ã¼åã Pythonè¨èªã¦ã¼ã¶ã¼åã ã¤ã¾ãããã£ã¹ãã¬ã¤ã«ã1234ããè¡¨ç¤ºããã¦ããå ´åãæåã®7ã»ã°ã¡ã³ãã«ã1ããè¡¨ç¤ºãããã234ãã¯è¡¨ç¤ºãããªãã¨ãããã¨ã§ããããã°ããããã¨ã2çªç®ã®7ã»ã°ã¡ã³ãã«ã2ããè¡¨ç¤ºããã7ã»ã°ã¡ã³ãã®1çªç®ã3çªç®ã4çªç®ã«è¡¨ç¤ºãããªããªãã4ã¤ã®ãã¸ã¿ã«ãã£ã¹ãã¬ã¤ã·ã§ã¼ãé çªã«è¡¨ç¤ºãããããã®ãã­ã»ã¹ã¯éå¸¸ã«ç­ãï¼éå¸¸5msï¼ãåå­¦çæ®åå¹æã¨è¦è¦çæ®çã®åçã«ãããåæã«4ã¤ã®æå­ãè¦ããã¨ãã§ããã GPIO17 GPIO18 GPIO22 GPIO23 GPIO24 GPIO27 åæ¸ã æå®ããç§æ°å¾ã«SIGALRMã·ã°ãã«ãçæããã æ¬¡ã«ã4æ¡7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãå¶å¾¡ãã¦ã¿ã¦ãã ããã ç¾è±¡ç»å Pin 11 Pin 12 Pin 13 Pin 15 Pin 16 Pin 18 Pin 19 åç SPIMOSI åè·¯å³ å¤ã®å ´æãé¸æãããæ¯åæå¹ãªå ´æã¯1ã¤ã ãã§ãããæå¹ãªå ´æã¯highã«æ¸ãè¾¼ã¾ããã ã¹ããã2ï¼ã³ã¼ãã®ãã©ã«ãã¼ã«å¥ãã ã¹ããã3ï¼ã³ã¼ããã³ã³ãã¤ã«ããã ã¹ããã3ï¼EXEãã¡ã¤ã«ãå®è¡ããã ã¹ããã4ï¼EXEãã¡ã¤ã«ãå®è¡ããã Tãã¼ãå 4ãã¸ã¿ã«7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã¯ç¬ç«ãã¦åä½ãããäººéã®è¦è¦çæç¶æ§ã®åçãä½¿ç¨ãã¦ãã«ã¼ãåã®å7ã»ã°ã¡ã³ãã®æå­ããã°ããè¡¨ç¤ºããé£ç¶ããæå­åãå½¢æããã ãã®æ©è½ã¯ã4æ¡ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«è¡¨ç¤ºãããçªå·ãè¨­å®ããããã«ä½¿ç¨ãããã ãã®æ©è½ãä½¿ç¨ãã¦ã4æ¡ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«è¡¨ç¤ºãããçªå·ãè¨­å®ããã ã¢ã¸ã¥ã¼ã«ãã¹ã¬ããã¯Pythonã®ä¸è¬çãªã¹ã¬ããã¢ã¸ã¥ã¼ã«ã§ãããã¿ã¤ãã¼ã¯ãã®ãµãã¯ã©ã¹ã§ãããã³ã¼ãã®ãã­ãã¿ã¤ãã¯æ¬¡ã®ã¨ããã§ãï¼ ãããã®4ã¤ã®ãã³ã¯ã4æ¡ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã®ã¢ãã¼ãã³ã¢ã³ãã³ãå¶å¾¡ããã ããã¯ã·ã¹ãã çµã¿è¾¼ã¿ã®é¢æ°ã§ãããã³ã¼ãã®ãã­ãã¿ã¤ãã¯æ¬¡ã®ã¨ããã§ããï¼ ãããã·ã¹ãã çµã¿è¾¼ã¿é¢æ°ã§ãããã³ã¼ãã®ãã­ãã¿ã¤ãã¯ï¼ 7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ï¼ã¢ãã¼ãã³ã¢ã³ï¼ãã©ã®ããã«çªå·ãè¡¨ç¤ºããããç¥ãããã«ãæ¬¡ã®è¡¨ããåç§ãã ãããæ°å­ã¯7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«è¡¨ç¤ºããã0ãFã®æ°å­ã§ãããï¼DPï¼GFEDCBAã¯ã0ã¾ãã¯1ã«è¨­å®ãããå¯¾å¿ã®LEDãæãããã¨ãã°ã11000000ã¯DPããã³Gã1ã«è¨­å®ãããä»ã®LEDã0ã«è¨­å®ããããã¨ãæå³ããããããã£ã¦ã7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«ã¯0ãè¡¨ç¤ºãããHEXã³ã¼ãã¯16é²æ°ã«å¯¾å¿ããã ä¸è¨ã®é¢æ°ãä½¿ç¨ãã¦ãã¿ã¤ãã¼é¢æ°ãå®è£ããã ``alarm()`` ãSIGALRMã·ã°ãã«ãçæããå¾ãã¿ã¤ãã¼é¢æ°ãå¼ã³åºããããã«ã¦ã³ã¿ã¼ã«1ãè¿½å ããã¨ã1ç§å¾ã«é¢æ° ``alarmï¼1ï¼`` ãç¹°ãè¿ãå¼ã³åºãããã SDIã«ã1ãã8åæ¸ãè¾¼ãã¨ã7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã®8ã¤ã®LEDãæ¶ç¯ããè¡¨ç¤ºãããã³ã³ãã³ããæ¶å»ãããã ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã ``clearDisplay()``ï¼11111111ã«æ¸ãè¾¼ã¿ã7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ä¸ã®ããã8ã¤ã®LEDããªãã«ãã¦ãè¡¨ç¤ºãããã³ã³ãã³ããæ¶å»ããã ``hc595_shiftï¼number [counterï¼10]ï¼``ï¼ã«ã¦ã³ã¿ã¼ã®1æ¡ã®æ°å­ã4çªç®ã®ã»ã°ã¡ã³ãã«è¡¨ç¤ºãããã ``pickDigitï¼0ï¼``ï¼4çªç®ã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãé¸æããã physical wiringPi 