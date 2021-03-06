//
// Created by kwitnoncy on 31.03.2021.
//

//#include <stm32f1xx_hal.h>
#include "main.h"
#include "utilities.h"
#include "common.h"
#include "lcd_driver.h"

#ifdef TEST

uint8_t testRound = 0;
uint8_t testSpeed = 0;
uint8_t testLvVoltageState = 0;
uint8_t testLvTempState = 0;
uint8_t testHvVoltageState = 0;
uint8_t testHvVoltageBigState = 1;
uint8_t testHvTempState = 0;
uint8_t testT1State = 0;
uint8_t testT2State = 0;
uint8_t testLedArray = 0;

#endif

extern SPI_HandleTypeDef hspi1;
extern SPI_HandleTypeDef hspi2;

extern float lvVoltage;
extern float lvTempAvg;
extern float lvTempMax;
extern uint8_t lvState;

extern uint8_t hvVoltage;
extern float hvTempAvg;
extern float hvTempMax;
extern uint8_t hvState;

extern float waterTemp1;
extern float waterTemp2;
extern uint8_t carSpeed;

extern uint8_t speedOrHvPer;
extern uint32_t ledArray1;
extern uint8_t ledArray2;
extern uint32_t segDisplayArray;

uint8_t lcdPage = 0;
char *lcdStringRow0Up = "HV  %3d  TW1  %2d";
char *lcdStringRow0Low = "LV  %3d  TW2  %2d";
char *lcdStringRow1Up = "LAP              ";
char *lcdStringRow1Low = "                 ";
char *lcdStringRow2Up = "NOP              ";
char *lcdStringRow2Low = "                 ";

uint8_t digits[12] = {
        0x3F,     //  ZERO
        0x06,     //  ONE
        0x5B,     //  TWO
        0x4F,     //  THREE
        0x66,     //  FOUR
        0x6D,     //  FIVE
        0x7D,     //  SIX
        0x07,     //  SEVEN
        0x7F,     //  EIGHT
        0x6F,     //  NINE
        0x00,     //  NULL
        0x00      //  ERROR
};


