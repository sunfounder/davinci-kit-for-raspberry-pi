Þ          ü               Ü     Ý     ò     û       )   '     Q     o  $        ¥  k   ´  
         +     C     X    r  {        ý     
  	        '  }   9  Y   ·  G     Ñ   Y    +    µ     Î	  Y  i
     Ã     Ú     è  '     <   -  9   j  $   ¤  6   É        z             ¡     ®     È  F  ç  ¢   .  	   Ñ     Û     è  	   ï  ¢   ù  ~     n         Í  ¥    s  æ   ù   **Code Explanation** **Code** **Joystick** **Step 1:** Build the circuit. **Step 2:** Go to the folder of the code. **Step 3:** Compile the code. **Step 3:** Run. **Step 4:** Run the executable file. 2.1.6 Joystick After the code runs, turn the Joystick, then the corresponding values of x, y, Btn are displayed on screen. Components Experimental Procedures For C Language Users For Python Language Users In order to communicate a full range of motion to the computer, a joystick needs to measure the stick's position on two axes -- the X-axis (left to right) and the Y-axis (up and down). Just as in basic geometry, the X-Y coordinates pinpoint the stick's position exactly. In this project, We're going to learn how joystick works. We manipulate the Joystick and display the results on the screen. Introduction Phenomenon Picture Principle Schematic Diagram The basic idea of a joystick is to translate the movement of a stick into electronic information that a computer can process. The joystick also has a digital input that is actuated when the joystick is pressed down. The working process of the function is detailed in 2.1.4 Potentiometer. To determine the location of the stick, the joystick control system simply monitors the position of each shaft. The conventional analog joystick design does this with two potentiometers, or variable resistors. VRX and VRY of Joystick are connected to CH0, CH1 of ADC0834 respectively. So the function getResult() is called to read the values of CH0 and CH1. Then the read values should be stored in the variables x_val and y_val. In addition, read the value of SW of joystick and store it into the variable Btn_val. Finally, the values of x_val, y_val and Btn_val shall be printed with print() function. When the data of joystick is read, there are some differents between axis: data of X and Y axis is analog, which need to use ADC0834 to convert the analog value to digital value. Data of Z axis is digital, so you can directly use the GPIO to read, or you can also use ADC to read. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 17:58+0800
PO-Revision-Date: 2021-05-28 07:37+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **ã³ã¼ãã®èª¬æ** **ã³ã¼ã** **ã¸ã§ã¤ã¹ãã£ãã¯** **ã¹ããã1ï¼** åè·¯ãä½ãã **ã¹ããã2ï¼** ã³ã¼ãã®ãã©ã«ãã¼ã«å¥ãã **ã¹ããã3ï¼** ã³ã¼ããã³ã³ãã¤ã«ããã **ã¹ããã3ï¼** å®è¡ããã **ã¹ããã4ï¼** EXEãã¡ã¤ã«ãå®è¡ããã 2.1.6 ã¸ã§ã¤ã¹ãã£ãã¯ ã³ã¼ãã®å®è¡å¾ãã¸ã§ã¤ã¹ãã£ãã¯ãåãã¨ãå¯¾å¿ããxãyãBtnã®å¤ãç»é¢ã«è¡¨ç¤ºãããã é¨å å®é¨æé  Cè¨èªã¦ã¼ã¶ã¼åã Pythonè¨èªã¦ã¼ã¶ã¼åã ã¢ã¼ã·ã§ã³ã®å¨ç¯å²ãã³ã³ãã¥ã¼ã¿ã¼ã«éä¿¡ããããã«ãã¸ã§ã¤ã¹ãã£ãã¯ã¯Xè»¸ï¼å·¦ããå³ï¼ã¨Yè»¸ï¼ä¸ä¸ï¼ã®äºã¤ã®è»¸ã§ã¹ãã£ãã¯ã®ä½ç½®ãæ¸¬å®ããå¿è¦ããããåºæ¬çãªã¸ãªã¡ããªã¨åæ§ã«ãX-Yåº§æ¨ã¯ã¹ãã£ãã¯ã®ä½ç½®ãæ­£ç¢ºã«ç¹å®ããã ãã®ãã­ã¸ã§ã¯ãã§ã¯ãã¸ã§ã¤ã¹ãã£ãã¯ã®ä»çµã¿ãå­¦ç¿ãããã¸ã§ã¤ã¹ãã£ãã¯ãæä½ãã¦ãçµæãç»é¢ã«è¡¨ç¤ºããã åæ¸ã ç¾è±¡ç»å åç åè·¯å³ ã¸ã§ã¤ã¹ãã£ãã¯ã®åºæ¬çãªåçã¯ãã¹ãã£ãã¯ã®åããã³ã³ãã¥ã¼ã¿ã¼ãå¦çã§ããé»å­æå ±ã«å¤æãããã¨ã§ããã ã¸ã§ã¤ã¹ãã£ãã¯ã«ã¯ãã¸ã§ã¤ã¹ãã£ãã¯ãæ¼ãä¸ããã¨ãã«ä½åãããã¸ã¿ã«å¥åãããã æ©è½ã®åä½ãã­ã»ã¹ã«ã¤ãã¦ã¯ã2.1.4ããã³ã·ã§ã¡ã¼ã¿ã¼ã§è©³ããèª¬æãã¦ããã ã¹ãã£ãã¯ã®ä½ç½®ãæ±ºå®ããããã«ãã¸ã§ã¤ã¹ãã£ãã¯å¶å¾¡ã·ã¹ãã ã¯åã·ã£ããã®ä½ç½®ãç£è¦ãããå¾æ¥ã®ã¢ãã­ã°ã¸ã§ã¤ã¹ãã£ãã¯ã®è¨­è¨ã§ã¯ããããäºã¤ã®ããã³ã·ã§ã¡ã¼ã¿ã¼ã¾ãã¯å¯å¤æµæå¨ã§è¡ãã ã¸ã§ã¤ã¹ãã£ãã¯ã®VRXã¨VRYã¯ãããããADC0834ã®CH0ãCH1ã«æ¥ç¶ããã¦ããããããã£ã¦ãé¢æ°getResult() ãå¼ã³åºããã¦ãCH0ã¨CH1ã®å¤ãèª­ã¿åãããããããããèª­ã¿åã£ãå¤ãå¤æ°x_valã¨y_valã«ä¿å­ãã¦ãã ãããããã«ãã¸ã§ã¤ã¹ãã£ãã¯ã®SWã®å¤ãèª­ã¿åããå¤æ°Btn_valã«ä¿å­ãããæå¾ã«ãx_valãy_valãã¨Btn_valã®å¤ã¯print()é¢æ°ã§åºåãããã ã¸ã§ã¤ã¹ãã£ãã¯ã®ãã¼ã¿ãèª­ã¿åãã¨ãè»¸éã§ããã¤ãã®éããããï¼Xè»¸ã¨Yè»¸ã®ãã¼ã¿ã¯ã¢ãã­ã°ã§ãããADC0834ãä½¿ç¨ãã¦ã¢ãã­ã°å¤ããã¸ã¿ã«å¤ã«å¤æããå¿è¦ããããZè»¸ã®ãã¼ã¿ã¯ãã¸ã¿ã«ã§ãããããGPIOãç´æ¥ä½¿ç¨ãã¦èª­ã¿åãããã¾ãã¯ADCãä½¿ç¨ãã¦èª­ã¿åããã¨ãã§ããã ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã 