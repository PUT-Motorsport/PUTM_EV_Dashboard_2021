EESchema Schematic File Version 4
LIBS:dash_hw-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L power:+5V #PWR031
U 1 1 5FD44599
P 6200 1400
F 0 "#PWR031" H 6200 1250 50  0001 C CNN
F 1 "+5V" H 6215 1573 50  0000 C CNN
F 2 "" H 6200 1400 50  0001 C CNN
F 3 "" H 6200 1400 50  0001 C CNN
	1    6200 1400
	1    0    0    -1  
$EndComp
$Comp
L dash_hw-rescue:USB_B_Mini-Connector J?
U 1 1 5FD44A28
P 3600 2900
AR Path="/5FD44A28" Ref="J?"  Part="1" 
AR Path="/5FD4381C/5FD44A28" Ref="J2"  Part="1" 
F 0 "J2" H 3655 3367 50  0000 C CNN
F 1 "USB_B_Mini" H 3655 3276 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 3750 2850 50  0001 C CNN
F 3 "~" H 3750 2850 50  0001 C CNN
	1    3600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5FD44A8C
P 3600 3450
F 0 "#PWR025" H 3600 3200 50  0001 C CNN
F 1 "GND" H 3605 3277 50  0000 C CNN
F 2 "" H 3600 3450 50  0001 C CNN
F 3 "" H 3600 3450 50  0001 C CNN
	1    3600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3300 3600 3350
Wire Wire Line
	3500 3300 3500 3350
Wire Wire Line
	3500 3350 3600 3350
Connection ~ 3600 3350
Wire Wire Line
	3600 3350 3600 3450
NoConn ~ 3900 3100
Wire Wire Line
	4150 2700 4100 2700
$Comp
L Interface_USB:FT232RL U10
U 1 1 5FD99CFA
P 6100 3300
F 0 "U10" H 6550 4200 50  0000 C CNN
F 1 "FT232RL" H 6550 4300 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 7200 2400 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 6100 3300 50  0001 C CNN
	1    6100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2900 5300 2900
Wire Wire Line
	3900 3000 5300 3000
$Comp
L Device:L L2
U 1 1 5FDA0F8F
P 4300 2700
F 0 "L2" V 4490 2700 50  0000 C CNN
F 1 "KoralikFerrytowy" V 4399 2700 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 4300 2700 50  0001 C CNN
F 3 "~" H 4300 2700 50  0001 C CNN
	1    4300 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5FDA1B95
P 7000 1800
F 0 "C12" H 6850 1750 50  0000 C CNN
F 1 "4.7uF" H 6850 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 1800 50  0001 C CNN
F 3 "~" H 7000 1800 50  0001 C CNN
	1    7000 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5FDA294E
P 7350 1800
F 0 "C13" H 7200 1750 50  0000 C CNN
F 1 "100nF" H 7200 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7350 1800 50  0001 C CNN
F 3 "~" H 7350 1800 50  0001 C CNN
	1    7350 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 2300 6200 1600
Wire Wire Line
	6200 1600 7000 1600
Wire Wire Line
	7350 1600 7350 1700
Wire Wire Line
	7000 1700 7000 1600
Connection ~ 7000 1600
Wire Wire Line
	7000 1600 7350 1600
Wire Wire Line
	7000 1900 7000 2050
Wire Wire Line
	7000 2050 7350 2050
Wire Wire Line
	7350 2050 7350 1900
$Comp
L power:GND #PWR032
U 1 1 5FDA4EF3
P 7350 2150
F 0 "#PWR032" H 7350 1900 50  0001 C CNN
F 1 "GND" H 7355 1977 50  0000 C CNN
F 2 "" H 7350 2150 50  0001 C CNN
F 3 "" H 7350 2150 50  0001 C CNN
	1    7350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2150 7350 2050
Connection ~ 7350 2050
Wire Wire Line
	6200 1600 6200 1400
Connection ~ 6200 1600
$Comp
L Device:R R28
U 1 1 5FDA6A8A
P 4650 3700
F 0 "R28" H 4720 3746 50  0000 L CNN
F 1 "10k" H 4720 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 3700 50  0001 C CNN
F 3 "~" H 4650 3700 50  0001 C CNN
	1    4650 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 5FDA7B86
