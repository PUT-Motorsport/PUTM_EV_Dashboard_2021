//
// Created by kwitnoncy on 31.03.2021.
//

#ifndef PUTM_EV_DASHBOARD_2021_SOFT_UTILITIES_H
#define PUTM_EV_DASHBOARD_2021_SOFT_UTILITIES_H

#include <cstdint>

uint8_t prepareStates();
uint8_t prepareSegDisplay();
uint8_t sendLed();
uint8_t send7Seg();
uint8_t sendAlfaNum();
uint8_t hvVoltageToPercent();

uint8_t digits[12] = {0x00,     //  ZERO
                      0x00,     //  ONE
                      0x00,     //  TWO
                      0x00,     //  THREE
                      0x00,     //  FOUR
                      0x00,     //  FIVE
                      0x00,     //  SIX
                      0x00,     //  SEVEN
                      0x00,     //  EIGHT
                      0x00,     //  NINE
                      0x00,     //  NULL
                      0x00};    //  ERROR


#endif //PUTM_EV_DASHBOARD_2021_SOFT_UTILITIES_H
