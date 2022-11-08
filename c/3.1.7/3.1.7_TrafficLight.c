#include <wiringPi.h>
#include <stdio.h>
#include <wiringShift.h>
#include <signal.h>
#include <unistd.h>
#define     SDI     5 
#define     RCLK    4  
#define     SRCLK    1   

const int ledPin[]={6,10,11};  
const int placePin[] = {12, 3, 2, 0};
unsigned char number[] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xf8, 0x80, 0x90};

int greenLight = 30;
int yellowLight = 5;
int redLight = 60;
int colorState = 0;
char *lightColor[]={"Red","Green","Yellow"};
int counter = 60;

void lightup()
{
    for(int i=0;i<3;i++){
        digitalWrite(ledPin[i],HIGH);
    }
    digitalWrite(ledPin[colorState],LOW);    
}

void pickDigit(int digit)
{
    for (int i = 0; i < 4; i++)
    {
        digitalWrite(placePin[i], 0);
    }
    digitalWrite(placePin[digit], 1);
}

void hc595_shift(int8_t data)
{
    int i;
    for (i = 0; i < 8; i++)
    {
        digitalWrite(SDI, 0x80 & (data << i));
        digitalWrite(SRCLK, 1);
        delayMicroseconds(1);
        digitalWrite(SRCLK, 0);
    }
    digitalWrite(RCLK, 1);
    delayMicroseconds(1);
    digitalWrite(RCLK, 0);
}

void clearDisplay()
{
    int i;
    for (i = 0; i < 8; i++)
    {
        digitalWrite(SDI, 1);
        digitalWrite(SRCLK, 1);
        delayMicroseconds(1);
        digitalWrite(SRCLK, 0);
    }
    digitalWrite(RCLK, 1);
    delayMicroseconds(1);
    digitalWrite(RCLK, 0);
}

void display()
{
    int a,b,c;
    
    a = counter % 10000 / 1000 + counter % 1000 / 100;
    b = counter % 10000 / 1000 + counter % 1000 / 100 + counter % 100 / 10;
    c = counter % 10000 / 1000 + counter % 1000 / 100 + counter % 100 / 10 + counter % 10;

    if (counter % 10000 / 1000 == 0){
        clearDisplay();
    }
    else{
        clearDisplay();
        pickDigit(3);
        hc595_shift(number[counter % 10000 / 1000]);
    }
    if (a == 0){
        clearDisplay();
    }
    else{
        clearDisplay();
        pickDigit(2);
        hc595_shift(number[counter % 1000 / 100]);
    }
    if (b == 0){
        clearDisplay();
    }
    else{
        clearDisplay();
        pickDigit(1);
        hc595_shift(number[counter % 100 / 10]);
    }
    if(c == 0){
        clearDisplay();
    }

    else{
        clearDisplay();
        pickDigit(0);
        hc595_shift(number[counter % 10]);
    }
}

void loop()
{
    while(1){
    display();
    lightup(); 
    }
}


void timer(int  timer1){       //Timer function
    if(timer1 == SIGALRM){   
        counter --;         
        alarm(1); 
        if(counter == 0){
            if(colorState == 0) counter = greenLight;
            if(colorState == 1) counter = yellowLight;
            if(colorState == 2) counter = redLight;
            colorState = (colorState+1)%3; 
        }
        printf("counter : %d \t light color: %s \n",counter,lightColor[colorState]);
    }
}

int main(void)
{
    int i;
    if(wiringPiSetup() == -1){ 
        printf("setup wiringPi failed !");
        return 1; 
    }
    pinMode(SDI,OUTPUT);        
    pinMode(RCLK,OUTPUT);
    pinMode(SRCLK,OUTPUT);
    for(i=0;i<4;i++){       
        pinMode(placePin[i],OUTPUT);
        digitalWrite(placePin[i],HIGH);
    }
    for(i=0;i<3;i++){       
        pinMode(ledPin[i],OUTPUT);
        digitalWrite(ledPin[i],HIGH);
    }
    signal(SIGALRM,timer);  
    alarm(1); 
    loop();
    return 0;
}
