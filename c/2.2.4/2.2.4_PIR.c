/**********************************************************************
* Filename    : 2.2.4_PIR.c
* Description : Light on the LED by PIR.
* Author      : Daisy
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : 2019/08/01
**********************************************************************/
#include <wiringPi.h>
#include <stdio.h>

#define ledPin    1     //the led connect to GPIO1
#define pirPin    0     //the pir connect to GPIO0

int main(void)
{
    if(wiringPiSetup() == -1){ //when initialize wiring failed,print message to screen
        printf("setup wiringPi failed !");
        return 1;
    }
    pinMode(ledPin, OUTPUT);
    pinMode(pirPin, INPUT);
    while(1){
        if(digitalRead(pirPin) == 1){ //if read pir is HIGH level
            digitalWrite(ledPin, HIGH);  
            printf("LED ON! \n");
        }
        else {
           digitalWrite(ledPin, LOW);  
            printf("LED OFF!\n");
        }
    }

    return 0;
}