EESchema Schematic File Version 4
LIBS:dash_hw-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L Interface_CAN_LIN:MCP2562-H-SN U3
U 1 1 61B06F42
P 4450 3350
F 0 "U3" H 4100 3700 50  0000 C CNN
F 1 "MCP2562-H-SN" H 4800 3750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 61B06FE5
P 3850 3800
F 0 "#PWR09" H 3850 3550 50  0001 C CNN
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
L power:GND #PWR011
U 1 1 61B0700C
P 4450 3750
F 0 "#PWR011" H 4450 3500 50  0001 C CNN
F 1 "GND" H 4455 3577 50  0000 C CNN
F 2 "" H 4450 3750 50  0001 C CNN
F 3 "" H 4450 3750 50  0001 C CNN
	1    4450 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 61B0717A
P 4450 2450
F 0 "#PWR010" H 4450 2300 50  0001 C CNN
F 1 "+5V" H 4465 2623 50  0000 C CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "" H 4450 2450 50  0001 C CNN
	1    4450 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 61B07202
P 3250 3450
F 0 "#PWR06" H 3250 3300 50  0001 C CNN
F 1 "+3.3V" V 3265 3578 50  0000 L CNN
F 2 "" H 3250 3450 50  0001 C CNN
F 3 "" H 3250 3450 50  0001 C CNN
	1    3250 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 61B07269
P 3400 3750
F 0 "#PWR07" H 3400 3500 50  0001 C CNN
F 1 "GND" H 3405 3577 50  0000 C CNN
F 2 "" H 3400 3750 50  0001 C CNN
F 3 "" H 3400 3750 50  0001 C CNN
	1    3400 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 61B072AA
P 3400 3650
F 0 "C7" H 3492 3696 50  0000 L CNN
F 1 "100nF" H 3492 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3400 3650 50  0001 C CNN
F 3 "~" H 3400 3650 50  0001 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61B077A7
P 6700 3500
F 0 "R2" H 6770 3546 50  0000 L CNN
F 1 "120R" H 6770 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6630 3500 50  0001 C CNN
F 3 "~" H 6700 3500 50  0001 C CNN
	1    6700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3250 5050 3250
Wire Wire Line
	4950 3450 5050 3450
$Comp
L Device:D_TVS_x2_AAC D4
U 1 1 61B07D4F
P 6000 3350
F 0 "D4" V 6046 3428 50  0000 L CNN
F 1 "PESD2CAN.215" V 5955 3428 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5850 3350 50  0001 C CNN
F 3 "~" H 5850 3350 50  0001 C CNN
	1    6000 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61B07DCB
P 6150 3350
F 0 "#PWR012" H 6150 3100 50  0001 C CNN
F 1 "GND" V 6155 3222 50  0000 R CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 3000 6000 3000
Wire Wire Line
	5050 3700 6000 3700
Connection ~ 6000 3700
Connection ~ 6000 3000
Text HLabel 2900 3150 0    50   Input ~ 0
TXD
Text HLabel 2900 3250 0    50   Output ~ 0
RXD
Wire Wire Line
	2900 3150 3950 3150
Wire Wire Line
	2900 3250 3950 3250
Wire Wire Line
	3250 3450 3400 3450
Wire Wire Line
	3400 3550 3400 3450
Connection ~ 3400 3450
Wire Wire Line
	3400 3450 3950 3450
Wire Wire Line
	5050 3000 5050 3250
Wire Wire Line
	5050 3450 5050 3700
Text HLabel 7250 3000 2    50   BiDi ~ 0
CANH
Text HLabel 7250 3700 2    50   BiDi ~ 0
CANL
Wire Wire Line
	6000 3000 6700 3000
Wire Wire Line
	6000 3700 6700 3700
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FD7AB56
P 6700 3200
F 0 "JP1" V 6700 3268 50  0000 L CNN
F 1 "a" V 6745 3268 50  0001 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 6700 3200 50  0001 C CNN
F 3 "~" H 6700 3200 50  0001 C CNN
	1    6700 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 3050 6700 3000
Connection ~ 6700 3000
Wire Wire Line
	6700 3000 7250 3000
Wire Wire Line
	6700 3650 6700 3700
Connection ~ 6700 3700
Wire Wire Line
	6700 3700 7250 3700
$Comp
L Device:C_Small C8
U 1 1 61B0746F
P 3800 2650
F 0 "C8" V 3571 2650 50  0000 C CNN
F 1 "1uF" V 3662 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3800 2650 50  0001 C CNN
F 3 "~" H 3800 2650 50  0001 C CNN
	1    3800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2800 3800 2750
Wire Wire Line
	4450 2450 4450 2500
Wire Wire Line
	3800 2550 3800 2500
Wire Wire Line
	3800 2500 4450 2500
Connection ~ 4450 2500
Wire Wire Line
	4450 2500 4450 2950
$Comp
L power:GND #PWR08
U 1 1 5FD7F8A4
P 3800 2800
F 0 "#PWR08" H 3800 2550 50  0001 C CNN
F 1 "GND" H 3805 2627 50  0000 C CNN
F 2 "" H 3800 2800 50  0001 C CNN
F 3 "" H 3800 2800 50  0001 C CNN
	1    3800 2800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
