Show Number
=============================================


import processing.io.*;

int SDI=5;   //serial data input
int RCLK=6;  //memory clock input(STCP)
int SRCLK =13;   //shift register clock input(SHCP)


int[] SegCode= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71};

void hc595_shift(int dat){
  int i;

  for(i=0;i<8;i++){
    int n=(0x80 & (dat << i)); 
    if ( n==0){
      GPIO.digitalWrite(SDI, 0);
    } else {
      GPIO.digitalWrite(SDI, 1);
    }
    GPIO.digitalWrite(SRCLK, 1);
    delay(1);
    GPIO.digitalWrite(SRCLK, 0);
  }

    GPIO.digitalWrite(RCLK, 1);
    delay(1);
    GPIO.digitalWrite(RCLK, 0);
}

void setup() {
    size(400, 200);
    frameRate(10);
    
    GPIO.pinMode(SDI, GPIO.OUTPUT); 
    GPIO.pinMode(RCLK, GPIO.OUTPUT); 
    GPIO.pinMode(SRCLK, GPIO.OUTPUT); 
  
    GPIO.digitalWrite(SDI, 0);
    GPIO.digitalWrite(RCLK, 0);
    GPIO.digitalWrite(SRCLK, 0);
    
    fill(0,25,88);
    textAlign(CENTER,CENTER);
    textSize(height*0.8);
}

void draw() {

    background(255);
    int number = (frameCount%100)/10;
    text(number, width/2, height/2);
    hc595_shift(SegCode[number]);
}