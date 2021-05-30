//
// Created by kwitnoncy on 31.03.2021.
//

//#include <stm32f1xx_hal.h>
#include "main.h"
#include "utilities.h"
#include "barriers.h"

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

#endif

extern SPI_HandleTypeDef hspi1;
extern SPI_HandleTypeDef hspi2;

extern float lvVoltage;
extern float lvTempAvg;
extern float lvTempMax;
extern uint8_t lvState;

extern float hvVoltage;
extern float hvTempAvg;
extern float hvTempMax;
extern uint8_t hvState;

extern float waterTemp1;
extern float waterTemp2;
extern uint8_t carSpeed;

extern uint8_t speedOrHvPer;
extern uint64_t ledArray;
extern uint32_t segDisplayArray;

uint8_t lcdPage = 0;
char* lcdStringRows1[3] = {"hello1", "hey1", "hi1"};
char* lcdStringRows2[3] = {"hello2", "hey2", "hi2"};

uint8_t digits[12] = {
    0x7E,     //  ZERO
    0x60,     //  ONE
    0x6D,     //  TWO
    0x79,     //  THREE
    0x33,     //  FOUR
    0x5B,     //  FIVE
    0x5F,     //  SIX
    0x70,     //  SEVEN
    0x7F,     //  EIGHT
    0x7B,     //  NINE
    0x00,     //  NULL
    0x00      //  ERROR
};



uint8_t prepareStates() {
    // LV Voltage
    if (lvVoltage > LV_VOLTAGE_HIGH) {
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 2));
    } else if (lvVoltage < LV_VOLTAGE_HIGH && lvVoltage > LV_VOLTAGE_MID) {
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 2));
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 1));
    } else if (lvVoltage < LV_VOLTAGE_MID && lvVoltage > LV_VOLTAGE_LOW) {
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 1));
    } else if (lvVoltage < LV_VOLTAGE_LOW && lvVoltage > LV_VOLTAGE_ALARM) {
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 1));
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 0));
    } else if (lvVoltage < LV_VOLTAGE_ALARM) {
        ledArray |= (1 << (LV_VOLTAGE_OFFSET + 0));
    }

    // LV Temperature
    if (lvTempAvg > LV_TEMP_HIGH) {
        ledArray |= (1 << (LV_TEMP_OFFSET + 2));
    } else if (lvTempAvg < LV_TEMP_HIGH && lvTempAvg > LV_TEMP_MID) {
        ledArray |= (1 << (LV_TEMP_OFFSET + 2));
        ledArray |= (1 << (LV_TEMP_OFFSET + 1));
    } else if (lvTempAvg < LV_TEMP_MID && lvTempAvg > LV_TEMP_LOW) {
        ledArray |= (1 << (LV_TEMP_OFFSET + 1));
    } else if (lvTempAvg < LV_TEMP_LOW && lvTempAvg > LV_TEMP_ALARM) {
        ledArray |= (1 << (LV_TEMP_OFFSET + 1));
        ledArray |= (1 << (LV_TEMP_OFFSET + 0));
    } else if (lvTempAvg < LV_TEMP_ALARM) {
        ledArray |= (1 << (LV_TEMP_OFFSET + 0));
    }

    // HV Voltage
    if (hvVoltage > HV_VOLTAGE_HIGH) {
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 2));
    } else if (hvVoltage < HV_VOLTAGE_HIGH && hvVoltage > HV_VOLTAGE_MID) {
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 2));
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 1));
    } else if (hvVoltage < HV_VOLTAGE_MID && hvVoltage > HV_VOLTAGE_LOW) {
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 1));
    } else if (hvVoltage < HV_VOLTAGE_LOW && hvVoltage > HV_VOLTAGE_ALARM) {
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 1));
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 0));
    } else if (hvVoltage < HV_VOLTAGE_ALARM) {
        ledArray |= (1 << (HV_VOLTAGE_OFFSET + 0));
    }

    // HV Temperature
    if (hvTempAvg > HV_TEMP_HIGH) {
        ledArray |= (1 << (HV_TEMP_OFFSET + 2));
    } else if (hvTempAvg < HV_TEMP_HIGH && hvTempAvg > HV_TEMP_MID) {
        ledArray |= (1 << (HV_TEMP_OFFSET + 2));
        ledArray |= (1 << (HV_TEMP_OFFSET + 1));
    } else if (hvTempAvg < HV_TEMP_MID && hvTempAvg > HV_TEMP_LOW) {
        ledArray |= (1 << (HV_TEMP_OFFSET + 1));
    } else if (hvTempAvg < HV_TEMP_LOW && hvTempAvg > HV_TEMP_ALARM) {
        ledArray |= (1 << (HV_TEMP_OFFSET + 1));
        ledArray |= (1 << (HV_TEMP_OFFSET + 0));
    } else if (hvTempAvg < HV_TEMP_ALARM) {
        ledArray |= (1 << (HV_TEMP_OFFSET + 0));
    }

    // Water Temperature 1
    if (waterTemp1 > WATER_T_1_HIGH) {
        ledArray |= (1 << (WATER_T_1_OFFSET + 2));
    } else if (waterTemp1 < WATER_T_1_HIGH && waterTemp1 > WATER_T_1_MID) {
        ledArray |= (1 << (WATER_T_1_OFFSET + 2));
        ledArray |= (1 << (WATER_T_1_OFFSET + 1));
    } else if (waterTemp1 < WATER_T_1_MID && waterTemp1 > WATER_T_1_LOW) {
        ledArray |= (1 << (WATER_T_1_OFFSET + 1));
    } else if (waterTemp1 < WATER_T_1_LOW && waterTemp1 > WATER_T_1_ALARM) {
        ledArray |= (1 << (WATER_T_1_OFFSET + 1));
        ledArray |= (1 << (WATER_T_1_OFFSET + 0));
    } else if (waterTemp1 < WATER_T_1_ALARM) {
        ledArray |= (1 << (WATER_T_1_OFFSET + 0));
    }

    // Water Temperature 2
    if (waterTemp2 > WATER_T_2_HIGH) {
        ledArray |= (1 << (WATER_T_2_OFFSET + 2));
    } else if (waterTemp2 < WATER_T_2_HIGH && waterTemp1 > WATER_T_2_MID) {
        ledArray |= (1 << (WATER_T_2_OFFSET + 2));
        ledArray |= (1 << (WATER_T_2_OFFSET + 1));
    } else if (waterTemp2 < WATER_T_2_MID && waterTemp1 > WATER_T_2_LOW) {
        ledArray |= (1 << (WATER_T_2_OFFSET + 1));
    } else if (waterTemp2 < WATER_T_2_LOW && waterTemp1 > WATER_T_2_ALARM) {
        ledArray |= (1 << (WATER_T_2_OFFSET + 1));
        ledArray |= (1 << (WATER_T_2_OFFSET + 0));
    } else if (waterTemp2 < WATER_T_2_ALARM) {
        ledArray |= (1 << (WATER_T_2_OFFSET + 0));
    }

    //HV Voltage big
    //TODO

    return 0;
}