P 4650 3300
F 0 "R27" H 4720 3346 50  0000 L CNN
F 1 "4k7" H 4720 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4580 3300 50  0001 C CNN
F 3 "~" H 4650 3300 50  0001 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3450 4650 3500
Wire Wire Line
	4650 3500 5000 3500
Connection ~ 4650 3500
Wire Wire Line
	4650 3500 4650 3550
Wire Wire Line
	4650 3150 4650 2700
Wire Wire Line
	4650 2700 4450 2700
Wire Wire Line
	4650 3850 4650 3900
$Comp
L power:GND #PWR026
U 1 1 5FDA9469
P 4650 3900
F 0 "#PWR026" H 4650 3650 50  0001 C CNN
F 1 "GND" V 4655 3772 50  0000 R CNN
F 2 "" H 4650 3900 50  0001 C CNN
F 3 "" H 4650 3900 50  0001 C CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5FDAA5F5
P 4900 2000
F 0 "C10" H 4750 1950 50  0000 C CNN
F 1 "100nF" H 4750 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4900 2000 50  0001 C CNN
F 3 "~" H 4900 2000 50  0001 C CNN
	1    4900 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 2600 5250 2600
Wire Wire Line
	5250 2600 5250 1800
Wire Wire Line
	5250 1800 4900 1800
Wire Wire Line
	4900 1800 4900 1900
Wire Wire Line
	4900 2100 4900 2200
$Comp
L power:GND #PWR027
U 1 1 5FDAC004
P 4900 2200
F 0 "#PWR027" H 4900 1950 50  0001 C CNN
F 1 "GND" H 4905 2027 50  0000 C CNN
F 2 "" H 4900 2200 50  0001 C CNN
F 3 "" H 4900 2200 50  0001 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4450
Wire Wire Line
	5200 4450 5900 4450
Wire Wire Line
	6300 4450 6300 4300
Wire Wire Line
	6200 4300 6200 4450
Connection ~ 6200 4450
Wire Wire Line
	6200 4450 6300 4450
Wire Wire Line
	6100 4300 6100 4450
Connection ~ 6100 4450
Wire Wire Line
	6100 4450 6200 4450
Wire Wire Line
	5900 4300 5900 4450
Connection ~ 5900 4450
Wire Wire Line
	5900 4450 6000 4450
Wire Wire Line
	6000 4450 6000 4550
Connection ~ 6000 4450
Wire Wire Line
	6000 4450 6100 4450
$Comp
L power:GND #PWR030
U 1 1 5FDAF1E2
P 6000 4550
F 0 "#PWR030" H 6000 4300 50  0001 C CNN
F 1 "GND" V 6005 4422 50  0000 R CNN
F 2 "" H 6000 4550 50  0001 C CNN
F 3 "" H 6000 4550 50  0001 C CNN
	1    6000 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5FDB28FC
P 5500 2000
F 0 "C11" H 5350 1950 50  0000 C CNN
F 1 "100nF" H 5350 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5500 2000 50  0001 C CNN
F 3 "~" H 5500 2000 50  0001 C CNN
	1    5500 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5FDB2E56
P 5500 2200
F 0 "#PWR028" H 5500 1950 50  0001 C CNN
F 1 "GND" H 5505 2027 50  0000 C CNN
F 2 "" H 5500 2200 50  0001 C CNN
F 3 "" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2100 5500 2200
Wire Wire Line
	6000 2300 6000 1800
Wire Wire Line
	6000 1800 5500 1800
Wire Wire Line
	5500 1800 5500 1900
Wire Wire Line
	6000 1800 6000 1400
Connection ~ 6000 1800
$Comp
L power:+3.3V #PWR029
U 1 1 5FDB5730
P 6000 1400
F 0 "#PWR029" H 6000 1250 50  0001 C CNN
F 1 "+3.3V" H 6015 1573 50  0000 C CNN
F 2 "" H 6000 1400 50  0001 C CNN
F 3 "" H 6000 1400 50  0001 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5FDB6776
P 4100 3400
F 0 "C9" H 3950 3350 50  0000 C CNN
F 1 "10nF" H 3950 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4100 3400 50  0001 C CNN
F 3 "~" H 4100 3400 50  0001 C CNN
	1    4100 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 2700 4100 3300
Connection ~ 4100 2700
Wire Wire Line
	4100 2700 3900 2700
Wire Wire Line
	4100 3500 4100 3900
