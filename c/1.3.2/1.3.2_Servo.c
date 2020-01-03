/**********************************************************************
* Filename    : 1.3.2_Servo.c
* Description : Servo sweep
* Author      : sunfounder
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : 2020/01/03
**********************************************************************/
#include <wiringPi.h>
#include <softPwm.h>
#include <stdio.h>

#define ServoPin    1       //define the servo to GPIO1
long Map(long value,long fromLow,long fromHigh,long toLow,long toHigh){
    return (toHigh-toLow)*(value-fromLow) / (fromHigh-fromLow) + toLow;
}
void setAngle(int pin, int angle){    //Create a funtion to control the angle of the servo.
    if(angle < 0)
        angle = 0;
    if(angle > 180)
        angle = 180;
    softPwmWrite(pin,Map(angle, 0, 180, 5, 25));   
} 

int main(void)
{
    int i;
	  
    if(wiringPiSetup() == -1){ //when initialize wiring failed,print message to screen
        printf("setup wiringPi failed !");
        return 1; 
    }
    softPwmCreate(ServoPin, 0, 200);       //initialize PMW pin of servo
    while(1){
        for(i=0;i<181;i++){     // Let servo rotate from 0 to 180.
            setAngle(ServoPin,i);
            delay(2);
        }
        delay(1000);
        for(i=181;i>-1;i--){        // Let servo rotate from 180 to 0.
            setAngle(ServoPin,i);
            delay(2);
        }
        delay(1000);
    }
    return 0;
}

