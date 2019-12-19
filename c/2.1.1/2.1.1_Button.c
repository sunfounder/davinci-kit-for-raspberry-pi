/**********************************************************************
* Filename    : 2.1.1_Button.c
* Description : Controlling an led with button.
* Author      : sunfounder
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : 2019/08/05
**********************************************************************/
#include <wiringPi.h>
#include <stdio.h>

#define LedPin		0
#define ButtonPin 	1

int main(void){
	// When initialize wiring failed, print message to screen
	if(wiringPiSetup() == -1){
		printf("setup wiringPi failed !");
		return 1; 
	}
	
	pinMode(LedPin, OUTPUT); 
	pinMode(ButtonPin, INPUT);
	digitalWrite(LedPin, HIGH);
	
	while(1){
		// Indicate that button has pressed down
		if(digitalRead(ButtonPin) == 0){
			// Led on
			digitalWrite(LedPin, LOW);
		//	printf("...LED on\n");
		}
		else{
			// Led off
			digitalWrite(LedPin, HIGH);
		//	printf("LED off...\n");
		}
	}
	return 0;
}

