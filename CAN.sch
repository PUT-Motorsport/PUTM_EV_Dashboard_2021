EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
Title "PUTM_EV_Dashboard_2021"
Date ""
Rev ""
Comp "PUT Motorsport"
Comment1 "Piotr Kwiatkowski"
Comment2 "Tomasz Wojciechowski"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_CAN_LIN:MCP2562-H-SN U2
U 1 1 61B06F42
P 4450 3350
F 0 "U2" H 4450 3928 50  0000 C CNN
F 1 "MCP2562-H-SN" H 4450 3837 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 61B06FE5
P 3850 3800
F 0 "#PWR0116" H 3850 3550 50  0001 C CNN
F 1 "GND" H 3855 3627 50  0000 C CNN
F 2 "" H 3850 3800 50  0001 C CNN
F 3 "" H 3850 3800 50  0001 C CNN
	1    3850 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3550 3850 3550
Wire Wire Line
	3850 3550 3850 3800
$Comp
L power:GND #PWR0117
U 1 1 61B0700C
P 4450 3750
F 0 "#PWR0117" H 4450 3500 50  0001 C CNN
F 1 "GND" H 4455 3577 50  0000 C CNN
F 2 "" H 4450 3750 50  0001 C CNN
F 3 "" H 4450 3750 50  0001 C CNN
	1    4450 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 61B070DF
P 4250 2650
F 0 "#PWR0118" H 4250 2400 50  0001 C CNN
F 1 "GND" V 4255 2522 50  0000 R CNN
F 2 "" H 4250 2650 50  0001 C CNN
F 3 "" H 4250 2650 50  0001 C CNN
	1    4250 2650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0119
U 1 1 61B0717A
P 4450 2450
F 0 "#PWR0119" H 4450 2300 50  0001 C CNN
F 1 "+5V" H 4465 2623 50  0000 C CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "" H 4450 2450 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 61B07202
P 3250 3450
F 0 "#PWR0120" H 3250 3300 50  0001 C CNN
F 1 "+3.3V" V 3265 3578 50  0000 L CNN
F 2 "" H 3250 3450 50  0001 C CNN
F 3 "" H 3250 3450 50  0001 C CNN
	1    3250 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 61B07269
P 3500 3650
F 0 "#PWR0121" H 3500 3400 50  0001 C CNN
F 1 "GND" H 3505 3477 50  0000 C CNN
F 2 "" H 3500 3650 50  0001 C CNN
F 3 "" H 3500 3650 50  0001 C CNN
	1    3500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 61B072AA
P 3500 3550
F 0 "C9" H 3592 3596 50  0000 L CNN
F 1 "C_Small" H 3592 3505 50  0000 L CNN
F 2 "" H 3500 3550 50  0001 C CNN
F 3 "~" H 3500 3550 50  0001 C CNN
	1    3500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3450 3500 3450
Wire Wire Line
	3500 3450 3950 3450
Connection ~ 3500 3450
$Comp
L Device:C_Small C10
U 1 1 61B0746F
P 4350 2650
F 0 "C10" V 4121 2650 50  0000 C CNN
F 1 "C_Small" V 4212 2650 50  0000 C CNN
F 2 "" H 4350 2650 50  0001 C CNN
F 3 "~" H 4350 2650 50  0001 C CNN
	1    4350 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2450 4450 2650
Connection ~ 4450 2650
Wire Wire Line
	4450 2650 4450 2950
Wire Wire Line
	3700 3150 3950 3150
Wire Wire Line
	3700 3250 3950 3250
Text GLabel 3700 3150 0    50   Input ~ 0
TX_CAN
Text GLabel 3700 3250 0    50   Input ~ 0
RX_CAN
$Comp
L Device:R R3
U 1 1 61B077A7
P 5250 3350
F 0 "R3" H 5320 3396 50  0000 L CNN
F 1 "R" H 5320 3305 50  0000 L CNN
F 2 "" V 5180 3350 50  0001 C CNN
F 3 "~" H 5250 3350 50  0001 C CNN
	1    5250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3250 5050 3250
Wire Wire Line
	5050 3250 5050 3200
Wire Wire Line
	5050 3200 5250 3200
Wire Wire Line
	4950 3450 5050 3450
Wire Wire Line
	5050 3450 5050 3500
Wire Wire Line
	5050 3500 5250 3500
$Comp
L Device:D_TVS_x2_AAC D1
U 1 1 61B07D4F
P 6000 3350
F 0 "D1" V 6046 3428 50  0000 L CNN
F 1 "D_TVS_x2_AAC" V 5955 3428 50  0000 L CNN
F 2 "" H 5850 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    6000 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61B07DCB
P 6150 3350
F 0 "#PWR0122" H 6150 3100 50  0001 C CNN
F 1 "GND" V 6155 3222 50  0000 R CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 3200 5050 3000
Wire Wire Line
	5050 3000 6000 3000
Connection ~ 5050 3200
Wire Wire Line
	5050 3500 5050 3700
Wire Wire Line
	5050 3700 6000 3700
Connection ~ 5050 3500
Connection ~ 6000 3700
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 61B0811E
P 7050 3300
F 0 "J2" H 7077 3276 50  0000 L CNN
F 1 "Conn_01x02_Female" H 7077 3185 50  0000 L CNN
F 2 "" H 7050 3300 50  0001 C CNN
F 3 "~" H 7050 3300 50  0001 C CNN
	1    7050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3700 6850 3400
Wire Wire Line
	6000 3700 6850 3700
Wire Wire Line
	6850 3300 6850 3000
Wire Wire Line
	6850 3000 6000 3000
Connection ~ 6000 3000
$EndSCHEMATC