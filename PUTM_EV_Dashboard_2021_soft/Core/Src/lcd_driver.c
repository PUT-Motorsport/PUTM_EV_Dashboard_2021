//
// Created by kwitnoncy and Tomasz Wojciechowski on 14.04.2021.
//

#include "lcd_driver.h"

void lcdSetRs(GPIO_PinState state){
    HAL_GPIO_WritePin(LCD_RS_GPIO_Port, LCD_RS_Pin, state);
}

void lcdSetE(GPIO_PinState state){
    HAL_GPIO_WritePin(LCD_E_GPIO_Port, LCD_E_Pin, state);
}

void lcdDelay(uint32_t delay){
//    htimX.Instance->CNT = 0;
//    while(htim6.Instance->CNT < delay);
}

void lcdDataHigh(uint8_t data){
    HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, ((data>>4)&0x01));
    HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, ((data>>5)&0x01));
    HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, ((data>>6)&0x01));
    HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, ((data>>7)&0x01));
}

void lcdDataLow(uint8_t data){
    HAL_GPIO_WritePin(LCD_D4_GPIO_Port, LCD_D4_Pin, ((data)&0x01));
    HAL_GPIO_WritePin(LCD_D5_GPIO_Port, LCD_D5_Pin, ((data>>1)&0x01));
    HAL_GPIO_WritePin(LCD_D6_GPIO_Port, LCD_D6_Pin, ((data>>2)&0x01));
    HAL_GPIO_WritePin(LCD_D7_GPIO_Port, LCD_D7_Pin, ((data>>3)&0x01));
}

void lcdWriteByte(uint8_t byte){
    lcdSetRs(1);
    lcdDelay(1);
    lcdDataHigh(byte);
    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    lcdDelay(1);
    lcdDataLow(byte);
    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    lcdDelay(50);
    lcdSetRs(0);
}

void lcdWriteString(const char* string){
    while(*string != 0){
        lcdWriteByte((uint8_t)(*string));
        string++;
    }
}

void lcdLocateCursor(uint8_t line, uint8_t row){
    uint8_t addr = 0;
    if (line == 0 || line > 1)
        addr = row;
    else
        addr = 0x40 + row;

    lcdSetRs(0);
    lcdDataHigh(0b10000000 | addr);
    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    lcdDelay(1);
    lcdDataLow(0b10000000 | addr);
    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    lcdDelay(50);
}

void lcdInit(){
    lcdSetRs(0);
    lcdSetE(0);
    HAL_Delay(100);
    lcdDataLow(0b0011);

    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    HAL_Delay(5);

    lcdDataLow(0b0011);

    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    lcdDelay(150);

    lcdDataLow(0b0011);

    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    HAL_Delay(1);

    lcdDataLow(0b0010);

    lcdSetE(1);
    lcdDelay(1);
    lcdSetE(0);
    HAL_Delay(1);

    // 2 lines
    {
        lcdDataHigh(0b00101000);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(1);

        lcdDataLow(0b00101000);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(100);
    }

    // display off
    {
        lcdDataHigh(0b00001000);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(1);

        lcdDataLow(0b00001000);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(100);
    }

    // display clear
    {
        lcdDataHigh(0b00000001);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(1);

        lcdDataLow(0b00000001);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(100);
    }

    // cursor increment, cursor moves
    {
        lcdDataHigh(0b00000110);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(1);

        lcdDataLow(0b00000110);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(100);
    }

    // display on
    {
        lcdDataHigh(0b00001100);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(1);

        lcdDataLow(0b00001100);

        lcdSetE(1);
        lcdDelay(1);
        lcdSetE(0);
        lcdDelay(100);
    }
}
