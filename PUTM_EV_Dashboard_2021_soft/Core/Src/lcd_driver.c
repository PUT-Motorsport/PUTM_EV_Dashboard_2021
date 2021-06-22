//
// Created by kwitnoncy  on 14.04.2021.
//

#include "lcd_driver.h"


const uint8_t rowAddress[] = {0x00, 0x40};

void lcdInit() {
    lcdWriteCommand(LCD_INIT_CMD_1);
    lcdWriteCommand(LCD_INIT_CMD_2);
    lcdWriteCommand(LCD_SET_4_BIT);
    lcdWriteCommand(LCD_CLEAR);
    lcdWriteCommand(LCD_RESET_POWER | LCD_TURN_ON);
    lcdWriteCommand(LCD_ENTRY_MODE | LCD_INC_CURSOR);
}

void lcdWriteString(char *str) {
    while(*str){
        lcdWriteData(*str++);
    }
}

void lcdMoveCursor(uint8_t row, uint8_t column) {
    lcdWriteCommand(LCD_LOC_BASE + rowAddress[row] + column);
}

void lcdClear() {
    lcdWriteCommand(LCD_CLEAR);
}

void lcdWriteData(uint8_t data) {
    HAL_GPIO_WritePin(LCD_RS_GPIO_Port, LCD_RS_Pin, LCD_DATA_REG);

    lcdWrite(data >> 4);
    lcdWrite(data & 0x0F);
}

void lcdWriteCommand(uint8_t command) {
    HAL_GPIO_WritePin(LCD_RS_GPIO_Port, LCD_RS_Pin, LCD_COMMAND_REG);
    lcdWrite(command >> 4);
    lcdWrite(command & 0x0F);

}

void lcdWrite(uint8_t data) {
    HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, (data >> 0) & 0x01);
    HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, (data >> 1) & 0x01);
    HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, (data >> 2) & 0x01);
    HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, (data >> 3) & 0x01);
    HAL_GPIO_WritePin(LCD_E_GPIO_Port, LCD_E_Pin, 1);
    HAL_Delay(1);
    HAL_GPIO_WritePin(LCD_E_GPIO_Port, LCD_E_Pin, 0);
}
