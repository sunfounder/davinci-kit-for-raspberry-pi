/**********************************************************************
* Filename    : 2.2.2_Thermometer.c
* Description : Read temperature
* Author      : Robot
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : Daisy    2019/08/01
**********************************************************************/
#include <wiringPi.h>
#include <stdio.h>
#include <math.h>

typedef unsigned char uchar;
typedef unsigned int uint;

#define     ADC_CS    0
#define     ADC_CLK   1
#define     ADC_DIO   2

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
	digitalWrite(ADC_DIO,1);	delayMicroseconds(2);
	digitalWrite(ADC_CLK,1);	delayMicroseconds(2);
 	//Single End mode
	digitalWrite(ADC_CLK,0);
	digitalWrite(ADC_DIO,1);    delayMicroseconds(2);
	digitalWrite(ADC_CLK,1);	delayMicroseconds(2);
	// ODD
	digitalWrite(ADC_CLK,0);
	digitalWrite(ADC_DIO,odd);	delayMicroseconds(2);
	digitalWrite(ADC_CLK,1);	delayMicroseconds(2);
	//Select
	digitalWrite(ADC_CLK,0);
	digitalWrite(ADC_DIO,sel);    delayMicroseconds(2);
	digitalWrite(ADC_CLK,1);

	digitalWrite(ADC_DIO,1);    delayMicroseconds(2);
	digitalWrite(ADC_CLK,0);
	digitalWrite(ADC_DIO,1);    delayMicroseconds(2);

	for(i=0;i<8;i++)
	{
		digitalWrite(ADC_CLK,1);	delayMicroseconds(2);
		digitalWrite(ADC_CLK,0);    delayMicroseconds(2);

		pinMode(ADC_DIO, INPUT);
		dat1=dat1<<1 | digitalRead(ADC_DIO);
	}

	for(i=0;i<8;i++)
	{
		dat2 = dat2 | ((uchar)(digitalRead(ADC_DIO))<<i);
		digitalWrite(ADC_CLK,1); 	delayMicroseconds(2);
		digitalWrite(ADC_CLK,0);    delayMicroseconds(2);
	}

	digitalWrite(ADC_CS,1);
	pinMode(ADC_DIO, OUTPUT);
	return(dat1==dat2) ? dat1 : 0;
}

int main(void)
{
	unsigned char analogVal;
    double Vr, Rt, temp, cel, Fah;
	if(wiringPiSetup() == -1){ //when initialize wiring failed,print messageto screen
		printf("setup wiringPi failed !");
		return 1;
	}
	pinMode(ADC_CS,  OUTPUT);
	pinMode(ADC_CLK, OUTPUT);

	while(1){
		analogVal = get_ADC_Result(0);
		Vr = 5 * (double)(analogVal) / 255;
		Rt = 10000 * (double)(Vr) / (5 - (double)(Vr));
		temp = 1 / (((log(Rt/10000)) / 3950)+(1 / (273.15 + 25)));
		cel = temp - 273.15;
		Fah = cel * 1.8 +32;
		printf("Celsius: %.2f C  Fahrenheit: %.2f F\n", cel, Fah);
		delay(100);
	}
	return 0;
}