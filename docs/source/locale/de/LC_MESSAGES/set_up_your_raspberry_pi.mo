��    4      �              \      ]     ~     �     �     �  
   �  
   �  
     
     
        $     4     B  
   U     `     s       �   �     >  �   O  y   �     Y  E   i     �  L   �  Q        a     w  l   �  �   �  �   �  M   C	  �   �	  e   -
  n   �
  =        @  z   P  �   �     �  �   �     j  �   �  n        �  t   �      K      �   l  �     �   �  6  9  %   p  $   �  &   �     �     �          (     6     D     R     `     p     ~  	   �     �     �     �  �   �     �  �   �  �   `       9   *     d  d   |  `   �      B     c  �   �  �     �   �  R   �  �   �  �   �     0  I   �     �  �     �   �  &   q  �   �  "   o  �   �  v   ?   #   �   �   �   K  d!  ]   �"  �   #  �   �#  �   $   **1.  Checking via the router** **2. Network Segment Scanning** **For Linux or/Mac OS X Users** **For Windows Users** **Required Components** **Step 1** **Step 2** **Step 3** **Step 4** **Step 5** 1 \* HDMI cable 1 \* Keyboard 1 \* Micro SD card 1 \* Mouse 1 \* Power Adapter 1 \* Screen 1 \* Screen Power Adapter After the Raspberry Pi is connected to WIFI, we need to get the IP address of it. There are many ways to know the IP address, and two of them are listed as follows. Any Raspberry Pi Click **Open**. Note that when you first log in to the Raspberry Pi with the IP address, there prompts a security reminder. Just click **Yes**. Connect the screen to Raspberry Pi’s HDMI port and make sure your screen is plugged into a wall socket and switched on. Download PuTTY. For details on how to do this, please refer to :ref:`Remote Desktop`. Get the IP Address Go to **Applications**->\ **Utilities**, find the **Terminal**, and open it. Here, we get the Raspberry Pi connected and it is time to conduct the next steps. If You Have No Screen If You Have a Screen If inactive appears next to PuTTY, it means that the connection has been broken and needs to be reconnected. If you are not satisfied with using the command window to control the Raspberry Pi, you can also use the remote desktop function, which can help us manage the files in the Raspberry Pi easily. If you don’t have a display, you can log in to the Raspberry Pi remotely, but before that, you need to get the IP of the Raspberry Pi. If you have a screen, it will be easy for you to operate on the Raspberry Pi. If you have permission to log in the router(such as a home network), you can check the addresses assigned to Raspberry Pi on the admin interface of router. If you use a Raspberry Pi 4, you need to connect the screen to the HDMI0 (nearest the power in port). If you're a Windows user, you can use SSH with the application of some software. Here, we recommend **PuTTY**. Input the passcode and the default password is **raspberry**. Input”yes”. Insert the SD card you’ve set up with Raspberry Pi OS into the micro SD card slot on the underside of your Raspberry Pi. Open PuTTY and click **Session** on the left tree-alike structure. Enter the IP address of the RPi in the text box under **Host Name (or IP address)** and **22** under **Port** (by default it is 22). Plug in the Mouse and Keyboard. Scan the IP range set, and the name of all connected devices will be displayed. Similarly, the default hostname of the Raspberry Pi OS is **raspberrypi**, if you haven't modified it. Set up Your Raspberry Pi The default hostname of the Raspberry Pi OS is **raspberrypi**, and you need to find it. (If you are using ArchLinuxARM system, please find alarmpi.) Type in **ssh pi@ip_address** . “pi”is your username and “ip_address” is your IP address. For example: Use the SSH Remote Control Use the power adapter to power the Raspberry Pi. After a few seconds, the Raspberry Pi OS desktop will be displayed. We can open the Bash Shell of Raspberry Pi by applying SSH. Bash is the standard default shell of Linux. The Shell itself is a program written in C that is the bridge linking the customers and Unix/Linux. Moreover, it can help to complete most of the work needed. We now get the Raspberry Pi connected and are ready to go to the next step. When the PuTTY window prompts \"**login as:**\", type in \"**pi**\" (the user name of the RPi), and password: \"**raspberry**\" (the default one, if you haven't changed it). When you input the password, the characters do not display on window accordingly, which is normal. What you need is to input the correct password. You can also use network scanning to look up the IP address of Raspberry Pi. You can apply the software, **Advanced IP scanner** and so on. Project-Id-Version: SunFounder Davinci Kit
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-08-06 15:39+0800
PO-Revision-Date: 2021-06-01 11:30+0800
Last-Translator: 
Language: pi
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 **1. Überprüfung über den Router** **2. Scannen von Netzwerksegmenten** **Für Linux- oder Mac OS X-Benutzer** **Für Windows-Benutzer** **Erforderliche Komponenten** **Schritt 1** **Schritt 2** **Schritt 3** **Schritt 4** **Schritt 5** 1 \* HDMI Kabel 1 \* Tastatur 1 \* Micro SD Karte 1 \* Maus 1 \* Netzteil 1 \* Bildschirm 1 \* Bildschirm Netzteil Nachdem der Raspberry Pi mit WIFI verbunden ist, müssen wir die IP-Adresse davon erhalten. Es gibt viele Möglichkeiten, die IP-Adresse zu ermitteln, und zwei davon sind wie folgt aufgeführt. Jeglicher Raspberry -Pi Klicken Sie auf **Öffnen**. Beachten Sie bitte, beim ersten Anmelden am Raspberry Pi mit der IP-Adresse eine Sicherheitserinnerung wird anzeigen. Klicken Sie einfach auf **Ja**. Schließen Sie den Bildschirm an den HDMI-Anschluss von Raspberry Pi an und stellen Sie sicher, dass Ihr Bildschirm an eine Wand Steckdose angeschlossen und eingeschaltet ist. Laden Sie PuTTY herunter. Einzelheiten dazu finden Sie unter :ref:`Remote Desktop`. Die IP-Adresse bekommen Gehen Sie zu **Anwendungen**->\ **Dienstprogramme**, suchen Sie das **Terminal** und öffnen Sie es. Hier wird der Raspberry Pi angeschlossen und es ist Zeit, die nächsten Schritte durchzuführen. Wenn Sie keinen Bildschirm haben Wenn Sie einen Bildschirm haben Wenn neben PuTTY inaktiv angezeigt wird, bedeutet dies, dass die Verbindung unterbrochen wurde und erneut verbunden werden muss. Wenn Sie mit der Verwendung des Befehlsfensters zur Steuerung des Raspberry Pi nicht zufrieden sind, können Sie auch die Remote-Desktop-Funktion verwenden, die uns helfen kann, die Dateien im Raspberry Pi einfach zu verwalten. Wenn Sie keine Anzeige haben, können Sie sich aus der Ferne beim Raspberry Pi anmelden. Zuvor müssen Sie jedoch die IP-Addresse des Raspberry Pi abrufen. Wenn Sie einen Bildschirm haben, können Sie den Raspberry Pi problemlos bedienen. Wenn Sie berechtigt sind, sich beim Router anzumelden (z. B. in einem Heimnetzwerk), können Sie die Raspberry Pi zugewiesenen Adressen auf der Administrationsoberfläche des Routers überprüfen. Hinweis: Wenn Sie einen Raspberry Pi 4 verwenden, müssen Sie den Bildschirm an den HDMI0 anschließen (der dem Stromanschluss am nächsten liegt). Wenn Sie ein Windows-Benutzer sind, können Sie SSH mit der Anwendung einiger Software verwenden. Hier empfehlen wir **PuTTY**. Geben Sie den Password ein und das Default Passwort lautet **raspberry**. Geben Sie "Ja" ein. Legen Sie die mit Raspberry Pi OS eingerichtete SD-Karte in den Micro-SD-Kartensteckplatz an der Unterseite Ihres Raspberry Pi ein. Öffnen Sie PuTTY und klicken Sie auf **Sitzung** in der linken baumähnlichen Struktur. Geben Sie die IP-Adresse des RPi in das Textfeld unter **Hostname (oder IP-Adresse)** und **22** unter **Port** ein (Default ist 22). Stecken Sie die Maus und Tastatur ein. Scannen Sie den eingestellten IP-Bereich, und alle angeschlossenen Gerätsnamen wird angezeigt. Ebenso, der Default Hostname des Raspberry Pi-Betriebssystems ist **raspberrypi**, wenn Sie ihn nicht geändert haben. Richten Sie Ihren Raspberry Pi ein Der Default Hostname des Raspberry Pi-Betriebssystems ist **raspberrypi**, und bitte Sie ihn finden. (Wenn Sie das ArchLinuxARM-System verwenden, suchen Sie bitte alarmpi.) Geben Sie **ssh pi @ ip_address** ein. “Pi” ist Ihr Benutzername und “ip_address” ist Ihre IP-Adresse. Z. B. : Verwenden Sie die SSH-Fernbedienung Verwenden Sie das Netzteil und versorgen den Raspberry Pi mit Strom. Nach einigen Sekunden wird der Raspberry Pi OS-Bildschirm angezeigt. Wir können die Bash Shell von Raspberry Pi öffnen, mit Anwendung von SSH. Bash ist die Default Standard Shell von Linux. Die Shell selbst ist ein in C geschriebenes Programm und stellt die Brücke zwischen den Kunden und Unix / Linux dar. Darüber hinaus kann es helfen, den größten Teil der erforderlichen Arbeit zu erledigen. Wir verbinden jetzt den Raspberry Pi und sind bereit, mit dem nächsten Schritt fortzufahren. Wenn das PuTTY-Fenster \"**login as:**\" auffordert, geben Sie \"**pi**\" (den Benutzernamen des RPi) und das Passwort ein: \"**Himbeere**\" (die Standardeinstellung, wenn Sie sie nicht geändert haben). Wenn Sie das Kennwort eingeben, werden die Zeichen im Fenster nicht entsprechend angezeigt, was normal ist. Sie brauchen lediglich das richtige Passwort einzugeben. Sie können auch Netzwerk Scannen verwenden, um die IP-Adresse von Raspberry Pi zu ermitteln. Sie können die Software anwenden, den **erweiterten IP-Scanner** usw. 