#include <stdio.h>
#include <unistd.h>
#include <pthread.h> 
#include <wiringPi.h>
#include <softTone.h>

#define BeepPin 3
#define ALedPin 0 
#define BLedPin 2
#define switchPin 1

int note=150;
int pitch=20;
int flag=0;

void *ledWork(void *arg){       
    while(1)	
    {	
        if(flag==0){
            pthread_exit(NULL);
        }
        digitalWrite(ALedPin,HIGH);
        delay(500);
        digitalWrite(ALedPin,LOW);
        digitalWrite(BLedPin,HIGH);
        delay(500);
        digitalWrite(BLedPin,LOW);
    }
}

void *buzzWork(void *arg){
    while(1)
    {
        if(flag==0){
            pthread_exit(NULL);
        }
        if((note>=800)||(note<=130)){
            pitch = -pitch;
        }
        note=note+pitch;
        softToneWrite(BeepPin,note);
        delay(10);
    }
}

void setup()
{
    if (wiringPiSetup() == -1)
    { 
        printf("setup wiringPi failed !");
        return;
    }
    pinMode(ALedPin, OUTPUT);
    pinMode(BLedPin, OUTPUT);
    pinMode(switchPin,INPUT);
}

void on(){
    flag = 1;
    if(softToneCreate(BeepPin) == -1){
		printf("setup softTone failed !");
		return; 
	}    
    pthread_t tLed;     
    pthread_create(&tLed,NULL,ledWork,NULL);	
    pthread_t tBuzz;  
    pthread_create(&tBuzz,NULL,buzzWork,NULL);   	
}

void off(){
    flag = 0;
    softToneStop(BeepPin);
    digitalWrite(ALedPin,LOW);
    digitalWrite(BLedPin,LOW);
}

int main(){       
    setup(); 
    int lastState = 0;
    while(1){
        int currentState = digitalRead(switchPin);
        if ((currentState == 1)&&(lastState==0)){
            on();
        }
        else if((currentState == 0)&&(lastState==1)){
            off();
        }
        lastState=currentState;
    }
    return 0;
}