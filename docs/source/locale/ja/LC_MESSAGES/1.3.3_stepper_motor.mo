Þ    =                    ì     í       -        9  )   X       $      $   Å     ê     ü  h        q  ¤   ó          #  
   7  v   B  t   ¹  v   .  m   ¥  
   	     	     6	     K	     e	     {	     	  Ù  ¨	            	   ¢     ¬  e  ¾  f   $  ­    V   9  Q     F   â    )  ~  6    µ  ®   Å  W   t  À  Ì  h     i   ö  $  `       	      
   *  F   5  F   |  F   Ã  F   
  E   Q  E     E   Ý  E   #  E   i  F   ¯  Y  ö     P      g   N   u   '   Ä   <   ì   9   )!  6   c!  6   !  "   Ñ!     ô!      "  ¾   "  ¾   K#  ¢   
$  $   ­$     Ò$     ß$     x%  ¡   &  ¤   ­&     R'     Y'     f'     '     '     ¾'  &   Þ'    (  	   $*     .*     ;*  	   B*  }  L*  ³   Ê+  7  ~,  o   ¶.  l   &/  v   /  i  
0  l  t1  !  á4  ë   6  c   ï6  :  S7     9     !:    ¨:  æ   1>  	   ?     "?  M   /?  M   }?  M   Ë?  M   @  M   g@  J   µ@  K    A  M   LA  M   A  K   èA   **Code Explanation** **Code** **Here's how a 4-phase stepper motor works:** **Step 1:** Build the circuit. **Step 2**: Go to the folder of the code. **Step 3**: Compile the code. **Step 3**: Run the executable file. **Step 4**: Run the executable file. **Stepper Motor** **ULN2003** **rolePerMinute:** revolutions per minute, the RPM of the stepper motor used in this kit should be 0~17. **stepPerRevolution:** the number of steps for each turn, and the stepper motor used in this kit needs 2048 steps per revolution. **stepSpeed:** the time used for each step, and in main(), we assign the values to them:ã(60000000 / rolePerMinute) / stepsPerRevolutionã(60,000,000 us=1minute) **stepSpeed:** the time used for each step, and we assign the values to them:ã(60 / rolePerMinute) / stepsPerRevolutionã(60s=1minute). 1.3.3 Stepper Motor And so on. And to make the stepper motor rotate **anti-clockwise**, the level status of motorPin is shown in the following table. And to make the stepper motor rotate anti - clockwise, the level status of motorPin is shown in the following table. As the code runs, the stepper motor will rotate clockwise or anticlockwise according to your input âaâ or âcâ. As the code runs, the stepper motor will turn clockwise or anti-clockwise depending on your input 'a' or 'c'. Components Experimental Procedures For C Language Users For Python Language Users In Step1, j=0, i=0~4. In Step2, j=1, i=0~4. In Step2ï¼j=1, i=0~4. In the figure, in the middle of the motor is a rotor - a gear-shaped permanent magnet. Around the rotor, 0 to 5 are teeth. Then more outside, there are 8 magnetic poles, with each two opposite ones connected by coil winding. So they form four pairs from A to D, which is called a phase. It has four lead wires to be connected with switches SA, SB, SC, and SD. Therefore, the four phases are in parallel in the circuit, and the two magnetic poles in one phase are in series. Introduction Phenomenon Picture Principle Schematic Diagram Stepper motors, due to their unique design, can be controlled to a high degree of accuracy without any feedback mechanisms. The shaft of a stepper, mounted with a series of magnets, is controlled by a series of electromagnetic coils that are charged positively and negatively in a specific sequence, precisely moving it forward or backward in small "steps". The first part is to get the key value. When 'a' or 'c' is obtained, exit the loop and stop the input. The four-phase stepper motor has three operating modes: single four-step, double four-step, and eight-step. The step angle for the single four-step and double four-step are the same, but the driving torque for the single four-step is smaller. The step angle of the eight-step is half that of the single four-step and double four-step. Thus, the eight-step operating mode can keep high driving torque and improve control accuracy. The loop() function is roughly divided into two parts (located between two while(1)) : The loop() function is roughly divided into two parts (located in two while(1)) : The second part calls rotary(direction) to make the stepper motor run. The stator of Stepper Motor we use has 32 magnetic poles, so a circle needs 32 steps. The output shaft of the Stepper Motor is connected with a reduction gear set, and the reduction ratio is 1/64. So the final output shaft rotates a circle requiring a 32*64=2048 step. The stepper motor driver constituted by ULN2003 chip and 4 LEDs is shown as follows. On the board, IN1,IN2,IN3 and IN4 work as input and the four LEDs, A, B, C, D are the indicators of input pin. In addition, OUT1,OUT2, OUT3 and OUT4 are connected to SA, SB, SC and SD on the stepper motor driver. When the value of IN1 is set to a high level, A lights up; switch SA is power on, and the stepper motor rotates one step. The similar case repeats on and on. Therefore, just give the stepper motor a specific timing sequence, it will rotate step by step. The ULN2003 here is used to provide particular timing sequences for the stepper motor. The stepper motor is a four-phase one, which uses a unipolarity DC power supply. As long as you electrify all phase windings of the motor by an appropriate timing sequence, you can make it rotate step by step. The schematic diagram of a four-phase reactive stepper motor: There are two types of steppers, unipolars and bipolars, and it is very important to know which type you are working with. In this experiment, we will use a unipolar stepper. Therefore, potential write of MotorPin is implemented by using a two-layer of for loop. To apply the motor in the circuit, a driver board needs to be used. Stepper Motor Driver-ULN2003 is a 7-channel inverter circuit. That is, when the input pin is at high level, the output pin of ULN2003 is at low level, and vice versa. If we supply high level to IN1, and low level to IN2, IN3 and IN4, then the output end OUT1 is at low level, and all the other output ends are at high level. Â The internal structure of the chip is shown as below. To make stepper motor **rotate clockwise**, level status of motorPin should is shown in the table below: To make the stepper motor rotate clockwise, the level status of motorPin is shown in the following table: When switch SB is power on, switch SA, SC, and SD is power off, and B-phase magnetic poles align with tooth 0 and 3 of the rotor. At the same time, tooth 1 and 4 generate staggered teeth with C- and D-phase poles. Tooth 2 and 5 generate staggered teeth with D- and A-phase poles. When switch SC is power on, switch SB, SA, and SD is power off, the rotor rotates under magnetic field of C-phase winding and that between tooth 1 and 4. Then tooth 1 and 4 align with the magnetic poles of C-phase winding. While tooth 0 and 3 generate staggered teeth with A- and B-phase poles, and tooth 2 and 5 generate staggered teeth with the magnetic poles of A- and D-phase poles. The similar situation goes on and on. Energize the A, B, C and D phases in turn, and the rotor will rotate in the order of A, B, C and D. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. and so on and so on. motorPin[0] will be written in the high levelï¼00110010&10000000=0ï¼ motorPin[0] will be written in the high levelï¼01001100&00001000=1ï¼ motorPin[0] will be written in the high levelï¼10011001&00001000=1ï¼ motorPin[0] will be written in the high levelï¼10011001&10000000=1ï¼ motorPin[1] will be written in the low levelï¼00110010&01000000=0ï¼ motorPin[1] will be written in the low levelï¼01001100&00000100=1ï¼ motorPin[1] will be written in the low levelï¼10011001&00000100=0ï¼ motorPin[1] will be written in the low levelï¼10011001&01000000=0ï¼ motorPin[2] will be written in the low levelï¼10011001&00000010=0ï¼ motorPin[3] will be written in the high levelï¼10011001&00000001=1ï¼ Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 17:58+0800
PO-Revision-Date: 2021-05-27 19:15+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **ã³ã¼ãã®èª¬æ** **ã³ã¼ã** **4ç¸ã¹ãããã³ã°ã¢ã¼ã¿ã¼ã®åä½åçã¯æ¬¡ã®éãã§ãã:** **ã¹ããã1ï¼** åè·¯ãä½ãã **ã¹ããã2ï¼** ã³ã¼ãã®ãã©ã«ãã¼ã«å¥ãã **ã¹ããã3ï¼** ã³ã¼ããã³ã³ãã¤ã«ããã **ã¹ããã3ï¼** EXEãã¡ã¤ã«ãå®è¡ããã **ã¹ããã4ï¼** EXEãã¡ã¤ã«ãå®è¡ããã **ã¹ãããã³ã°ã¢ã¼ã¿ã¼** **ULN2003** **rolePerMinuteï¼** 1åãããã®åè»¢æ°ããã®ã­ããã§ä½¿ç¨ãããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã®RPMã¯0ã17ã§ããã **stepPerRevolutionï¼** 1ã¿ã¼ã³ã®ã¹ãããæ°ãããã³ãã®ã­ããã§ä½¿ç¨ãããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã«ã¯ã1åè»¢ããã2048ã¹ããããå¿è¦ã§ããã **stepSpeedï¼** åã¹ãããã«ä½¿ç¨ãããæéãmain()ã§ã¯ããããã«å¤ãå²ãå½ã¦ãããï¼60000000/rolePerMinuteï¼/ stepsPerRevolutionãï¼60,000,000 us = 1åï¼ **stepSpeedï¼** åã¹ãããã«ä½¿ç¨ãããæéããããã«å¤ãå²ãå½ã¦ãï¼ãï¼60/ rolePerMinuteï¼/stepsPerRevolutionãï¼60s = 1åï¼ã 1.3.3 ã¹ãããã³ã°ã¢ã¼ã¿ã¼ ã¾ããã ã¾ããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã **åæè¨åã** ã«åè»¢ãããããã«ãmotorPinã®ã¬ãã«ã¹ãã¼ã¿ã¹ãæ¬¡ã®è¡¨ã«ç¤ºãã ã¾ããã¹ãããã³ã°ã¢ã¼ã¿ã¼ãåæè¨åãã«åè»¢ãããããã«ãmotorPinã®ã¬ãã«ã¹ãã¼ã¿ã¹ãæ¬¡ã®è¡¨ã«ç¤ºãã ã³ã¼ããå®è¡ãããã¨ãå¥åãaãã¾ãã¯ãcãã«å¿ãã¦ã¹ãããã³ã°ã¢ã¼ã¿ã¼ãæè¨åãã¾ãã¯åæè¨åãã«åè»¢ããã ã³ã¼ããå®è¡ãããã¨ãå¥åãaãã¾ãã¯ãcãã«å¿ãã¦ãã¹ãããã³ã°ã¢ã¼ã¿ã¼ãæè¨åãã¾ãã¯åæè¨åãã«åè»¢ããã é¨å å®é¨æé  Cè¨èªã¦ã¼ã¶ã¼åã Pythonè¨èªã¦ã¼ã¶ã¼åã Step1ã§ã¯ãj=0ãi=0ã4ã Step2ã§ã¯ãj=1ãi= 0ã4ã ã¹ããã2ã§ã¯ãj=1ãi=0ã4ã å³ã§ã¯ãã¢ã¼ã¿ã¼ã®ä¸­å¤®ã«ã­ã¼ã¿ã¼-æ­¯è»ç¶ã®æ°¸ä¹ç£ç³ããããã­ã¼ã¿ã¼ã®å¨ãã®0ã5ã¯æ­¯ã§ãããããã«å¤å´ã«ã¯ã8ã¤ã®ç£æ¥µããããããããåå¯¾å´ã®2ã¤ã®ç£æ¥µãã³ã¤ã«å·»ç·ã§æ¥ç¶ããã¦ããããã®ãããAããDã¾ã§ã®4ã¤ã®ãã¢ãå½¢æããç¸ã¨å¼ã°ãããã¹ã¤ããSAãSBãSCãSDã«æ¥ç¶ãããªã¼ãç·ã4æ¬ããããããã£ã¦ãåè·¯ã§ã¯4ã¤ã®ç¸ãä¸¦åã«ãªã£ã¦ããã1ã¤ã®ç¸ã®2ã¤ã®ç£æ¥µã¯ç´åã«ãªã£ã¦ããã åæ¸ã ç¾è±¡ç»å åç åè·¯å³ ç¬èªã®è¨­è¨ã«ãããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã¯ãã£ã¼ãããã¯ã¡ã«ããºã ãªãã§é«åº¦ãªç²¾åº¦ã§å¶å¾¡ã§ãããä¸é£ã®ç£ç³ãåãä»ããããã¹ãããã¼ã®ã·ã£ããã¯ãç¹å®ã®ã·ã¼ã±ã³ã¹ã§æ­£ã¨è² ã«å¸¯é»ããä¸é£ã®é»ç£ã³ã¤ã«ã«ãã£ã¦å¶å¾¡ãããå°ããªãã¹ããããã§åå¾ã«æ­£ç¢ºã«ç§»åããã æåã®é¨åã®ç®çã¯ãkey valueãåå¾ãããã¨ã§ããããaãã¾ãã¯ãcããåå¾ãããããã«ã¼ããçµäºãã¦å¥åãåæ­¢ãã¦ãã ããã 4ç¸ã¹ãããã³ã°ã¢ã¼ã¿ã¼ã«ã¯ã3ã¤ã®åä½ã¢ã¼ããããï¼ã·ã³ã°ã«4ã¹ããããããã«4ã¹ããããããã³8ã¹ããããã·ã³ã°ã«4ã¹ãããã¨ããã«4ã¹ãããã®ã¹ãããè§ã¯åãã§ããããã·ã³ã°ã«4ã¹ãããã®é§åãã«ã¯ã¯å°ãããªãã8ã¹ãããã®ã¹ãããè§ã¯ãã·ã³ã°ã«4ã¹ãããããã³ããã«4ã¹ãããã®ååã§ããããããã£ã¦ã8ã¹ãããã®åä½ã¢ã¼ãã¯ãé«ãé§åãã«ã¯ãç¶­æããå¶å¾¡ç²¾åº¦ãåä¸ããããã¨ãã§ããã loop() é¢æ°ã¯ã2ã¤ã®é¨åï¼2ã¤ã®whileï¼1ï¼ã®éã«ããï¼ã«å¤§ã¾ãã«åãããã¦ããï¼ loop() é¢æ°ã¯ãå¤§ããåãã¦2ã¤ã®é¨åã«åããã¦ããï¼2ã¤ã®whileï¼1ï¼ã«ããï¼ï¼ 2çªç®ã®é¨åã¯ã­ã¼ã¿ãªã¼ï¼æ¹åï¼ãå¼ã³åºãã¦ãã¹ãããã³ã°ã¢ã¼ã¿ã¼ãåä½ãããã ä½¿ç¨ããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã®ã¹ãã¼ã¿ã«ã¯32åã®ç£æ¥µããããããåã«ã¯32ã¹ããããå¿è¦ã§ãããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã®åºåè»¸ã¯æ¸éè£ç½®ã»ããã«æ¥ç¶ãããæ¸éæ¯ã¯1/64ã§ãããã§ããããæçµåºåã·ã£ããã¯32 * 64 = 2048ã¹ããããå¿è¦ã¨ããåãåè»¢ãããã ULN2003ãããã¨4ã¤ã®LEDã§æ§æãããã¹ãããã³ã°ã¢ã¼ã¿ã¼ãã©ã¤ãã¼ãä»¥ä¸ã«ç¤ºãããã¼ãã§ã¯ãIN1ãIN2ãIN3ãIN4ãå¥åã¨ãã¦æ©è½ãã4ã¤ã®LEDãAãBãCãDã¯å¥åãã³ã®æç¤ºå¨ã§ãããããã«ãOUT1ãOUT2ãOUT3ãããã³OUT4ã¯ãããããã¹ãããã³ã°ã¢ã¼ã¿ã¼ãã©ã¤ãã¼ã®SAãSBãSCãããã³SDã«æ¥ç¶ããã¦ãããIN1ã®å¤ãé«ã¬ãã«ã«è¨­å®ãããã¨ãAãç¹ç¯ããã¹ã¤ããSAã®é»æºããªã³ã«ãªããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã1ã¹ãããã§åè»¢ãããåæ§ã®ã±ã¼ã¹ãä½åº¦ãç¹°ãè¿ãããããããã£ã¦ãã¹ãããã³ã°ã¢ã¼ã¿ã¼ã«ç¹å®ã®æç³»åãä¸ããã ãã§ãã¹ããããã¨ã«åè»¢ãããã¹ãããã³ã°ã¢ã¼ã¿ã¼ã«ç¹å®ã®æç³»åãæä¾ããããã«ãããã§ULN2003ãä½¿ç¨ããã ã¹ãããã³ã°ã¢ã¼ã¿ã¼ã¯åç¸DCé»æºãä½¿ç¨ãã4ç¸ã¢ã¼ã¿ã¼ã§ãããé©åãªæç³»åã§ã¢ã¼ã¿ã¼ã®ãã¹ã¦ã®ç¸å·»ç·ã«éé»ããéããä¸æ­©ä¸æ­©ã«åè»¢ããããã¨ãã§ããã4ç¸ãªã¢ã¯ãã£ãã¹ãããã³ã°ã¢ã¼ã¿ã¼ã®æ¦ç¥å³ï¼ ã¹ãããã¼ã«ã¯ãã¦ããã¼ã©ã¼ã¨ãã¤ãã¼ã©ã¼ã®2ã¤ã®ã¿ã¤ãããããä½¿ç¨ãã¦ããã¿ã¤ããç¥ããã¨ãéå¸¸ã«éè¦ã§ããããã®å®é¨ã§ã¯ãã¦ããã¼ã©ã¹ãããã¼ãä½¿ç¨ããã ãããã£ã¦ã2å±¤ã®foræãä½¿ç¨ãã¦MotorPinã®æ½å¨çãªæ¸ãè¾¼ã¿ãå®è£ããã ã¢ã¼ã¿ã¼ãåã«é©ç¨ããã«ã¯ããã©ã¤ãã¼ãã¼ããä½¿ç¨ããå¿è¦ãããã¾ããã¹ãããã¼ã¢ã¼ã¿ã¼ãã©ã¤ã-ULN2003ã¯7ãã£ãã«ã¤ã³ãã¼ã¿ãµã¼ã¯ã«ã§ããã¤ã¾ããå¥åãã³ãé«ã¬ãã«ã®å ´åãULN2003ã®åºåãã³ã¯ä½ã¬ãã«ã§ããããã®éãåæ§ã§ããIN1 ã«é«ã¬ãã«ãä¾çµ¦ããIN2ãIN3ãIN4 ã«ä½ã¬ãã«ãä¾çµ¦ããã¨ãåºåç«¯ OUT1 ã¯ä½ã¬ãã«ã§ãããä»ã®ãã¹ã¦ã®åºåç«¯ã¯é«ã¬ãã«ã«ãªãã¾ãããããã®åé¨æ§é ãä»¥ä¸ã«ç¤ºãã¾ãã ã¹ãããã³ã°ã¢ã¼ã¿ã¼ã **æè¨åãã«åè»¢ããã** ããã«ãmotorPinã®ã¬ãã«ã¹ç¶æè¦æ±ã¯ä»¥ä¸ã®éãã§ããï¼ ã¹ãããã³ã°ã¢ã¼ã¿ã¼ãæè¨åãã«åè»¢ãããããã«ãmotorPinã®ã¬ãã«ã¹ãã¼ã¿ã¹ãæ¬¡ã®è¡¨ã«ç¤ºãï¼ ã¹ã¤ããSBã®é»æºããªã³ã«ãªãã¨ãã¹ã¤ããSAãSCãããã³SDã®é»æºããªãã«ãªããBç¸ã®ç£æ¥µãã­ã¼ã¿ã¼ã®æ­¯0ã¨3ã¨æ´åãããåæã«ãæ­¯1ã¨4ã¯ãCç¸ã¨Dç¸ã®æ¥µãæã¤äºãéãã«éåããæ­¯ãçæãããæ­¯2ã¨5ã¯ãDç¸ã¨Aç¸ã®æ¥µãæã¤äºãéãã«éåããæ­¯ãçæãããã¹ã¤ããSCã®é»æºããªã³ãã¹ã¤ããSBãSAãããã³SDã®é»æºããªãã®å ´åãã­ã¼ã¿ã¼ã¯Cç¸å·»ç·ã®ç£å ´ã¨æ­¯1ã¨4ã®éã®ç£å ´ã®ä¸ã§åè»¢ãããæ¬¡ã«ãæ­¯1ã¨4ãCç¸å·»ç·ã®ç£æ¥µã¨æ´åãããä¸æ¹ãæ­¯0ã¨3ã¯Aç¸ã¨Bç¸ã®æ¥µãæã¤äºãéãã«éåããæ­¯ãçæããæ­¯2ã¨5ã¯Aç¸ã¨Dç¸ã®æ¥µãæã¤äºãéãã«éåããæ­¯ãçæãããåæ§ã®ç¶æ³ãç¶ãã¦ãããAãBãCãDç¸ã«é çªã«éé»ããã¨ãã­ã¼ã¿ã¼ã¯AãBãCãDã®é ã«åè»¢ããã ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã ã¾ãã ã¾ããã motorPin [0]ã¯é«ã¬ãã«ï¼00110010ï¼10000000 = 0ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [0]ã¯é«ã¬ãã«ï¼01001100ï¼00001000 = 1ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [0]ã¯é«ã¬ãã«ï¼10011001ï¼00001000 = 1ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [0]ã¯é«ã¬ãã«ï¼10011001ï¼10000000 = 1ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [1]ã¯ä½ã¬ãã«ï¼00110010ï¼01000000 = 0ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [1]ã¯ä½ã¬ãã«ï¼01001100ï¼00000100 = 1ï¼ãªã©ã§æ¸ãè¾¼ motorPin [1]ã¯ä½ã¬ãã«ï¼10011001ï¼00000100=0ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [1]ã¯ä½ã¬ãã«ï¼10011001ï¼01000000 = 0ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [2]ã¯ä½ã¬ãã«ï¼10011001ï¼00000010 = 0ï¼ã§æ¸ãè¾¼ã¾ãã motorPin [3]ã¯é«ã¬ãã«ï¼10011001ï¼00000001=1ï¼ã§æ¸ãè¾¼ã¾ãã 