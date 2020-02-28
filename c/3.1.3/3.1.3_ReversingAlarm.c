/**********************************************************************
* Filename    : 3.1.1_ReversingAlarm.c
* Description : 
* Author      : Robot
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : Jimmy  2019/08/06 
**********************************************************************/
#include <wiringPi.h>
#include <stdio.h>
#include <sys/time.h>
#include <wiringPi.h>
#include <wiringPiI2C.h>
#include <string.h>

#define Trig    4
#define Echo    5
#define Buzzer	0 

int LCDAddr = 0x27;
int BLEN = 1;
int fd;

//here is the function of LCD
void write_word(int data){
	int temp = data;
	if ( BLEN == 1 )
		temp |= 0x08;
	else
		temp &= 0xF7;
	wiringPiI2CWrite(fd, temp);
}

void send_command(int comm){
	int buf;
	// Send bit7-4 firstly
	buf = comm & 0xF0;
	buf |= 0x04;			// RS = 0, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);

	// Send bit3-0 secondly
	buf = (comm & 0x0F) << 4;
	buf |= 0x04;			// RS = 0, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);
}

void send_data(int data){
	int buf;
	// Send bit7-4 firstly
	buf = data & 0xF0;
	buf |= 0x05;			// RS = 1, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);

	// Send bit3-0 secondly
	buf = (data & 0x0F) << 4;
	buf |= 0x05;			// RS = 1, RW = 0, EN = 1
	write_word(buf);
	delay(2);
	buf &= 0xFB;			// Make EN = 0
	write_word(buf);
}

void lcdInit(){
	send_command(0x33);	// Must initialize to 8-line mode at first
	delay(5);
	send_command(0x32);	// Then initialize to 4-line mode
	delay(5);
	send_command(0x28);	// 2 Lines & 5*7 dots
	delay(5);
	send_command(0x0C);	// Enable display without cursor
	delay(5);
	send_command(0x01);	// Clear Screen
	wiringPiI2CWrite(fd, 0x08);
}

void clear(){
	send_command(0x01);	//clear Screen
}

void write(int x, int y, char data[]){
	int addr, i;
	int tmp;
	if (x < 0)  x = 0;
	if (x > 15) x = 15;
	if (y < 0)  y = 0;
	if (y > 1)  y = 1;

	// Move cursor
	addr = 0x80 + 0x40 * y + x;
	send_command(addr);
	
	tmp = strlen(data);
	for (i = 0; i < tmp; i++){
		send_data(data[i]);
	}
}

//here is the function of Ultrasonic
void ultraInit(void)
{
	pinMode(Echo, INPUT);
	pinMode(Trig, OUTPUT);
}

float disMeasure(void)
{
	struct timeval tv1;
	struct timeval tv2;
	long time1, time2;
    float dis;

	digitalWrite(Trig, LOW);
	delayMicroseconds(2);

	digitalWrite(Trig, HIGH);
	delayMicroseconds(10);     
	digitalWrite(Trig, LOW);
								
	while(!(digitalRead(Echo) == 1));	
	gettimeofday(&tv1, NULL);           

	while(!(digitalRead(Echo) == 0));   
	gettimeofday(&tv2, NULL);           

	time1 = tv1.tv_sec * 1000000 + tv1.tv_usec;   
	time2  = tv2.tv_sec * 1000000 + tv2.tv_usec;

	dis = (float)(time2 - time1) / 1000000 * 34000 / 2; 

	return dis;
}

//here is the main function
int main(void)
{
	float dis;
	char result[10];
	if(wiringPiSetup() == -1){ //when initialize wiring failed,print message to screen
		printf("setup wiringPi failed !");
		return 1; 
	}

	pinMode(Buzzer,OUTPUT);
	fd = wiringPiI2CSetup(LCDAddr);
	lcdInit();
	ultraInit();
	clear();
	write(0, 0, "Ultrasonic Starting");	
	write(1, 1, "By Sunfounder");	
	while(1){
		dis = disMeasure();
		printf("%.2f cm \n",dis);
		digitalWrite(Buzzer,LOW);
		if (dis > 400){
			clear();
			write(0, 0, "Error");
			write(3, 1, "Out of range");	
			delay(500);
		}
		else
		{
			clear();
			write(0, 0, "Distance is");
			sprintf(result,"%.2f cm",dis);
			write(5, 1, result);
			if(dis>=50)
			{delay(500);}
			else if(dis<50 & dis>20) {
				for(int i=0;i<2;i++){
				digitalWrite(Buzzer,HIGH);
				delay(50);
				digitalWrite(Buzzer,LOW);
				delay(200);
				}
			}
			else if(dis<=20){
				for(int i=0;i<5;i++){
				digitalWrite(Buzzer,HIGH);
				delay(50);
				digitalWrite(Buzzer,LOW);
				delay(50);
				}
			}
		}	
	}

	return 0;
}