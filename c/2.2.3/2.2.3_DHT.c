/**********************************************************************
* Filename    : 2.2.3_DHT.c
* Description : print the temperature and humidity detected by DHT11 on the computer screen.
* Author      : sunfounder
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : 2024/11/12
**********************************************************************/

#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define MAXTIMINGS 85  // Maximum number of timing transitions

int dht11_dat[5] = {0, 0, 0, 0, 0};  // Data array to hold sensor values

// Function to read data from DHT11 sensor
void read_dht11_dat(int GPIOPIN)
{
    uint8_t currState;
    uint8_t laststate = HIGH;
    uint8_t counter = 0;
    uint8_t j = 0;
    uint8_t i;
    float f; // Temperature in Fahrenheit

    // Reset data array before each read
    dht11_dat[0] = dht11_dat[1] = dht11_dat[2] = dht11_dat[3] = dht11_dat[4] = 0;

    // Pull pin down for 18 milliseconds to initiate communication
    pinMode(GPIOPIN, OUTPUT);
    digitalWrite(GPIOPIN, LOW);
    delay(18);

    // Then pull it up for 40 microseconds
    digitalWrite(GPIOPIN, HIGH);
    delayMicroseconds(40); 

    // Prepare to read the pin
    pinMode(GPIOPIN, INPUT);

    // Detect change and read data
    for (i = 0; i < MAXTIMINGS; i++) 
    {
        counter = 0;

        // Count how long each state lasts
        while (digitalRead(GPIOPIN) == laststate)
        {
            counter++;
            delayMicroseconds(2);
            if (counter == 255) 
            {
                break;
            }
        }

        // Save the current state
        laststate = digitalRead(GPIOPIN);

        if (counter == 255) break;

        // Ignore first 3 transitions (DHT11 response signal)
        if ((i >= 4) && (i % 2 == 0)) 
        {
            // Shift bits and store data
            dht11_dat[j/8] <<= 1;
            if (counter > 16)
            {
                dht11_dat[j/8] |= 1;
            }
            j++;
        }
    }

    // Check if we received 40 bits (5 bytes) and verify checksum
    if ((j >= 40) && (dht11_dat[4] == ((dht11_dat[0] + dht11_dat[1] + dht11_dat[2] + dht11_dat[3]) & 0xFF)) ) 
    {
        // Convert temperature to Fahrenheit
        f = dht11_dat[2] * 9.0 / 5.0 + 32;
        printf("Humidity = %d.%d %% Temperature = %d.%d °C (%.1f °F)\n",
               dht11_dat[0], dht11_dat[1], dht11_dat[2], dht11_dat[3], f);
    }
    else
    {
        printf("Data not good, skip\n");
    }
}

int main (void)
{
    printf("Raspberry Pi wiringPi DHT11 Temperature test program\n");

    // Initialize wiringPi using BCM GPIO pin numbering
    if (wiringPiSetupGpio() == -1)
    {
        exit(1);
    }

    while(1) 
    {
        // Read data from DHT11 connected to GPIO pin 17
        read_dht11_dat(17);
        delay(1000); // Wait 1 second before next read
    }

    return 0;
}

