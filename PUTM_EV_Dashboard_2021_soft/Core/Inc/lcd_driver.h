//
// Created by kwitnoncy and Tomasz Wojciechowski on 14.04.2021.
//

#ifndef PUTM_EV_DASHBOARD_2021_SOFT_LCD_DRIVER_H
#define PUTM_EV_DASHBOARD_2021_SOFT_LCD_DRIVER_H

#include "main.h"

void lcdSetRs(GPIO_PinState state);
void lcdSetE(GPIO_PinState state);
void lcdDelay(uint32_t delay);
void lcdDataHigh(uint8_t data);
void lcdDataLow(uint8_t data);
void lcdWriteByte(uint8_t byte);
void lcdWriteString(const char* string);
void lcdLocateCursor(uint8_t line, uint8_t row);
void lcdInit();

#endif //PUTM_EV_DASHBOARD_2021_SOFT_LCD_DRIVER_H
