/**********************************************************************
* Filename    : 2.2.3_DHT.c
* Description : print the temperature and humidity detected by DHT11 on the computer screen.
* Author      : sunfounder
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : 2019/08/05
**********************************************************************/

#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define maxTim 85

#define dhtPin 0

int dht11_dat[5] = {0,0,0,0,0};

void readDht11()
{
	uint8_t laststate = HIGH;
	uint8_t counter = 0;
	uint8_t j = 0, i;
	float Fah; // fahrenheit

	dht11_dat[0] = dht11_dat[1] = dht11_dat[2] = dht11_dat[3] = dht11_dat[4] = 0;

	// pull pin down for 18 milliseconds
	pinMode(dhtPin, OUTPUT);
	digitalWrite(dhtPin, LOW);
	delay(18);
	// then pull it up for 40 microseconds
	digitalWrite(dhtPin, HIGH);
	delayMicroseconds(40); 
	// prepare to read the pin
	pinMode(dhtPin, INPUT);

	// detect change and read data
	for ( i=0; i< maxTim; i++) {
		counter = 0;
		while (digitalRead(dhtPin) == laststate) {
			counter++;
			delayMicroseconds(1);
			if (counter == 255) {
				break;
			}
		}
		laststate = digitalRead(dhtPin);

		if (counter == 255) break;

		// ignore first 3 transitions
		if ((i >= 4) && (i%2 == 0)) {
			// shove each bit into the storage bytes
			dht11_dat[j/8] <<= 1;
			if (counter > 50)
				dht11_dat[j/8] |= 1;
			j++;
		}
	}

	// check we read 40 bits (8bit x 5 ) + verify checksum in the last byte
	// print it out if data is good
	if ((j >= 40) && 
			(dht11_dat[4] == ((dht11_dat[0] + dht11_dat[1] + dht11_dat[2] + dht11_dat[3]) & 0xFF)) ) {
		Fah = dht11_dat[2] * 9. / 5. + 32;
		printf("Humidity = %d.%d %% Temperature = %d.%d *C (%.1f *F)\n", 
				dht11_dat[0], dht11_dat[1], dht11_dat[2], dht11_dat[3], Fah);
	}
	 //else
	 //	{
	 //	printf("Data not good, skip\n");
	 //	}
}

int main (void)
{

	if(wiringPiSetup() == -1){ //when initialize wiring failed, print messageto screen
		printf("setup wiringPi failed !");
		return 1; 
	}

	while (1) 
	{
		readDht11();
		delay(500); // wait 1sec to refresh
	}

	return 0 ;
}
