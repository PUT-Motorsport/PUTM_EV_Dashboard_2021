//
// Created by kwitnoncy on 31.03.2021.
//

#ifndef PUTM_EV_DASHBOARD_2021_SOFT_UTILITIES_H
#define PUTM_EV_DASHBOARD_2021_SOFT_UTILITIES_H


#include <stdint.h>

uint8_t prepareStates();
uint8_t prepareSegDisplay();
uint8_t sendLed();
uint8_t send7Seg();
uint8_t sendAlfaNum();
uint8_t hvVoltageToPercent();

#ifdef TEST
    #define TEST_INTERVAL   5
    #define TEST_SLEEP      30

    uint8_t test();
#endif


#endif //PUTM_EV_DASHBOARD_2021_SOFT_UTILITIES_H