Wire Wire Line
	4100 3900 4650 3900
Connection ~ 4650 3900
Text HLabel 7250 2600 2    50   Output ~ 0
TXD
Text HLabel 7250 2700 2    50   Input ~ 0
RXD
Text HLabel 7250 2800 2    50   Output ~ 0
RTS
Text HLabel 7250 2900 2    50   Input ~ 0
CTS
Wire Wire Line
	7250 2600 6900 2600
Wire Wire Line
	6900 2700 7250 2700
Wire Wire Line
	7250 2800 6900 2800
Wire Wire Line
	6900 2900 7250 2900
NoConn ~ 6900 3000
NoConn ~ 6900 3100
NoConn ~ 6900 3200
NoConn ~ 6900 3300
$Comp
L Device:R R31
U 1 1 5FDC3399
P 8700 3700
F 0 "R31" H 8770 3746 50  0000 L CNN
F 1 "10k" H 8770 3655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8630 3700 50  0001 C CNN
F 3 "~" H 8700 3700 50  0001 C CNN
	1    8700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3900 8700 3900
Wire Wire Line
	8700 3900 8700 3850
Wire Wire Line
	8700 3550 8700 3450
$Comp
L power:+5V #PWR035
U 1 1 5FDC673C
P 8700 3450
F 0 "#PWR035" H 8700 3300 50  0001 C CNN
F 1 "+5V" H 8715 3623 50  0000 C CNN
F 2 "" H 8700 3450 50  0001 C CNN
F 3 "" H 8700 3450 50  0001 C CNN
	1    8700 3450
	1    0    0    -1  
$EndComp
NoConn ~ 6900 3800
NoConn ~ 6900 4000
$Comp
L Device:LED D?
U 1 1 5FDCEDEB
P 7900 2900
AR Path="/5FDCEDEB" Ref="D?"  Part="1" 
AR Path="/5FCC310D/5FDCEDEB" Ref="D?"  Part="1" 
AR Path="/5FD4381C/5FDCEDEB" Ref="D5"  Part="1" 
F 0 "D5" V 7900 2750 50  0000 C CNN
F 1 "TXLED" V 8000 2750 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7900 2900 50  0001 C CNN
F 3 "~" H 7900 2900 50  0001 C CNN
	1    7900 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FDCFC14
P 8200 2900
AR Path="/5FDCFC14" Ref="D?"  Part="1" 
AR Path="/5FCC310D/5FDCFC14" Ref="D?"  Part="1" 
AR Path="/5FD4381C/5FDCFC14" Ref="D6"  Part="1" 
F 0 "D6" V 8200 2750 50  0000 C CNN
F 1 "RXLED" V 8300 2750 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8200 2900 50  0001 C CNN
F 3 "~" H 8200 2900 50  0001 C CNN
	1    8200 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 5FDD4052
P 7900 3350
F 0 "R29" H 7970 3396 50  0000 L CNN
F 1 "560R" H 7970 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7830 3350 50  0001 C CNN
F 3 "~" H 7900 3350 50  0001 C CNN
	1    7900 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 5FDD4CED
P 8200 3350
F 0 "R30" H 8270 3396 50  0000 L CNN
F 1 "560R" H 8270 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8130 3350 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3050 8200 3200
Wire Wire Line
	7900 3050 7900 3200
Wire Wire Line
	6900 3600 7900 3600
Wire Wire Line
	7900 3600 7900 3500
Wire Wire Line
	6900 3700 8200 3700
Wire Wire Line
	8200 3700 8200 3500
Wire Wire Line
	7900 2750 7900 2700
Wire Wire Line
	8200 2750 8200 2700
$Comp
L power:+5V #PWR033
U 1 1 5FDDBF60
P 7900 2700
F 0 "#PWR033" H 7900 2550 50  0001 C CNN
F 1 "+5V" H 7915 2873 50  0000 C CNN
F 2 "" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR034
U 1 1 5FDDC9E8
P 8200 2700
F 0 "#PWR034" H 8200 2550 50  0001 C CNN
F 1 "+5V" H 8215 2873 50  0000 C CNN
F 2 "" H 8200 2700 50  0001 C CNN
F 3 "" H 8200 2700 50  0001 C CNN
	1    8200 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3300 5000 3300
Wire Wire Line
	5000 3300 5000 3500
$EndSCHEMATC