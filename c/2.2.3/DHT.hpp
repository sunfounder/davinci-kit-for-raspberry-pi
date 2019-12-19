/**********************************************************************
* Filename    : DHT.hpp
* Description : DHT Header
* Author      : sunfounder
* E-mail      : support@sunfounder.com
* website     : www.sunfounder.com
* Update      : 2019/08/05
**********************************************************************/

#ifndef _DHT_H_
#define _DHT_H_

#include <wiringPi.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define maxTim 85

#define dhtPin 0

void readDht11();

#endif