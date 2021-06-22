//
// Created by kwitnoncy on 14.04.2021.
//

#ifndef PUTM_EV_DASHBOARD_2021_SOFT_LCD_DRIVER_H
#define PUTM_EV_DASHBOARD_2021_SOFT_LCD_DRIVER_H

#include "stm32f1xx_hal.h"
#include "string.h"
#include "stdio.h"
#include "main.h"

#define LCD_CLEAR       0x01
#define LCD_GO_HOME     0x02
#define LCD_ENTRY_MODE  0x04
#define LCD_TURN_ON     0x04
#define LCD_RESET_POWER 0x08
#define LCD_LOC_BASE    0x80
#define LCD_INIT_CMD_1  0x33
#define LCD_INIT_CMD_2  0x32
#define LCD_SET_4_BIT   0x28
#define LCD_INC_CURSOR  0x02
#define LCD_NIB 4
#define LCD_BYTE 8
#define LCD_DATA_REG 1
#define LCD_COMMAND_REG 0

void lcdInit();
void lcdWriteString(char* str);
void lcdMoveCursor(uint8_t row, uint8_t column);
void lcdClear();
void lcdWriteData(uint8_t data);
void lcdWriteCommand(uint8_t command);
void lcdWrite(uint8_t data);

#endif //PUTM_EV_DASHBOARD_2021_SOFT_LCD_DRIVER_H