uint8_t prepareStates() {
    // LV Voltage
    if (lvVoltage > LV_VOLTAGE_HIGH) {
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 2));
    }
    else if (lvVoltage < LV_VOLTAGE_HIGH && lvVoltage > LV_VOLTAGE_MID) {
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 2));
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 1));
    }
    else if (lvVoltage < LV_VOLTAGE_MID && lvVoltage > LV_VOLTAGE_LOW) {
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 1));
    }
    else if (lvVoltage < LV_VOLTAGE_LOW && lvVoltage > LV_VOLTAGE_ALARM) {
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 1));
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 0));
    }
    else if (lvVoltage < LV_VOLTAGE_ALARM) {
        ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + 0));
    }

    // LV Temperature
    if (lvTempAvg > LV_TEMP_HIGH) {
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 2));
    }
    else if (lvTempAvg < LV_TEMP_HIGH && lvTempAvg > LV_TEMP_MID) {
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 2));
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 1));
    }
    else if (lvTempAvg < LV_TEMP_MID && lvTempAvg > LV_TEMP_LOW) {
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 1));
    }
    else if (lvTempAvg < LV_TEMP_LOW && lvTempAvg > LV_TEMP_ALARM) {
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 1));
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 0));
    }
    else if (lvTempAvg < LV_TEMP_ALARM) {
        ledArray1 |= (1 << (LV_TEMP_OFFSET + 0));
    }

    // HV Voltage
    if (hvVoltage > HV_VOLTAGE_HIGH) {
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 2));
    }
    else if (hvVoltage < HV_VOLTAGE_HIGH && hvVoltage > HV_VOLTAGE_MID) {
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 2));
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 1));
    }
    else if (hvVoltage < HV_VOLTAGE_MID && hvVoltage > HV_VOLTAGE_LOW) {
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 1));
    }
    else if (hvVoltage < HV_VOLTAGE_LOW && hvVoltage > HV_VOLTAGE_ALARM) {
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 1));
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 0));
    }
    else if (hvVoltage < HV_VOLTAGE_ALARM) {
        ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + 0));
    }

    // HV Temperature
    if (hvTempAvg > HV_TEMP_HIGH) {
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 2));
    }
    else if (hvTempAvg < HV_TEMP_HIGH && hvTempAvg > HV_TEMP_MID) {
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 2));
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 1));
    }
    else if (hvTempAvg < HV_TEMP_MID && hvTempAvg > HV_TEMP_LOW) {
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 1));
    }
    else if (hvTempAvg < HV_TEMP_LOW && hvTempAvg > HV_TEMP_ALARM) {
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 1));
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 0));
    }
    else if (hvTempAvg < HV_TEMP_ALARM) {
        ledArray1 |= (1 << (HV_TEMP_OFFSET + 0));
    }

    // Water Temperature 1
    if (waterTemp1 > WATER_T_1_HIGH) {
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 2));
    }
    else if (waterTemp1 < WATER_T_1_HIGH && waterTemp1 > WATER_T_1_MID) {
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 2));
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 1));
    }
    else if (waterTemp1 < WATER_T_1_MID && waterTemp1 > WATER_T_1_LOW) {
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 1));
    }
    else if (waterTemp1 < WATER_T_1_LOW && waterTemp1 > WATER_T_1_ALARM) {
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 1));
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 0));
    }
    else if (waterTemp1 < WATER_T_1_ALARM) {
        ledArray1 |= (1 << (WATER_T_1_OFFSET + 0));
    }

    // Water Temperature 2
    if (waterTemp2 > WATER_T_2_HIGH) {
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 2));
    }
    else if (waterTemp2 < WATER_T_2_HIGH && waterTemp1 > WATER_T_2_MID) {
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 2));
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 1));
    }
    else if (waterTemp2 < WATER_T_2_MID && waterTemp1 > WATER_T_2_LOW) {
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 1));
    }
    else if (waterTemp2 < WATER_T_2_LOW && waterTemp1 > WATER_T_2_ALARM) {
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 1));
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 0));
    }
    else if (waterTemp2 < WATER_T_2_ALARM) {
        ledArray1 |= (1 << (WATER_T_2_OFFSET + 0));
    }

    //HV Voltage big
    uint16_t hvLedTemp = UINT16_MAX;
    uint8_t hvVolTemp = hvVoltage;

    while (hvVolTemp <= 100){
        hvVolTemp += 6;
        hvLedTemp >>= 1;
    }

    ledArray1 |= ((uint64_t)hvLedTemp << HV_BIG_VOL_OFFSET);

    return 0;
}

uint8_t sendLed() {
    uint8_t status = 0;
#ifndef TEST
    prepareStates();
#endif
    HAL_GPIO_WritePin(SPI2_NSS_GPIO_Port, SPI2_NSS_Pin, 0);
    status |= HAL_SPI_Transmit(&hspi2, (uint8_t *)(&ledArray2), 1, 100);
    status |= HAL_SPI_Transmit(&hspi2, (uint8_t *)(&ledArray1), 4, 100);
    HAL_GPIO_WritePin(SPI2_NSS_GPIO_Port, SPI2_NSS_Pin, 1);

    return status;
}

uint8_t hvVoltageToPercent() {
    return (uint8_t) hvVoltage;
}

uint8_t prepareSegDisplay() {
    if (speedOrHvPer) {
        // HV %
        uint8_t hvVoltagePer = hvVoltageToPercent();
        segDisplayArray = (digits[10] << 16) | ((digits[hvVoltagePer % 100 / 10]) << 8) | digits[hvVoltagePer % 10];
    }
    else {
        // Speed
        segDisplayArray = ((digits[carSpeed / 100]) << 16) | ((digits[carSpeed % 100 / 10]) << 8) | digits[carSpeed % 10];
    }

    return 0;
}

uint8_t send7Seg() {
    uint8_t status = 0;
    prepareSegDisplay();
    HAL_GPIO_WritePin(SPI1_NSS_GPIO_Port, SPI1_NSS_Pin, 0);
    status |= HAL_SPI_Transmit(&hspi1, (uint8_t*) (&segDisplayArray), 3, 10);
    HAL_GPIO_WritePin(SPI1_NSS_GPIO_Port, SPI1_NSS_Pin, 1);

    return status;
}

