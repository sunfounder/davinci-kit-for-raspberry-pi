#include <wiringPi.h>
#include <stdio.h>
#include <wiringPiI2C.h>
#include <string.h>
#include <math.h>

typedef unsigned char uchar;
typedef unsigned int uint;

#define     ADC_CS    0
#define     ADC_CLK   1
#define     ADC_DIO   2
#define     Joy_BtnPin    3
#define     buzzPin  4
#define     LedPin	  5

int LCDAddr = 0x27;
int BLEN = 1;
int fd;
int upperTem = 40;

uchar get_ADC_Result(uint channel)
{
    uchar i;
    uchar dat1=0, dat2=0;
    int sel = channel > 1 & 1;
    int odd = channel & 1;

    pinMode(ADC_DIO, OUTPUT);
    digitalWrite(ADC_CS, 0);
    // Start bit
    digitalWrite(ADC_CLK,0);
    digitalWrite(ADC_DIO,1);    delayMicroseconds(2);
    digitalWrite(ADC_CLK,1);    delayMicroseconds(2);
   //Single End mode
    digitalWrite(ADC_CLK,0);
    digitalWrite(ADC_DIO,1);    delayMicroseconds(2);
    digitalWrite(ADC_CLK,1);    delayMicroseconds(2);
    // ODD
    digitalWrite(ADC_CLK,0);
    digitalWrite(ADC_DIO,odd);  delayMicroseconds(2);
    digitalWrite(ADC_CLK,1);    delayMicroseconds(2);
    //Select
    digitalWrite(ADC_CLK,0);
    digitalWrite(ADC_DIO,sel);    delayMicroseconds(2);
    digitalWrite(ADC_CLK,1);

    digitalWrite(ADC_DIO,1);    delayMicroseconds(2);
    digitalWrite(ADC_CLK,0);
    digitalWrite(ADC_DIO,1);    delayMicroseconds(2);

    for(i=0;i<8;i++)
    {
        digitalWrite(ADC_CLK,1);    delayMicroseconds(2);
        digitalWrite(ADC_CLK,0);    delayMicroseconds(2);

        pinMode(ADC_DIO, INPUT);
        dat1=dat1<<1 | digitalRead(ADC_DIO);
    }

    for(i=0;i<8;i++)
    {
        dat2 = dat2 | ((uchar)(digitalRead(ADC_DIO))<<i);
        digitalWrite(ADC_CLK,1);    delayMicroseconds(2);
        digitalWrite(ADC_CLK,0);    delayMicroseconds(2);
    }

    digitalWrite(ADC_CS,1);
    pinMode(ADC_DIO, OUTPUT);
    return(dat1==dat2) ? dat1 : 0;
}

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

void lcd_init(){
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

void lcd_clear(){
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

int get_joystick_value(){
	uchar x_val;
    uchar y_val;
    x_val = get_ADC_Result(1);
    y_val = get_ADC_Result(2);
	if (x_val > 200){
		return 1;
	}
	else if(x_val < 50){
		return -1;
	}
	else if(y_val > 200){
		return -10;
	}
	else if(y_val < 50){
		return 10;
	}
    else{
		return 0;
	}
}

void upper_tem_setting(){
	write(0, 0, "Upper Adjust:");
	int change = get_joystick_value();
	upperTem = upperTem + change;
	char str[6];
	snprintf(str,sizeof(str),"%d",upperTem);
	write(0,1,str);
	int len;
	len = strlen(str);
	write(len,1,"             ");
	delay(100);
}

double temperature(){
	unsigned char temp_value;
	double Vr, Rt, temp, cel, Fah;
	temp_value = get_ADC_Result(0);
	Vr = 5 * (double)(temp_value) / 255;
	Rt = 10000 * (double)(Vr) / (5 - (double)(Vr));
	temp = 1 / (((log(Rt/10000)) / 3950)+(1 / (273.15 + 25)));
	cel = temp - 273.15;
	Fah = cel * 1.8 +32;
	return cel;
}

void monitoring_temp(){
	char str[6];
	double cel = temperature();
	snprintf(str,6,"%.2f",cel);
	write(0, 0, "Temp: ");
	write(6, 0, str);
	snprintf(str,3,"%d",upperTem);
	write(0, 1, "Upper: ");
	write(7, 1, str);
	delay(100);
	if(cel >= upperTem){
		digitalWrite(buzzPin, HIGH);
		digitalWrite(LedPin, HIGH);
	}
	else if(cel < upperTem){
		digitalWrite(buzzPin, LOW);
		digitalWrite(LedPin, LOW);
	}
}

void setup(){
	fd = wiringPiI2CSetup(LCDAddr);
	lcd_init();	
    if(wiringPiSetup() == -1){ //when initialize wiring failed,print messageto screen
        printf("setup wiringPi failed !");
        return;
    }
    pinMode(Joy_BtnPin,  INPUT);
    pullUpDnControl(Joy_BtnPin, PUD_UP);
    pinMode(ADC_CS,  OUTPUT);
    pinMode(ADC_CLK, OUTPUT);
	pinMode(buzzPin, OUTPUT);
	pinMode(LedPin,OUTPUT);
}

int main(void)
{
	setup();
	int lastState =1;
	int stage=0;
	while (1)
	{
		int currentState = digitalRead(Joy_BtnPin);
		if(currentState==1 && lastState == 0){
			stage=(stage+1)%2;
			delay(100);
			lcd_clear();
		}
		lastState=currentState;
		if (stage==1){
			upper_tem_setting();
		}
		else{
			monitoring_temp();
		}
	}
    return 0;
}