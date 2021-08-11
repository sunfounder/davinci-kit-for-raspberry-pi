Þ    
      l               ¼      ½   
   Ï   
   Ú   U   å      ;    M     S    è  s   ö  Z  j  
   Å     Ð  
   á  r   ì  2   _      Ð   ©  5  z     °	   **How it works?** **Sketch** **Wiring** For more please refer to `Processing Reference <https://processing.org/reference/>`_. Inflating the Dot Next, let's build a circuit that allows the button to control the size of the dot. When we press the button, the dot will quickly get bigger; when we release the button, the dot will gradually get smaller, which makes the dot look like a balloon being inflated. The ``GPIO.pinMode()`` function is used to set ``buttonPin`` to pull-up input mode, which makes the pin get high automatically in the default state. Then use the ``GPIO.digitalRead()`` function to read the value of ``buttonPin``. When the value is LOW, it means the button is pressed, at which point let the diameter of the dot increase by 5; if the button is released, then the diameter of the dot will decrease by 1. This project uses the input function compared to the previous 2 projects that used the output function of the GPIO. Project-Id-Version: SunFounder Da Vinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-07-29 17:00+0800
PO-Revision-Date: 2021-07-30 18:23+0800
Last-Translator: 
Language: ja
Language-Team: 
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **åç** **ã¹ã±ãã** **åè·¯** è©³ç´°ã«ã¤ãã¦ã¯ã`Processing Reference <https://processing.org/reference/>`_ ãåç§ãã¦ãã ããã Inflating the Dotï¼ããããè¨ãã¾ããï¼ æ¬¡ã«ããã¿ã³ã§ãããã®ãµã¤ãºãå¶å¾¡ã§ããåè·¯ãä½æãã¾ãããã ãã¿ã³ãæ¼ãã¨ãããããããã«å¤§ãããªãã¾ãã ãã¿ã³ãé¢ãã¨ãããããå¾ãã«å°ãããªããé¢¨è¹ãè¨ããã§ããããã«è¦ãã¾ãã ``GPIO.pinMode()`` é¢æ°ã¯ã``buttonPin`` ããã«ã¢ããå¥åã¢ã¼ãã«è¨­å®ããããã«ä½¿ç¨ããã¾ããããã«ããããã³ã¯ããã©ã«ãç¶æã§èªåçã«HIGHã«ãªãã¾ãã æ¬¡ã«ã``GPIO.digitalRead()`` é¢æ°ãä½¿ç¨ãã¦ ``buttonPin`` ã®å¤ãèª­ã¿åãã¾ãã å¤ãLOWã®å ´åããã¿ã³ãæ¼ããã¦ãããã¨ãæå³ãã¾ãããã®æç¹ã§ããããã®ç´å¾ã5å¢å ãã¾ãã ãã¿ã³ãé¢ãã¨ããããã®ç´å¾ã1ã¤å°ãããªãã¾ãã ãã®ãã­ã¸ã§ã¯ãã¯ãGPIOã®åºåæ©è½ãä½¿ç¨ãã¦ããåã®2ã¤ã®ãã­ã¸ã§ã¯ãã¨æ¯è¼ãã¦ãå¥åæ©è½ãä½¿ç¨ãã¦ãã¾ãã 