uint8_t sendAlfaNum() {
    lcdClear();
    if (lcdPage == 0) {
        char temp[16] = {};
        snprintf(temp, 16, lcdStringRow0Up, (uint8_t) hvVoltageToPercent(), (uint8_t) waterTemp1);
        lcdMoveCursor(0, 0);
        lcdWriteString(temp);

        snprintf(temp, 16, lcdStringRow0Low, (uint8_t) lvVoltage, (uint8_t) waterTemp2);
        lcdMoveCursor(1, 0);
        lcdWriteString(temp);
    }
    else if (lcdPage == 1) {
        char temp[16] = {};
        snprintf(temp, 16, lcdStringRow1Up, (uint8_t) hvVoltageToPercent(), (uint8_t) waterTemp1);
        lcdMoveCursor(0, 0);
        lcdWriteString(temp);

        snprintf(temp, 16, lcdStringRow1Low, (uint8_t) lvVoltage, (uint8_t) waterTemp2);
        lcdMoveCursor(1, 0);
        lcdWriteString(temp);
    }
    else if (lcdPage == 2) {
        char temp[16] = {};
        snprintf(temp, 16, lcdStringRow2Up, (uint8_t) hvVoltageToPercent(), (uint8_t) waterTemp1);
        lcdMoveCursor(0, 0);
        lcdWriteString(temp);

        snprintf(temp, 16, lcdStringRow2Low, (uint8_t) lvVoltage, (uint8_t) waterTemp2);
        lcdMoveCursor(1, 0);
        lcdWriteString(temp);
    }
    return 0;
}

#ifdef TEST

uint8_t test() {
    testRound++;
    testSpeed++;

    if (testRound % TEST_INTERVAL == 0) {
        testLvVoltageState++;
        testLvTempState++;
        testHvVoltageState++;
        testHvTempState++;
        testT1State++;
        testT2State++;

        testLedArray++;
        if (testLedArray > 31)
            testLedArray = 0;

        char temp[16];
        sprintf(temp, "%d %d %d %d %d %d %d %d", (testRound + 0) % 10, (testRound + 1) % 10, (testRound + 2) % 9, (testRound  + 3) % 9,
                (testRound + 4) % 10, (testRound + 5) % 10, (testRound + 6) % 10, (testRound + 7) % 10);
        lcdClear();
        lcdMoveCursor(0, 0);
        lcdWriteString(temp);
        lcdMoveCursor(1, 0);
        lcdWriteString(temp);
    }

    if (testLvTempState == 3) {
        testLvVoltageState = 0;
        testLvTempState = 0;
        testHvVoltageState = 0;
        testHvTempState = 0;
        testT1State = 0;
        testT2State = 0;
    }

    ledArray1 |= (1 << (LV_VOLTAGE_OFFSET + testLvVoltageState));
    ledArray1 |= (1 << (LV_TEMP_OFFSET + testLvTempState));
    ledArray1 |= (1 << (HV_VOLTAGE_OFFSET + testHvVoltageState));
    ledArray1 |= (1 << (HV_TEMP_OFFSET + testHvTempState));
    ledArray1 |= (1 << (WATER_T_1_OFFSET + testT1State));
    ledArray1 |= (1 << (WATER_T_2_OFFSET + testT2State));

    uint16_t hvLedTemp = UINT16_MAX;
    uint8_t hvVolTemp = testRound % 100;

    while (hvVolTemp <= 100){
        hvVolTemp += 6;
        hvLedTemp >>= 1;
    }

    ledArray1 |= ((uint64_t)hvLedTemp << HV_BIG_VOL_OFFSET);

    carSpeed = testSpeed;
    hvVoltage = testSpeed;
//    ledArray1 = 0;
//    ledArray2 = 3;

    send7Seg();
    sendLed();

    HAL_Delay(TEST_SLEEP);
    return 0;
}

#endif
