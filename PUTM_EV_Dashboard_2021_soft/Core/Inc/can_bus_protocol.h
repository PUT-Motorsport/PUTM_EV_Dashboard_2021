/*
 * can_bus_protocol.h
 *
 *  Created on: Feb 15, 2021
 *      Author: kwitnoncy
 */

#ifndef INC_CAN_BUS_PROTOCOL_H_
#define INC_CAN_BUS_PROTOCOL_H_

#define CAR_SPEED_ID    0x10
#define CAR_SPEED_BYTE  0x00

#define LV_VOLTAGE_ID   0x0C
#define LV_VOLTAGE_BYTE 0x01

#define LV_TEMP_A_ID    0x5E
#define LV_TEMP_A_BYTE  0x00

#define LV_TEMP_M_ID    0x5D
#define LV_TEMP_M_BYTE  0x00

#define LV_STATE_BYTE  0x00

//TODO
#define HV_VOLTAGE_ID   0x00
#define HV_VOLTAGE_BYTE 0x00

//TODO
#define HV_TEMP_A_ID    0x00
#define HV_TEMP_A_BYTE  0x00

//TODO
#define HV_TEMP_M_ID    0x00
#define HV_TEMP_M_BYTE  0x00

//TODO
#define HV_STATE_ID     0x00
#define HV_STATE_BYTE   0x00

#define WATER_T_1_ID    0x0B
#define WATER_T_1_BYTE  0x00

#define WATER_T_2_BYTE  0x01

#define LCD_BUTTON_ID   0x00
#define LCD_BUTTON_BYTE 0x00

#endif /* INC_CAN_BUS_PROTOCOL_H_ */
