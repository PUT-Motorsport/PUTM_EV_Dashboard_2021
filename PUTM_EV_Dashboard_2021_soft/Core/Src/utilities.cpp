//
// Created by kwitnoncy on 31.03.2021.
//

#include "utilities.h"
#include "barriers.h"

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

extern uint64_t led_array;

uint8_t prepareStates(void){
    // LV Voltage
    if( lvVoltage >  LV_VOLTAGE_HIGH){
        led_array = 0;  // 0OO
    }
    else if( lvVoltage < LV_VOLTAGE_HIGH && lvVoltage > LV_VOLTAGE_MID){
        led_array = 0;  // 00O
    }
    else if( lvVoltage < LV_VOLTAGE_MID && lvVoltage > LV_VOLTAGE_LOW){
        led_array = 0;  // O0O
    }
    else if( lvVoltage < LV_VOLTAGE_LOW){
        led_array = 0;  // O0O
    }

    // LV Temperature
    if( lvTempAvg > LV_TEMP_HIGH){
        led_array = 0; // 0OO
    }
    else if( lvTempAvg < LV_TEMP_HIGH && lvTempAvg > LV_TEMP_MID){
        led_array = 0; // 00O
    }
    else if( lvTempAvg < LV_TEMP_MID && lvTempAvg > LV_TEMP_LOW){
        led_array = 0; // O0O
    }
    else if( lvTempAvg < LV_TEMP_LOW){
        led_array = 0; // OO0
    }

    // HV Voltage
    if( hvVoltage >  HV_VOLTAGE_HIGH){
        led_array = 0;  // 0OO
    }
    else if( hvVoltage < HV_VOLTAGE_HIGH && hvVoltage > HV_VOLTAGE_MID){
        led_array = 0;  // 00O
    }
    else if( hvVoltage < HV_VOLTAGE_MID && hvVoltage > HV_VOLTAGE_LOW){
        led_array = 0;  // O0O
    }
    else if( hvVoltage < HV_VOLTAGE_LOW){
        led_array = 0;  // O0O
    }

    // HV Temperature
    if( hvTempAvg > HV_TEMP_HIGH){
        led_array = 0; // 0OO
    }
    else if( hvTempAvg < HV_TEMP_HIGH && hvTempAvg > HV_TEMP_MID){
        led_array = 0; // 00O
    }
    else if( hvTempAvg < HV_TEMP_MID && hvTempAvg > HV_TEMP_LOW){
        led_array = 0; // O0O
    }
    else if( hvTempAvg < HV_TEMP_LOW){
        led_array = 0; // OO0
    }

    // Water Temperature 1
    if (waterTemp1 > WATER_T_1_HIGH){
        led_array = 0; // 0OO
    }
    else if (waterTemp1 < WATER_T_1_HIGH && waterTemp1 > WATER_T_1_MID){
        led_array = 0; // 00O
    }
    else if (waterTemp1 < WATER_T_1_MID && waterTemp1 > WATER_T_1_LOW){
        led_array = 0; // O0O
    }
    else if (waterTemp1 < WATER_T_1_LOW){
        led_array = 0; // OO0
    }

    // Water Temperature 2
    if (waterTemp2 > WATER_T_2_HIGH){
        led_array = 0; // 0OO
    }
    else if (waterTemp2 < WATER_T_2_HIGH && waterTemp1 > WATER_T_2_MID){
        led_array = 0; // 00O
    }
    else if (waterTemp2 < WATER_T_2_MID && waterTemp1 > WATER_T_2_LOW){
        led_array = 0; // O0O
    }
    else if (waterTemp2 < WATER_T_2_LOW){
        led_array = 0; // OO0
    }

    return 0;

}

uint8_t sendLed(void){
    return 0;
}

uint8_t send7Seg(void){
    return 0;
}

uint8_t send7Alfanum(void){
    return 0;
}
