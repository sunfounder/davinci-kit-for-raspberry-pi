#include <wiringPi.h>
#include <stdio.h>
#include <softTone.h>
#include <softPwm.h>

#define  CL1  131
#define  CL2  147
#define  CL3  165
#define  CL4  175
#define  CL5  196
#define  CL6  221
#define  CL7  248

#define  CM1  262
#define  CM2  294
#define  CM3  330
#define  CM4  350
#define  CM5  393
#define  CM6  441
#define  CM7  495

#define  CH1  525
#define  CH2  589
#define  CH3  661
#define  CH4  700
#define  CH5  786
#define  CH6  882
#define  CH7  990

#define ledPin  1  	//define the ledPin
#define pirPin  0	//define the PIR_SensorPin
#define BuzPin  2   //define the buzzerPin
#define servoPin 3  //define the servoPin

int song[] = {CH5,CH2,CM6,CH2,CH3,CH6,0,CH3,CH5,CH3,CM6,CH2,0};

int beat[] = {1,1,1,1,1,1,2,1,1,1,1,1,3};


long map(long value,long fromLow,long fromHigh,long toLow,long toHigh){
    return (toHigh-toLow)*(value-fromLow) / (fromHigh-fromLow) + toLow;
}
void setAngle(int pin, int angle){    //Specif a certain rotation angle (0-180) for the servo
    if(angle < 0)
        angle = 0;
    if(angle > 180)
        angle = 180;
    softPwmWrite(pin,map(angle,0,180,5,25));   
} 

void doorbell(){
    for(int i=0;i<sizeof(song)/4;i++){
		softToneWrite(BuzPin, song[i]);	
		delay(beat[i] * 250);
	}
}

void closedoor(){
    digitalWrite(ledPin, LOW);   //led off
    for(int i=180;i>-1;i--){  //make servo rotate from maximum angle to minimum angle
        setAngle(servoPin,i);
        delay(1);
    }
}

void opendoor(){
    digitalWrite(ledPin, HIGH);   //led on
    for(int i=0;i<181;i++){  //make servo rotate from minimum angle to maximum angle
        setAngle(servoPin,i);
        delay(1);
    } 
    doorbell();
    closedoor();
}

int main(void)
{
	if(wiringPiSetup() == -1){ //when initialize wiring failed,print message to screen
		printf("setup wiringPi failed !");
		return 1; 
	}
	if(softToneCreate(BuzPin) == -1){
		printf("setup softTone failed !");
		return 1; 
	}

	pinMode(ledPin, OUTPUT); 
	pinMode(pirPin, INPUT); 
    softPwmCreate(servoPin,  0, 200); 

	while(1){
		if(digitalRead(pirPin) == HIGH){ //if read sensor for high level
			opendoor();
		}
	}

	return 0;
}

