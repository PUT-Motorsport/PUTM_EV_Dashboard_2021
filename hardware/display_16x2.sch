EESchema Schematic File Version 4
LIBS:dash_hw-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
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
L Device:R_POT RV1
U 1 1 620FC9A3
P 5550 2750
F 0 "RV1" H 5480 2704 50  0000 R CNN
F 1 "10k" H 5480 2795 50  0000 R CNN
F 2 "Potentiometer_SMD:Potentiometer_Vishay_TS53YJ_Vertical" H 5550 2750 50  0001 C CNN
F 3 "~" H 5550 2750 50  0001 C CNN
	1    5550 2750
	-1   0    0    1   
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 620FE188
P 4600 3350
F 0 "DS1" H 4400 4100 50  0000 C CNN
F 1 "WC1602A" H 4800 4100 50  0000 C CNN
F 2 "Display:WC1602A" H 4600 2450 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 5300 3350 50  0001 C CNN
	1    4600 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 62101DBF
P 4600 4150
F 0 "#PWR037" H 4600 3900 50  0001 C CNN
F 1 "GND" H 4605 3977 50  0000 C CNN
F 2 "" H 4600 4150 50  0001 C CNN
F 3 "" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2750 5400 2750
$Comp
L power:GND #PWR039
U 1 1 62102476
P 5550 3200
F 0 "#PWR039" H 5550 2950 50  0001 C CNN
F 1 "GND" H 5555 3027 50  0000 C CNN
F 2 "" H 5550 3200 50  0001 C CNN
F 3 "" H 5550 3200 50  0001 C CNN
	1    5550 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 621030E4
P 5150 2500
F 0 "R32" H 5220 2546 50  0000 L CNN
F 1 "0R" H 5220 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5080 2500 50  0001 C CNN
F 3 "~" H 5150 2500 50  0001 C CNN
	1    5150 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR038
U 1 1 62103E40
P 5150 2200
F 0 "#PWR038" H 5150 2050 50  0001 C CNN
F 1 "+5V" H 5165 2373 50  0000 C CNN
F 2 "" H 5150 2200 50  0001 C CNN
F 3 "" H 5150 2200 50  0001 C CNN
	1    5150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3050 5150 3050
Wire Wire Line
	5150 2200 5150 2250
Wire Wire Line
	5150 2650 5150 3050
Wire Wire Line
	4600 2550 4600 2250
Wire Wire Line
	4600 2250 5150 2250
Connection ~ 5150 2250
Wire Wire Line
	5150 2250 5150 2350
Wire Wire Line
	5150 2250 5550 2250
Wire Wire Line
	5550 2250 5550 2600
Wire Wire Line
	5000 3150 5550 3150
Wire Wire Line
	5550 3200 5550 3150
Wire Wire Line
	5550 3150 5550 2900
Connection ~ 5550 3150
NoConn ~ 4200 3250
NoConn ~ 4200 3350
NoConn ~ 4200 3450
NoConn ~ 4200 3550
Text HLabel 4200 3650 0    50   Input ~ 0
D4
Text HLabel 4200 3750 0    50   Input ~ 0
D5
Text HLabel 4200 3850 0    50   Input ~ 0
D6
Text HLabel 4200 3950 0    50   Input ~ 0
D7
Wire Wire Line
	4200 2850 3900 2850
Wire Wire Line
	3900 2850 3900 3050
$Comp
L power:GND #PWR036
U 1 1 6210717D
P 3900 3050
F 0 "#PWR036" H 3900 2800 50  0001 C CNN
F 1 "GND" H 3905 2877 50  0000 C CNN
F 2 "" H 3900 3050 50  0001 C CNN
F 3 "" H 3900 3050 50  0001 C CNN
	1    3900 3050
	1    0    0    -1  
$EndComp
Text HLabel 4200 2750 0    50   Input ~ 0
E
Text HLabel 4200 2950 0    50   Input ~ 0
RS
$EndSCHEMATC
