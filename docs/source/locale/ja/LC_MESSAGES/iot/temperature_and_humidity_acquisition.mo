Þ                                   0     A  9   Y  R     s   æ     Z  ´   v     +     :  d   H  $   ­     Ò     W    ß  Z  ù     T     p       Q        â  }   u  ;   ó  Ò   /	     
     
  s   =
     ±
     Ê
     P    Ö   Build the circuit. Code Explanation Experimental Procedures Find the line below and fill in the correct device token. Go to Cloud4RPi, add a new Control Panel named project1, and click **Add Widget**. In this project, we use DHT11 to read the surrounding temperature and humidity, and then display them on Cloud4RPi. Instantiate a dht11 object. Once added, you will see the temperature (Room Temp) and humidity (CPU Temp) curves over time, and you can adjust the display window by clicking on the options at the bottom right. Open the code. Run the code. Select a **Chart** widget with both **Room Temp** and **CPU Temp** as the variables to be displayed. Temperature and Humidity Acquisition The humidity (``result[0]``) is obtained by this function, and the function will not be interrupted until the reading is successful. The temperature (``result[1]``) is obtained by this function, and the function will not be interrupted until the reading is successful. The temperature is stored in the ``'bind'`` of the ``'Room Temp'`` key, and the humidity is stored in the ``'bind'`` of the ``'CPU Temp'`` key. When Cloud4RPi receives the ``variables`` dictionary, it will convert it into a JavaScript object that can be recognized by the web page. Project-Id-Version: SunFounder Da Vinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-29 17:00+0800
PO-Revision-Date: 2021-08-04 17:59+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 åè·¯ãæ§ç¯ãã¾ãã ã³ã¼ãã®èª¬æ å®é¨æé  ä»¥ä¸ã®è¡ãè¦ã¤ãã¦ãæ­£ããdevice tokenãå¥åãã¦ãã ããã Cloud4RPiã«ç§»åããproject1ã¨ããååã®æ°ããã³ã³ãã­ã¼ã«ããã«ãè¿½å ãã¦ã**Add Widget** ãã¯ãªãã¯ãã¾ãã ãã®ãã­ã¸ã§ã¯ãã§ã¯ãDHT11ãä½¿ç¨ãã¦å¨å²ã®æ¸©åº¦ã¨æ¹¿åº¦ãèª­ã¿åããCloud4RPiã«è¡¨ç¤ºãã¾ãã dht11ãªãã¸ã§ã¯ããã¤ã³ã¹ã¿ã³ã¹åãã¾ãã è¿½å ããã¨ãæéã®çµéã«ä¼´ãæ¸©åº¦ï¼å®¤æ¸©ï¼ã¨æ¹¿åº¦ï¼CPUæ¸©åº¦ï¼ã®æ²ç·ãè¡¨ç¤ºããã¾ããå³ä¸ã®ãªãã·ã§ã³ãã¯ãªãã¯ãã¦ãè¡¨ç¤ºã¦ã£ã³ãã¦ãèª¿æ´ã§ãã¾ãã ã³ã¼ããéãã¾ãã ã³ã¼ããå®è¡ãã¾ãã è¡¨ç¤ºããå¤æ°ã¨ãã¦ **Room Temp** ã¨ **CPU Temp** ã®ä¸¡æ¹ãå«ã **Chart** widgetãé¸æãã¾ãã æ¸©åº¦ã¨æ¹¿åº¦ã®åå¾ æ¹¿åº¦ï¼``result[0]``ï¼ã¯ãã®é¢æ°ã«ãã£ã¦åå¾ãããèª­ã¿åããæåããã¾ã§é¢æ°ã¯ä¸­æ­ããã¾ããã æ¸©åº¦ï¼``result[1]``ï¼ã¯ãã®é¢æ°ã«ãã£ã¦åå¾ãããèª­ã¿åããæåããã¾ã§é¢æ°ã¯ä¸­æ­ããã¾ããã æ¸©åº¦ã¯ ``'Room Temp'`` ã­ã¼ã® ``'bind'`` ã«ä¿å­ãããæ¹¿åº¦ã¯ ``'CPU Temp'`` ã­ã¼ã® ``'bind'`` ã«ä¿å­ããã¾ã ã Cloud4RPiã¯ã``variables`` è¾æ¸ãåãåãã¨ããããWebãã¼ã¸ã§èªè­ã§ããJavaScriptãªãã¸ã§ã¯ãã«å¤æãã¾ãã 