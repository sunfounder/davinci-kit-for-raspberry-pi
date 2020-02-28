#include <stdio.h>
#include <string.h>
#include <wiringPi.h>
#include <signal.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>

#define SDI     0   //serial data input
#define RCLK    1   //memory clock input(STCP)
#define SRCLK   2 
#define AButtonPin  28  
#define BButtonPin  25

char *waypoint="empty";
char *stage="null";


struct GLYPH{
    char *word;
    unsigned char code[8];
};

struct GLYPH arrow[2]=
{
    {"right",{0xFF,0xEF,0xDF,0x81,0xDF,0xEF,0xFF,0xFF}},
    // {"down",{0xFF,0xEF,0xC7,0xAB,0xEF,0xEF,0xEF,0xFF}},
    // {"up",{0xFF,0xEF,0xEF,0xEF,0xAB,0xC7,0xEF,0xFF}},    
    {"left",{0xFF,0xF7,0xFB,0x81,0xFB,0xF7,0xFF,0xFF}}
};

struct GLYPH check[2]=
{
    {"wrong",{0xFF,0xBB,0xD7,0xEF,0xD7,0xBB,0xFF,0xFF}},
    {"right",{0xFF,0xFF,0xF7,0xEB,0xDF,0xBF,0xFF,0xFF}}
};

char *lookup(char *key,struct GLYPH *glyph,int length){
    for (int i=0;i<length;i++)
    {
        if(strcmp(glyph[i].word,key)==0){
            return glyph[i].code;
        }
    }    
}

void setup(void){
    if(wiringPiSetup() == -1){ //when initialize wiring failed, print message to screen
		printf("setup wiringPi failed !");
		return; 
	}
	pinMode(SDI, OUTPUT); 
	pinMode(RCLK, OUTPUT); 
	pinMode(SRCLK, OUTPUT); 

	digitalWrite(SDI, 0);
	digitalWrite(RCLK, 0);
	digitalWrite(SRCLK, 0);
    pinMode(AButtonPin,INPUT);
    pinMode(BButtonPin,INPUT);
}

void hc595_in(unsigned char dat){
	for(int i=0;i<8;i++){
		digitalWrite(SDI, 0x80 & (dat << i));
		digitalWrite(SRCLK, 1);
		digitalWrite(SRCLK, 0);
	}
}

void hc595_out(){
	digitalWrite(RCLK, 1);
	digitalWrite(RCLK, 0);
}

void display(char *glyphCode){
    for(int i;i<8;i++){
        hc595_in(glyphCode[i]);
        hc595_in(0x80>>i);
        hc595_out();
    }
}

void createGlyph(){
    srand(time(NULL));
    int i=rand()%(sizeof(arrow)/sizeof(arrow[0]));
    waypoint=arrow[i].word;
    stage="PLAY";
    alarm(2);
}

void checkPoint(char *inputKey){
    alarm(0)==0;
    if(inputKey==waypoint||inputKey=="empty")
    {
        waypoint="wrong";
    }
    else{
        waypoint="right";
    }
    stage="CHECK";
    alarm(1);
}

void getKey(){
    if (digitalRead(AButtonPin)==1&&digitalRead(BButtonPin)==0)
    {checkPoint("right");}
    else if (digitalRead(AButtonPin)==0&&digitalRead(BButtonPin)==1)
    {checkPoint("left");}
}

void timer(){
    if (stage=="PLAY"){
        checkPoint("empty");
    }
    else if(stage=="CHECK"){
        createGlyph();
    }
}

void main(){
    setup();
    signal(SIGALRM,timer);
    createGlyph();
    char *code = NULL;
    while(1){
        if (stage == "PLAY")
        {
            code=lookup(waypoint,arrow,sizeof(arrow)/sizeof(arrow[0]));
            display(code);
            getKey();
        }
        else if(stage == "CHECK")
        {
            code = lookup(waypoint,check,sizeof(check)/sizeof(check[0]));
            display(code);
        }
    }
}