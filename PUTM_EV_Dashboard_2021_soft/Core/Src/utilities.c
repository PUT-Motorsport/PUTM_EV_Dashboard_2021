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

uint8_t testVariables[5][6] = {
        {100, 25, 100, 25, 30,  30},
        {70,  40, 70,  40, 50,  50},
        {50,  50, 50,  50, 70,  70},
        {20,  57, 20,  57, 95,  95},
        {5,   65, 5,   65, 110, 110}
};
uint8_t testVariableIterator = 0;

#endif

extern SPI_HandleTypeDef hspi1;
extern SPI_HandleTypeDef hspi2;

extern uint8_t lvVoltage;
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

const uint8_t digits[12] = {
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

const uint8_t hvBigLedShift[16] = {23, 22, 21, 20, 19, 18, 17, 16, 31, 30, 29, 28, 27, 26, 25, 24};


uint8_t prepareStates() {
    // LV Voltage
    if (lvVoltage > LV_VOLTAGE_HIGH) {
        ledArray1 |= (1 << LV_VOLTAGE_LED_3);
        ledArray1 |= (1 << LV_VOLTAGE_LED_2);
        ledArray1 |= (1 << LV_VOLTAGE_LED_1);
    }
    else if (lvVoltage < LV_VOLTAGE_HIGH && lvVoltage >= LV_VOLTAGE_MID) {
        ledArray1 |= (1 << LV_VOLTAGE_LED_2);
        ledArray1 |= (1 << LV_VOLTAGE_LED_1);
    }
    else if (lvVoltage < LV_VOLTAGE_MID && lvVoltage >= LV_VOLTAGE_LOW) {
        ledArray1 |= (1 << LV_VOLTAGE_LED_1);
    }
    else if (lvVoltage < LV_VOLTAGE_ALARM) {
        ;
    }

    // LV Temperature
    if (lvTempAvg < LV_TEMP_HIGH) {
        ledArray1 |= (1 << LV_TEMP_LED_3);
        ledArray1 |= (1 << LV_TEMP_LED_2);
        ledArray1 |= (1 << LV_TEMP_LED_1);
    }
    else if (lvTempAvg > LV_TEMP_HIGH && lvTempAvg <= LV_TEMP_MID) {
        ledArray1 |= (1 << LV_TEMP_LED_2);
        ledArray1 |= (1 << LV_TEMP_LED_1);
    }
    else if (lvTempAvg > LV_TEMP_MID && lvTempAvg <= LV_TEMP_LOW) {
        ledArray1 |= (1 << LV_TEMP_LED_1);
    }
    else if (lvTempAvg > LV_TEMP_ALARM) {
        ;
    }

    // HV Voltage
    if (hvVoltage > HV_VOLTAGE_HIGH) {
        ledArray1 |= (1 << HV_VOLTAGE_LED_3);
        ledArray1 |= (1 << HV_VOLTAGE_LED_2);
        ledArray1 |= (1 << HV_VOLTAGE_LED_1);
    }
    else if (hvVoltage < HV_VOLTAGE_HIGH && hvVoltage >= HV_VOLTAGE_MID) {
        ledArray1 |= (1 << HV_VOLTAGE_LED_2);
        ledArray1 |= (1 << HV_VOLTAGE_LED_1);
    }
    else if (hvVoltage < HV_VOLTAGE_MID && hvVoltage >= HV_VOLTAGE_LOW) {
        ledArray1 |= (1 << HV_VOLTAGE_LED_1);
    }
    else if (hvVoltage < HV_VOLTAGE_ALARM) {
        ;
    }

    // HV Temperature
    if (hvTempAvg < HV_TEMP_HIGH) {
        ledArray1 |= (1 << HV_TEMP_LED_3);
        ledArray1 |= (1 << HV_TEMP_LED_2);
        ledArray1 |= (1 << HV_TEMP_LED_1);
    }
    else if (hvTempAvg > HV_TEMP_HIGH && hvTempAvg <= HV_TEMP_MID) {
        ledArray1 |= (1 << HV_TEMP_LED_2);
        ledArray1 |= (1 << HV_TEMP_LED_1);
    }
    else if (hvTempAvg > HV_TEMP_MID && hvTempAvg <= HV_TEMP_LOW) {
        ledArray1 |= (1 << HV_TEMP_LED_1);
    }
    else if (hvTempAvg > HV_TEMP_ALARM) {
        ;
    }

    // Water Temperature 1
    if (waterTemp1 < WATER_T_1_HIGH) {
        ledArray1 |= (1 << WATER_T_1_LED_3);
        ledArray1 |= (1 << WATER_T_1_LED_2);
        ledArray1 |= (1 << WATER_T_1_LED_1);
    }
    else if (waterTemp1 > WATER_T_1_HIGH && waterTemp1 <= WATER_T_1_MID) {
        ledArray1 |= (1 << WATER_T_1_LED_2);
        ledArray1 |= (1 << WATER_T_1_LED_1);
    }
    else if (waterTemp1 > WATER_T_1_MID && waterTemp1 <= WATER_T_1_LOW) {
        ledArray1 |= (1 << WATER_T_1_LED_1);
    }
    else if (waterTemp1 > WATER_T_1_ALARM) {
        ;
    }

    // Water Temperature 2
    if (waterTemp2 < WATER_T_2_HIGH) {
        ledArray2 |= (1 << WATER_T_2_LED_3);
        ledArray2 |= (1 << WATER_T_2_LED_2);
        ledArray1 |= (1 << WATER_T_2_LED_1);
    }
    else if (waterTemp2 > WATER_T_2_HIGH && waterTemp1 <= WATER_T_2_MID) {
        ledArray2 |= (1 << WATER_T_2_LED_2);
        ledArray1 |= (1 << WATER_T_2_LED_1);
    }
    else if (waterTemp2 > WATER_T_2_MID && waterTemp1 <= WATER_T_2_LOW) {
        ledArray1 |= (1 << WATER_T_2_LED_1);
    }
    else if (waterTemp2 > WATER_T_2_ALARM) {
        ;
    }

    //HV Voltage big
    uint16_t hvLedTemp = UINT16_MAX;
    uint8_t hvVolTemp = hvVoltage;

    while (hvVolTemp <= 100){
        hvVolTemp += 6;
        hvLedTemp >>= 1;
    }

    for (uint8_t i = 0 ; i < 16 ; i++ ){
        if (hvLedTemp >> i & 1){
            ledArray1 |= 1 << hvBigLedShift[i];
        }
    }

    return 0;
}

uint8_t sendLed() {
    uint8_t status = 0;
    prepareStates();
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
    ledArray1 = 0;
    ledArray2 = 0;
    testRound++;
    testSpeed++;

    if (testRound % TEST_INTERVAL == 0) {
        lvVoltage = testVariables[testVariableIterator][0];
        lvTempAvg = testVariables[testVariableIterator][1];
        hvVoltage = testVariables[testVariableIterator][2];
        hvTempAvg = testVariables[testVariableIterator][3];
        waterTemp1 = testVariables[testVariableIterator][4];
        waterTemp2 = testVariables[testVariableIterator][5];
        testVariableIterator++;

        char temp[16];
        sprintf(temp, "%d %d %d %d %d %d %d %d", (testRound + 0) % 10, (testRound + 1) % 10, (testRound + 2) % 9, (testRound  + 3) % 9,
                (testRound + 4) % 10, (testRound + 5) % 10, (testRound + 6) % 10, (testRound + 7) % 10);
        lcdClear();
        lcdMoveCursor(0, 0);
        lcdWriteString(temp);
        lcdMoveCursor(1, 0);
        lcdWriteString(temp);
    }

    if (testVariableIterator == 5)
        testVariableIterator = 0;

    uint16_t hvLedTemp = UINT16_MAX;
    uint8_t hvVolTemp = testRound % 100;

    while (hvVolTemp <= 100){
        hvVolTemp += 6;
        hvLedTemp >>= 1;
    }
    hvLedTemp = hvLedTemp << 1 | 1;
    for (uint8_t i = 0 ; i < 16 ; i++ ){
        if (hvLedTemp >> i & 1){
            ledArray1 |= 1 << hvBigLedShift[i];
        }
    }

    carSpeed = testSpeed;
    hvVoltage = testSpeed % 100;

    send7Seg();
    sendLed();

    HAL_Delay(TEST_SLEEP);
    return 0;
}

#endif