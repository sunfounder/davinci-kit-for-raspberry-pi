Þ    D      <              \     ]     s  /        ¯     Ä     Í     ë     ý  '     (   5  k   ^  h   Ê  î   3  }   "            ¿     à     â     ä     ü     ÿ            §     A   ¯  G   ñ  ·   9	  ´   ñ	     ¦
  
   ª
     µ
  à  Ö     ·     Ï     ä     þ            Ö        ê  O   ÷     G     Z     a     h  	   o     y          ®     >     Ó  ¡   å  M     (   Õ     þ       &        C  ¿   P  Z       k  ±  o  ;  !     ]     ø  °        ²  Y  »  &        <  E   H          ¥  $   ³     Ø     ì  3   ý  &   1  £   X  v   ü  ;  s  ¨   ¯   %   X!     ~!     !     !  (   !     È!     Ë!     Î!     Ð!  é   Ó!  X   ½"  \   #  ý   s#    q$     t%     x%  Û  %  a  [(     ½*     Ê*     ä*     +     
+     +    +  	   ,  w   %,     ,     ª,     ±,     ¸,     ¿,  ü   Æ,  Ë   Ã-  Ø   .  Ë   h/  	   40  È   >0  o   1  7   w1  (   ¯1     Ø1  1   ø1     *2  ï   82  S   (3  m  |3    ê4  Î  7  æ   Õ9     ¼:  Ç   Å:     ;   **7-Segment Display** **74HC595** **CE**: Output enable pin, active at low level. **Code Explanation** **Code** **DS**: Serial data input pin **Display Codes** **GND**: Ground **MR**: Reset pin, active at low level; **Pins of 74HC595 and their functions**: **Q0-Q7**: 8-bit parallel data output pins, able to control 8 LEDs or 8 pins of 7-segment display directly. **Q7â**: Series output pin, connected to DS of another 74HC595 to connect multiple 74HC595s in series. **SHcp**: Time sequence input of shift register. On the rising edge, the data in shift register moves successively one bit, i.e. data in Q1 moves to Q2, and so forth. While on the falling edge, the data in shift register remain unchanged. **STcp**: Time sequence input of storage register. On the rising edge, data in the shift register moves into memory register. **Step 1:** Build the circuit. **VCC**: Positive supply voltage 0 1 1.1.4 7-segment Display 17 18 2 27 A 7-segment display is an 8-shaped component which packages 7 LEDs. Each LED is called a segment - when energized, one segment forms part of a numeral to be displayed. A segment code array from 0 to F in Hexadecimal (Common cathode). After the code runs, you'll see the 7-segment display display 0-9, A-F. Assign the dat data to SDI(DS) by bits. Here we assume dat=0x3f(0011 1111, when bit=2, 0x3f will shift right(<<) 2 bits. 1111 1100 (0x3f << 2) & 1000 0000 (0x80) = 1000 0000, is true. Assign the dat data to SDI(DS) by bits. Here we assume dat=0x3f(0011 1111, when i=2, 0x3f will shift left(<<) 2 bits. 1111 1100 (0x3f << 2) & 1000 0000 (0x80) = 1000 0000, is true. BCM Components Connect pin ST_CP of 74HC595 to Raspberry Pi GPIO18, SH_CP to GPIO27, DS to GPIO17, parallel output ports to 8 segments of the LED segment display. Input data in DS pin to shift register when SH_CP (the clock input of the shift register) is at the rising edge, and to the memory register when ST_CP (the clock input of the memory) is at the rising edge. Then you can control the states of SH_CP and ST_CP via the Raspberry Pi GPIOs to transform serial data input into parallel data output so as to save Raspberry Pi GPIOs and drive the display. Each of the LEDs in the display is given a positional segment with one of its connection pins led out from the rectangular plastic package. These LED pins are labeled from "a" through to "g" representing each individual LED. The other LED pins are connected together forming a common pin. So by forward biasing the appropriate pins of the LED segments in a particular order, some segments will brighten and others stay dim, thus showing the corresponding character on the display. Experimental Procedures For C Language Users For Python Language Users GPIO17 GPIO18 GPIO27 In this for loop, we use "%1X" to output i as a hexadecimal number. Apply i to find the corresponding segment code in the SegCode[] array, and employ hc595_shift() to pass the SegCode into 74HC595's shift register. Introduction Let's try to drive a 7-segment display to show a figure from 0 to 9 and A to F. Phenomenon Picture Pin 11 Pin 12 Pin 13 Principle RCLK's initial value was set to 0, and here it's set to 1, which is to generate a rising edge, then shift data from shift register to storage register. RCLK's initial value was set to LOW, and here it's set to HIGH, which is to generate a rising edge, then shift data from shift register to storage register. SRCLK's initial value was set to 0, and here it's set to 1, which is to generate a rising edge pulse, then shift the DS date to shift register. SRCLK's initial value was set to LOW, and here it's set to HIGH, which is to generate a rising edge pulse, then shift the DS date to shift register. Schematic Diagram Set ds, st_cp, sh_cp three pins to OUTPUT, and the initial state as 0. void hc595_shift(unsigned char dat){} To assign 8 bit value to 74HC595âs shift register. Set ds, st_cp, sh_cp three pins to output and the initial state as low level. Step 2: Get into the folder of the code. Step 3: Compile. Step 3: Run. Step 4: Run the executable file above. T-Board Name The 74HC595 consists of an 8âbit shift register and a storage register with threeâstate parallel outputs. It converts serial input into parallel output so you can save IO ports of an MCU. The hexadecimal format of number 0~15 are (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F) There are two types of pin connection: Common Cathode (CC) and Common Anode (CA). As the name suggests, a CC display has all the cathodes of the 7 LEDs connected when a CA display has all the anodes of the 7 segments connected. In this kit, we use the former. To help you get to know how 7-segment displays(Common Cathode) display Numbers, we have drawn the following table. Numbers are the number 0-F displayed on the 7-segment display; (DP) GFEDCBA refers to the corresponding LED set to 0 or 1, For example, 00111111 means that DP and G are set to 0, while others are set to 1. Therefore, the number 0 is displayed on the 7-segment display, while HEX Code corresponds to hexadecimal number. When MR (pin10) is high level and OE (pin13) is low level, data is input in the rising edge of SHcp and goes to the memory register through the rising edge of SHcp. If the two clocks are connected together, the shift register is always one pulse earlier than the memory register. There is a serial shift input pin (Ds), a serial output pin (Q) and an asynchronous reset button (low level) in the memory register. The memory register outputs a Bus with a parallel 8-bit and in three states. When OE is enabled (low level), the data in memory register is output to the bus. You can **Modify/Reset/Copy/Run/Stop** the code below. But before that, you need to go to  source code path like ``davinci-kit-for-raspberry-pi\\python``. physical unsigned char SegCode[16] = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}; A segment code array from 0 to F in Hexadecimal (Common cathode). wiringPi Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-07 09:33+0800
PO-Revision-Date: 2021-08-06 11:28+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤** **74HC595** **CE** : åºåã¤ãã¼ãã«ãã³ãä½ã¬ãã«ã§ä½åããã **ã³ã¼ãã®èª¬æ** **ã³ã¼ã** **DS** : ç´åãã¼ã¿å¥åãã³ **è¡¨ç¤ºã³ã¼ã** **GND** : æ¥å° **MR**: ãªã»ãããã³ï¼ä½ã¬ãã«ã§ä½å; **74HC595ã®ãã³ã¨ãã®æ©è½**ï¼ **Q0-Q7**ï¼8ããããã©ã¬ã«ãã¼ã¿åºåç«¯å­ã8åã®LEDã¾ãã¯8åã®7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãç´æ¥å¶å¾¡ãããã¨ãã§ãã¾ãã **Q7'**: è¤æ°ã®74HC595ãç´åã«æ¥ç¶ããããã«ï¼å¥ã®74HC595ã®DSã«æ¥ç¶ãããç´ååºåç«¯å­ã **SHcp**ï¼ã·ããã¬ã¸ã¹ã¿ã®æç³»åå¥åã ç«ã¡ä¸ããã¨ãã¸ã§ã¯ãã·ããã¬ã¸ã¹ã¿ã®ãã¼ã¿ã1ãããé£ç¶ãã¦ç§»åãã¾ããã¤ã¾ããQ1ã®ãã¼ã¿ãQ2ã«ç§»åãã¾ãã ç«ã¡ä¸ããã¨ãã¸ã«ããéãã·ããã¬ã¸ã¹ã¿ã®ãã¼ã¿ã¯å¤æ´ããã¾ããã **STcp**ï¼ã¹ãã¬ã¼ã¸ã¬ã¸ã¹ã¿ã®æç³»åå¥åã ç«ã¡ä¸ããã¨ãã¸ã§ãã·ããã¬ã¸ã¹ã¿ã®ãã¼ã¿ãã¡ã¢ãªã¬ã¸ã¹ã¿ã«ç§»åãã¾ãã **ã¹ããã1:** åè·¯ãä½ãã **VCC** : æ­£ã®é»æºé»å§ 0 1 1.1.4 7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ 17 18 2 27 7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã¯ãLEDã7åããã±ã¼ã¸ãã8å­åã®é¨åã§ãããåLEDã¯ã»ã°ã¡ã³ãã¨å¼ã°ãã-éé»ãããã¨ã1ã¤ã®ã»ã°ã¡ã³ããè¡¨ç¤ºãããæ°å­ã®ä¸é¨ãå½¢æããã 16é²æ°ï¼ã«ã½ã¼ãã³ã¢ã³ï¼ã®0ããFã¾ã§ã®ã»ã°ã¡ã³ãã³ã¼ãéåã ã³ã¼ãã®å®è¡å¾ã7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«0ã9ãAFãè¡¨ç¤ºãããã ããããã¨ã«datãã¼ã¿ãSDIï¼DSï¼ã«å²ãå½ã¦ããããã§ã¯ãdat = 0x3fï¼0011 1111ãbit = 2ãä»®å®ãã0x3fã¯å³ï¼<<ï¼2ãããã«åãæ¿ããã1111 1100ï¼0x3f << 2ï¼ï¼1000 0000ï¼0x80ï¼=1000 0000ãã¯çã§ããã ããããã¨ã«datãã¼ã¿ãSDIï¼DSï¼ã«å²ãå½ã¦ããããã§ã¯ãdat = 0x3fï¼0011 1111ãä»®å®ããi = 2ã®å ´åã0x3fã¯å·¦ï¼<<ï¼2ãããã«ã·ããããã1111 1100ï¼0x3f << 2ï¼ï¼1000 0000ï¼0x80ï¼= 1000 0000ãçã§ããã BCM é¨å 74HC595ã®ãã³ST_CPãRaspberry Pi GPIO18ã«ãSH_CPãGPIO27ã«ãDSãGPIO17ã«ãä¸¦ååºåãã¼ããLEDã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã®8ã¤ã®ã»ã°ã¡ã³ãã«æ¥ç¶ãããSH_CPï¼ã·ããã¬ã¸ã¹ã¿ã®ã¯ã­ãã¯å¥åï¼ãç«ã¡ä¸ããã¨ãã¸ã«ããå ´åã¯DSãã³ã®ãã¼ã¿ãã·ããã¬ã¸ã¹ã¿ã«å¥åããST_CPï¼ã¡ã¢ãªã®ã¯ã­ãã¯å¥åï¼ãç«ã¡ä¸ããã¨ãã¸ã«ããå ´åã¯ãã®ãã¼ã¿ãã¡ã¢ãªã¬ã¸ã¹ã¿ã«å¥åãããæ¬¡ã«ãRaspberry Pi GPIOãä»ãã¦SH_CPããã³ST_CPã®ç¶æãå¶å¾¡ããç´åãã¼ã¿å¥åãä¸¦åãã¼ã¿åºåã«å¤æãã¦ãRaspberry Pi GPIOãä¿å­ããããã£ã¹ãã¬ã¤ãé§åããããããã¨ã¯ã§ããã ãã£ã¹ãã¬ã¤ã®åLEDã«ã¯ãé·æ¹å½¢ã®ãã©ã¹ããã¯ããã±ã¼ã¸ããæ¥ç¶ãã³ã®1ã¤ãå¼ãåºãããä½ç½®ã»ã°ã¡ã³ããããããããã®LEDãã³ã«ã¯ãåãã®LEDãè¡¨ããaããããgãã¾ã§ã®ã©ãã«ãä»ãã¦ãããä»ã®LEDãã³ã¯ä¸ç·ã«æ¥ç¶ãããå±éã®ãã³ãå½¢æããããã®ãããLEDã»ã°ã¡ã³ãã®é©åãªãã³ãç¹å®ã®é åºã§é æ¹åã«ãã¤ã¢ã¹ãããã¨ã«ãããä¸é¨ã®ã»ã°ã¡ã³ããæãããªããä»ã®ã»ã°ã¡ã³ããæããªãããã£ã¹ãã¬ã¤ã«å¯¾å¿ããæå­ãè¡¨ç¤ºãããã å®é¨æé  Cè¨èªã¦ã¼ã¶ã¼åã Pythonè¨èªã¦ã¼ã¶ã¼åã GPIO17 GPIO18 GPIO27 ãã®forã«ã¼ãã§ã¯ãiã16é²æ°ã§åºåããããã«ã"%1X"ãä½¿ç¨ãã¦ãã¾ããiãé©ç¨ãã¦SegCode[]éåã®å¯¾å¿ããã»ã°ã¡ã³ãã³ã¼ããæ±ããhc595_shift()ã§74HC595ã®ã·ããã¬ã¸ã¹ã¿ã¼ã«SegCodeãæ¸¡ãã¾ãã åæ¸ã 7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ãé§åãã¦ã0ãã9ããã³AããFã®æ°å­ãè¡¨ç¤ºãã¦ã¿ã¾ãããã ç¾è±¡ç»å Pin 11 Pin 12 Pin 13 åç RCLKã®åæå¤ã¯åãã«0ã«è¨­å®ããã¦ããããããã§ã¯1ã«è¨­å®ããã¦ãããããã¯ãç«ã¡ä¸ããã¨ãã¸ãã«ã¹ãçæãããã¼ã¿ã¼ãã·ããã¬ã¸ã¹ã¿ããã¹ãã¬ã¼ã¸ã¬ã¸ã¹ã¿ã¼ã«ã·ããããã SRCLKã®åæå¤ã¯åãLOWã«è¨­å®ããã¦ããããããã§ã¯ç«ã¡ä¸ããã¨ãã¸ãçæããDSãã¼ã¿ãã·ããã¬ã¸ã¹ã¿ã«åãæ¿ããããã«HIGHã«è¨­å®ããã¦ããã SRCLKã®åæå¤ã¯åãã«0ã«è¨­å®ããã¦ããããããã§ã¯1ã«è¨­å®ããã¦ãããããã¯ãç«ã¡ä¸ããã¨ãã¸ãã«ã¹ãçæããDSã®æ¥ä»ãã·ããã¬ã¸ã¹ã¿ã«ã·ããããã SRCLKã®åæå¤ã¯åãLOWã«è¨­å®ããã¦ããããããã§ã¯ç«ã¡ä¸ããã¨ãã¸ãçæããDSãã¼ã¿ãã·ããã¬ã¸ã¹ã¿ã«åãæ¿ããããã«HIGHã«è¨­å®ããã¦ããã åè·¯å³ Set ds, st_cp, sh_cpã®3ã¤ã®ãã³ãOUTPUTã«è¨­å®ããåæç¶æã0ã«è¨­å®ãããvoid hc595_shift(unsigned char dat){} 8ãããå¤ã74HC595ã®ã·ããã¬ã¸ã¹ã¿ã«å²ãå½ã¦ãã Set ds, st_cp, sh_cpã®3ã¤ã®ãã³ãåºåã«è¨­å®ããåæç¶æãä½ã¬ãã«ã¨ãã¦è¨­å®ããã ã¹ããã2ï¼ã³ã¼ãã®ãã©ã«ãã¼ã«å¥ãã ã¹ããã3ï¼ã³ã³ãã¤ã«ããã ã¹ããã3ï¼å®è¡ããã ã¹ããã4ï¼EXEãã¡ã¤ã«ãå®è¡ããã Tãã¼ãå 74HC595ã¯ã8ãããã®ã·ããã¬ã¸ã¹ã¿ã¨ã3æ®µéã®ä¸¦ååºåãåããã¹ãã¬ã¼ã¸ã¬ã¸ã¹ã¿ã§æ§æããã¦ãããMCUã®IOãã¼ããç¯ç´ã§ããããã«ãã·ãªã¢ã«å¥åãä¸¦ååºåã«å¤æããã çªå·0ã15ã®16é²å½¢å¼ã¯ï¼(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F)ã ãã³æ¥ç¶ã«ã¯ãã«ã½ã¼ãã³ã¢ã³ï¼CCï¼ã¨ã¢ãã¼ãã³ã¢ã³ï¼CAï¼ã®2ç¨®é¡ããããååãç¤ºãããã«ãCAãã£ã¹ãã¬ã¤ã«ã¯7ã»ã°ã¡ã³ãã®ã¢ãã¼ãããã¹ã¦æ¥ç¶ããã¦ããå ´åãCCãã£ã¹ãã¬ã¤ã«ã¯7ã¤ã®LEDã®ã«ã½ã¼ãããã¹ã¦æ¥ç¶ããã¦ããããã®ã­ããã§ã¯ãåèãä½¿ç¨ããã 7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ï¼ã«ã½ã¼ãã³ã¢ã³ï¼ãã©ã®ããã«çªå·ãè¡¨ç¤ºããããç¥ãããã«ãæ¬¡ã®è¡¨ãä½æãããæ°å­ã¯ã7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«è¡¨ç¤ºãããæ°å­0ãFã§ãããï¼DPï¼GFEDCBAã¯ã0ã¾ãã¯1ã«è¨­å®ãããå¯¾å¿ããLEDãæãããã¨ãã°ã00111111ã¯ãDPã¨Gã0ã«è¨­å®ãããä»ã1ã«è¨­å®ããããã¨ãæå³ããããããã£ã¦ã7ã»ã°ã¡ã³ããã£ã¹ãã¬ã¤ã«ã¯0ãè¡¨ç¤ºãããHEXã³ã¼ãã¯16é²æ°ã«å¯¾å¿ããã MRï¼ãã³10ï¼ãé«ã¬ãã«ã§ãOEï¼ãã³13ï¼ãä½ã¬ãã«ã®å ´åããã¼ã¿ã¯SHcpã®ç«ã¡ä¸ããã¨ãã¸ã§å¥åãããSHcpã®ç«ã¡ä¸ããã¨ãã¸ãä»ãã¦ã¡ã¢ãªã¬ã¸ã¹ã¿ã«å¥åãããã2ã¤ã®ã¯ã­ãã¯ãæ¥ç¶ããã¦ããå ´åãã·ããã¬ã¸ã¹ã¿ã¯å¸¸ã«ã¡ã¢ãªã¬ã¸ã¹ã¿ãã1ãã«ã¹æ©ããªããã¡ã¢ãªã¬ã¸ã¹ã¿ã«ã¯ãã·ãªã¢ã«ã·ããå¥åãã³ï¼Dsï¼ãã·ãªã¢ã«åºåãã³ï¼Qï¼ãéåæãªã»ãããã¿ã³ï¼ä½ã¬ãã«ï¼ããããã¡ã¢ãªã¬ã¸ã¹ã¿ã¯ä¸¦å8ãããã§3ã¤ã®ç¶æã®ãã¹ãåºåãã¾ããOEãæå¹ï¼ä½ã¬ãã«ï¼ã®å ´åãã¡ã¢ãªã¬ã¸ã¹ã¿ã®ãã¼ã¿ããã¹ã«åºåãããã ä»¥ä¸ã®ã³ã¼ãã **å¤æ´/ãªã»ãã/ã³ãã¼/å®è¡/åæ­¢** ã§ãã¾ãã ãã ãããã®åã«ããdavinci-kit-for-raspberry-pi\\pythonãã®ãããªã½ã¼ã¹ã³ã¼ããã¹ã«ç§»åããå¿è¦ãããã¾ãã physical unsigned char SegCode[16] = {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}; 16é²æ°ï¼ã«ã½ã¼ãã³ã¢ã³ï¼ã®0ããFã¾ã§ã®ã»ã°ã¡ã³ãã³ã¼ãéåã wiringPi 