/**
 * @file SMA.cpp
 *
 * @brief SensorManagementAgent Process
 *
 * Copyright (C) 2018. SKT, All Rights Reserved.
 * Written 2018,by SKT
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "SMA.h"
#include "mbed.h"

#define SMA_STRCMP(x,y) (strncmp(x,y,strlen(y)) == 0)&&(strlen(x) == strlen(y))

AnalogIn light(A3);
AnalogIn temperature(A0);
DigitalOut led(D4);

static char *strdup(const char *s)
{
    char* dup = (char*)malloc(strlen(s) + 1);
    if(dup != NULL)
        strcpy(dup, s);
    return dup;
}

void SMAGetData(char *sensorType, char** output, int *len)
{
    srand(time(NULL));
    int random_num = rand();

    if( SMA_STRCMP(sensorType,"batterystate") ) {
        *output = strdup("1");
        *len = strlen(*output);
    } else if( SMA_STRCMP(sensorType, "temp1") ) {
        float temperature_val;
        float R;
        const int B=4275;                 // B value of the thermistor
        int a = temperature.read_u16();
        a = a & 0x3FF;
        R = 1023.0/((double)a) - 1.0;
        R = 100000.0*R;
        temperature_val=1.0/(log(R/100000.0)/B+1/298.15)-273.15;
        char str_val[8];
        sprintf(str_val, "%.2f", temperature_val);
        *output = strdup(str_val);
        *len = strlen(*output);
    } else if( SMA_STRCMP(sensorType, "humi1") ) {
        *output = strdup("XX");
        sprintf(*output, "%2d", (random_num%10+40));
        *len = strlen(*output);
    } else if( SMA_STRCMP(sensorType, "light1") ) {
        float light_val;
        int a = light.read_u16();
        a = a & 0x3FF;
        light_val = (float)(1023-a)*10/a;
        char str_val[8];
        sprintf(str_val,"%.0f", light_val);
        *output = strdup(str_val);
        *len = strlen(*output);
    }
}

static int ledStatus = 0;

int RGB_LEDControl(int color)
{
    led = color;
    // r=1,g=2,b=3,c=5,m=4,y=6,w=7,off=0
    if( color == 1 ) {
        ledStatus = 1;
    } else if( color == 2 ) {
        ledStatus = 2;
    } else if( color == 3 ) {
        ledStatus = 3;
    } else if( color == 4 ) {
        ledStatus = 4;
    } else if( color == 5 ) {
        ledStatus = 5;
    } else if( color == 6 ) {
        ledStatus = 6;
    } else if( color == 7 ) {
        ledStatus = 7;
    } else if( color == 0 ) {
        ledStatus = 0;
    } else {
        return -1;
    }
    return 0;
}


int RGB_LEDStatus()
{
    return ledStatus;
}