uint8_t sendLed() {
    uint8_t status = 0;
#ifndef TEST
    prepareStates();
#endif
    for (uint8_t i = 0; i < 8 && !status; i++) {
        status |= HAL_SPI_Transmit(&hspi1, (uint8_t*)(ledArray << (i * 8)), 1, 100);
    }

    return status;
}

uint8_t hvVoltageToPercent() {
    return (uint8_t) hvVoltage;
}

uint8_t prepareSegDisplay() {
    if (speedOrHvPer) {
        // Speed
        segDisplayArray |= digits[carSpeed / 100] << 16;
        segDisplayArray |= digits[carSpeed % 100 / 10] << 8;
        segDisplayArray |= digits[carSpeed % 10];
    } else {
        // HV %
        uint8_t hvVoltagePer = hvVoltageToPercent();
        segDisplayArray |= digits[10] << 16;
        segDisplayArray |= digits[hvVoltagePer % 100 / 10] << 8;
        segDisplayArray |= digits[hvVoltagePer % 10];
    }

    return 0;
}

uint8_t send7Seg() {
    uint8_t status = 0;
#ifndef TEST
    prepareSegDisplay();
#endif
    for (uint8_t i = 0; i < 3 && !status; i++) {
        status |= HAL_SPI_Transmit(&hspi2, (uint8_t *) (segDisplayArray << i * 8), 1, 50);
    }

    return status;
}

//TODO
uint8_t sendAlfaNum() {
    return 0;
}

#ifdef TEST

uint8_t test(){
    testRound++;
    testSpeed++;

    if (testRound % TEST_INTERVAL == 0){
        testLvVoltageState++;
        testLvTempState++;
        testHvVoltageState++;
        testHvTempState++;
        testT1State++;
        testT2State++;
    }

    if (testLvTempState == 3){
        testLvVoltageState = 0;
        testLvTempState = 0;
        testHvVoltageState = 0;
        testHvTempState = 0;
        testT1State = 0;
        testT2State = 0;
    }

    ledArray |= (1 << (LV_VOLTAGE_OFFSET + testLvVoltageState));
    ledArray |= (1 << (LV_TEMP_OFFSET + testLvTempState));
    ledArray |= (1 << (HV_VOLTAGE_OFFSET + testHvVoltageState));
    ledArray |= (1 << (HV_TEMP_OFFSET + testHvTempState));
    ledArray |= (1 << (WATER_T_1_OFFSET + testT1State));
    ledArray |= (1 << (WATER_T_2_OFFSET + testT2State));
    //TODO
    // HV VOLTAGE BIG

    carSpeed = testSpeed;

    send7Seg();
    sendLed();

    HAL_Delay(TEST_SLEEP);
    return 0;
}
#endif
