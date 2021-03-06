EESchema Schematic File Version 4
LIBS:dash_hw-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C_Small C?
U 1 1 5FDCC22A
P 5250 2350
AR Path="/5FDCC22A" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC22A" Ref="C17"  Part="1" 
F 0 "C17" H 5342 2396 50  0000 L CNN
F 1 "100nF" H 5342 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5250 2350 50  0001 C CNN
F 3 "~" H 5250 2350 50  0001 C CNN
	1    5250 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDCC230
P 5650 2350
AR Path="/5FDCC230" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC230" Ref="C18"  Part="1" 
F 0 "C18" H 5742 2396 50  0000 L CNN
F 1 "100nF" H 5742 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5650 2350 50  0001 C CNN
F 3 "~" H 5650 2350 50  0001 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDCC236
P 6050 2350
AR Path="/5FDCC236" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC236" Ref="C19"  Part="1" 
F 0 "C19" H 6142 2396 50  0000 L CNN
F 1 "100nF" H 6142 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6050 2350 50  0001 C CNN
F 3 "~" H 6050 2350 50  0001 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDCC23C
P 6450 2350
AR Path="/5FDCC23C" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC23C" Ref="C21"  Part="1" 
F 0 "C21" H 6542 2396 50  0000 L CNN
F 1 "4.7uF" H 6542 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 2350 50  0001 C CNN
F 3 "~" H 6450 2350 50  0001 C CNN
	1    6450 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDCC242
P 6200 3050
AR Path="/5FDCC242" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC242" Ref="C20"  Part="1" 
F 0 "C20" H 6292 3096 50  0000 L CNN
F 1 "100nF" H 6292 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6200 3050 50  0001 C CNN
F 3 "~" H 6200 3050 50  0001 C CNN
	1    6200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5FDCC248
P 5100 2700
AR Path="/5FDCC248" Ref="L?"  Part="1" 
AR Path="/5FDBF033/5FDCC248" Ref="L3"  Part="1" 
F 0 "L3" H 5147 2746 50  0000 L CNN
F 1 "10uH" H 5147 2655 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 5100 2700 50  0001 C CNN
F 3 "~" H 5100 2700 50  0001 C CNN
	1    5100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDCC24E
P 6200 3200
AR Path="/5FDCC24E" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC24E" Ref="#PWR092"  Part="1" 
F 0 "#PWR092" H 6200 2950 50  0001 C CNN
F 1 "GND" H 6205 3027 50  0000 C CNN
F 2 "" H 6200 3200 50  0001 C CNN
F 3 "" H 6200 3200 50  0001 C CNN
	1    6200 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDCC254
P 6450 2650
AR Path="/5FDCC254" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC254" Ref="#PWR094"  Part="1" 
F 0 "#PWR094" H 6450 2400 50  0001 C CNN
F 1 "GND" H 6455 2477 50  0000 C CNN
F 2 "" H 6450 2650 50  0001 C CNN
F 3 "" H 6450 2650 50  0001 C CNN
	1    6450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FDCC25A
P 6450 2050
AR Path="/5FDCC25A" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC25A" Ref="#PWR093"  Part="1" 
F 0 "#PWR093" H 6450 1900 50  0001 C CNN
F 1 "+3.3V" H 6465 2223 50  0000 C CNN
F 2 "" H 6450 2050 50  0001 C CNN
F 3 "" H 6450 2050 50  0001 C CNN
	1    6450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3050 4700 2150
Wire Wire Line
	4700 2150 4800 2150
Wire Wire Line
	6450 2150 6450 2250
Wire Wire Line
	6450 2050 6450 2150
Connection ~ 6450 2150
Wire Wire Line
	6050 2250 6050 2150
Connection ~ 6050 2150
Wire Wire Line
	6050 2150 6450 2150
Wire Wire Line
	5650 2250 5650 2150
Connection ~ 5650 2150
Wire Wire Line
	5650 2150 6050 2150
Wire Wire Line
	5250 2250 5250 2150
Wire Wire Line
	4800 3050 4800 2150
Connection ~ 4800 2150
Wire Wire Line
	4800 2150 4900 2150
Wire Wire Line
	4900 3050 4900 2150
Connection ~ 4900 2150
Wire Wire Line
	4900 2150 5000 2150
Wire Wire Line
	5000 3050 5000 2150
Connection ~ 5000 2150
Wire Wire Line
	5000 2150 5100 2150
Wire Wire Line
	5100 2600 5100 2150
Wire Wire Line
	5100 3050 5100 2900
Wire Wire Line
	5100 2900 6200 2900
Connection ~ 5100 2900
Wire Wire Line
	5100 2900 5100 2800
Wire Wire Line
	6200 3150 6200 3200
Wire Wire Line
	6450 2650 6450 2500
Wire Wire Line
	5250 2150 5100 2150
Connection ~ 5100 2150
$Comp
L power:GND #PWR?
U 1 1 5FDCC282
P 4850 6500
AR Path="/5FDCC282" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC282" Ref="#PWR091"  Part="1" 
F 0 "#PWR091" H 4850 6250 50  0001 C CNN
F 1 "GND" H 4855 6327 50  0000 C CNN
F 2 "" H 4850 6500 50  0001 C CNN
F 3 "" H 4850 6500 50  0001 C CNN
	1    4850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6450 4850 6450
Wire Wire Line
	5000 6450 5000 6050
Wire Wire Line
	4900 6050 4900 6450
Connection ~ 4900 6450
Wire Wire Line
	4900 6450 5000 6450
Wire Wire Line
	4800 6050 4800 6450
Connection ~ 4800 6450
Wire Wire Line
	4700 6050 4700 6450
Wire Wire Line
	4700 6450 4800 6450
$Comp
L Device:C_Small C?
U 1 1 5FDCC291
P 3250 2800
AR Path="/5FDCC291" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC291" Ref="C14"  Part="1" 
F 0 "C14" H 3342 2846 50  0000 L CNN
F 1 "100nF" H 3342 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3250 2800 50  0001 C CNN
F 3 "~" H 3250 2800 50  0001 C CNN
	1    3250 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDCC297
P 3250 3050
AR Path="/5FDCC297" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC297" Ref="#PWR089"  Part="1" 
F 0 "#PWR089" H 3250 2800 50  0001 C CNN
F 1 "GND" H 3255 2877 50  0000 C CNN
F 2 "" H 3250 3050 50  0001 C CNN
F 3 "" H 3250 3050 50  0001 C CNN
	1    3250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2900 3250 3050
$Comp
L Device:Crystal Y?
U 1 1 5FDCC29E
P 3700 3700
AR Path="/5FDCC29E" Ref="Y?"  Part="1" 
AR Path="/5FDBF033/5FDCC29E" Ref="Y1"  Part="1" 
F 0 "Y1" V 3654 3831 50  0000 L CNN
F 1 "Crystal" V 3745 3831 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 3700 3700 50  0001 C CNN
F 3 "~" H 3700 3700 50  0001 C CNN
	1    3700 3700
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDCC2A4
P 3350 3550
AR Path="/5FDCC2A4" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC2A4" Ref="C15"  Part="1" 
F 0 "C15" V 3300 3600 50  0000 L CNN
F 1 "22pF" V 3200 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3350 3550 50  0001 C CNN
F 3 "~" H 3350 3550 50  0001 C CNN
	1    3350 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FDCC2AA
P 3350 3850
AR Path="/5FDCC2AA" Ref="C?"  Part="1" 
AR Path="/5FDBF033/5FDCC2AA" Ref="C16"  Part="1" 
F 0 "C16" V 3300 3900 50  0000 L CNN
F 1 "22pF" V 3200 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3350 3850 50  0001 C CNN
F 3 "~" H 3350 3850 50  0001 C CNN
	1    3350 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDCC2B0
P 3000 3550
AR Path="/5FDCC2B0" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC2B0" Ref="#PWR086"  Part="1" 
F 0 "#PWR086" H 3000 3300 50  0001 C CNN
F 1 "GND" V 3005 3422 50  0000 R CNN
F 2 "" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDCC2B6
P 3000 3850
AR Path="/5FDCC2B6" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC2B6" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 3000 3600 50  0001 C CNN
F 1 "GND" V 3005 3722 50  0000 R CNN
F 2 "" H 3000 3850 50  0001 C CNN
F 3 "" H 3000 3850 50  0001 C CNN
	1    3000 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3550 3250 3550
Wire Wire Line
	3000 3850 3250 3850
Wire Wire Line
	3450 3550 3700 3550
Wire Wire Line
	4200 3550 4200 3650
Connection ~ 3700 3550
Wire Wire Line
	3700 3550 4200 3550
Wire Wire Line
	4200 3750 4200 3850
Wire Wire Line
	4200 3850 3700 3850
Connection ~ 3700 3850
Wire Wire Line
	3700 3850 3450 3850
$Comp
L power:GND #PWR?
U 1 1 5FDCC2C6
P 3900 3450
AR Path="/5FDCC2C6" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC2C6" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 3900 3200 50  0001 C CNN
F 1 "GND" V 3905 3322 50  0000 R CNN
F 2 "" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FDCC2CC
P 4050 3450
AR Path="/5FDCC2CC" Ref="R?"  Part="1" 
AR Path="/5FDBF033/5FDCC2CC" Ref="R110"  Part="1" 
F 0 "R110" V 3843 3450 50  0000 C CNN
F 1 "10k" V 3934 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 3450 50  0001 C CNN
F 3 "~" H 4050 3450 50  0001 C CNN
	1    4050 3450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5FDCC2D2
P 3600 2800
AR Path="/5FDCC2D2" Ref="SW?"  Part="1" 
AR Path="/5FDBF033/5FDCC2D2" Ref="SW1"  Part="1" 
F 0 "SW1" V 3554 2948 50  0000 L CNN
F 1 "SW_Push" V 3645 2948 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3600 3000 50  0001 C CNN
F 3 "" H 3600 3000 50  0001 C CNN
	1    3600 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3000 3600 3050
Wire Wire Line
	3600 3050 3250 3050
Connection ~ 3250 3050
Wire Wire Line
	3250 2700 3250 2600
Wire Wire Line
	3250 2600 3600 2600
Wire Wire Line
	3600 2600 4200 2600
Wire Wire Line
	4200 2600 4200 3250
Connection ~ 3600 2600
$Comp
L power:+3.3V #PWR?
U 1 1 5FDCC2E0
P 3250 2250
AR Path="/5FDCC2E0" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC2E0" Ref="#PWR088"  Part="1" 
F 0 "#PWR088" H 3250 2100 50  0001 C CNN
F 1 "+3.3V" H 3265 2423 50  0000 C CNN
F 2 "" H 3250 2250 50  0001 C CNN
F 3 "" H 3250 2250 50  0001 C CNN
	1    3250 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDCC2E6
P 3250 2400
AR Path="/5FDCC2E6" Ref="R?"  Part="1" 
AR Path="/5FDBF033/5FDCC2E6" Ref="R105"  Part="1" 
F 0 "R105" H 3180 2354 50  0000 R CNN
F 1 "10k" H 3180 2445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3180 2400 50  0001 C CNN
F 3 "~" H 3250 2400 50  0001 C CNN
	1    3250 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 2550 3250 2600
Connection ~ 3250 2600
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5FDCC2EF
P 8400 1650
AR Path="/5FDCC2EF" Ref="J?"  Part="1" 
AR Path="/5FDBF033/5FDCC2EF" Ref="J3"  Part="1" 
F 0 "J3" H 8506 2028 50  0000 C CNN
F 1 "Conn_01x06_Male" H 8506 1937 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 8400 1650 50  0001 C CNN
F 3 "~" H 8400 1650 50  0001 C CNN
	1    8400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1550 8600 1550
Wire Wire Line
	9250 1750 8600 1750
Wire Wire Line
	9250 1850 8600 1850
Wire Wire Line
	9250 1950 8600 1950
NoConn ~ 9250 1950
$Comp
L power:+3.3V #PWR?
U 1 1 5FDCC2FD
P 9050 1200
AR Path="/5FDCC2FD" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC2FD" Ref="#PWR095"  Part="1" 
F 0 "#PWR095" H 9050 1050 50  0001 C CNN
F 1 "+3.3V" H 9065 1373 50  0000 C CNN
F 2 "" H 9050 1200 50  0001 C CNN
F 3 "" H 9050 1200 50  0001 C CNN
	1    9050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1200 9050 1450
Wire Wire Line
	9050 1450 8600 1450
$Comp
L power:GND #PWR?
U 1 1 5FDCC305
P 9050 2200
AR Path="/5FDCC305" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC305" Ref="#PWR096"  Part="1" 
F 0 "#PWR096" H 9050 1950 50  0001 C CNN
F 1 "GND" H 9055 2027 50  0000 C CNN
F 2 "" H 9050 2200 50  0001 C CNN
F 3 "" H 9050 2200 50  0001 C CNN
	1    9050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1650 9050 2200
Wire Wire Line
	9050 1650 8600 1650
$Comp
L Device:R R?
U 1 1 5FDCC315
P 3400 4800
AR Path="/5FDCC315" Ref="R?"  Part="1" 
AR Path="/5FCC310D/5FDCC315" Ref="R?"  Part="1" 
AR Path="/5FDBF033/5FDCC315" Ref="R109"  Part="1" 
F 0 "R109" V 3300 4800 50  0000 C CNN
F 1 "620" V 3400 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 4800 50  0001 C CNN
F 3 "~" H 3400 4800 50  0001 C CNN
	1    3400 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FDCC31B
P 2950 4800
AR Path="/5FDCC31B" Ref="D?"  Part="1" 
AR Path="/5FCC310D/5FDCC31B" Ref="D?"  Part="1" 
AR Path="/5FDBF033/5FDCC31B" Ref="D82"  Part="1" 
F 0 "D82" H 2950 4700 50  0000 C CNN
F 1 "LED" H 2950 4650 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2950 4800 50  0001 C CNN
F 3 "~" H 2950 4800 50  0001 C CNN
	1    2950 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDCC321
P 3400 4600
AR Path="/5FDCC321" Ref="R?"  Part="1" 
AR Path="/5FCC310D/5FDCC321" Ref="R?"  Part="1" 
AR Path="/5FDBF033/5FDCC321" Ref="R108"  Part="1" 
F 0 "R108" V 3300 4600 50  0000 C CNN
F 1 "620" V 3400 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 4600 50  0001 C CNN
F 3 "~" H 3400 4600 50  0001 C CNN
	1    3400 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FDCC327
P 2950 4600
AR Path="/5FDCC327" Ref="D?"  Part="1" 
AR Path="/5FCC310D/5FDCC327" Ref="D?"  Part="1" 
AR Path="/5FDBF033/5FDCC327" Ref="D81"  Part="1" 
F 0 "D81" H 2950 4500 50  0000 C CNN
F 1 "LED" H 2942 4436 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2950 4600 50  0001 C CNN
F 3 "~" H 2950 4600 50  0001 C CNN
	1    2950 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDCC32D
P 3400 4400
AR Path="/5FDCC32D" Ref="R?"  Part="1" 
AR Path="/5FCC310D/5FDCC32D" Ref="R?"  Part="1" 
AR Path="/5FDBF033/5FDCC32D" Ref="R107"  Part="1" 
F 0 "R107" V 3300 4400 50  0000 C CNN
F 1 "620" V 3400 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 4400 50  0001 C CNN
F 3 "~" H 3400 4400 50  0001 C CNN
	1    3400 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FDCC333
P 2950 4400
AR Path="/5FDCC333" Ref="D?"  Part="1" 
AR Path="/5FCC310D/5FDCC333" Ref="D?"  Part="1" 
AR Path="/5FDBF033/5FDCC333" Ref="D80"  Part="1" 
F 0 "D80" H 2950 4300 50  0000 C CNN
F 1 "LED" H 2500 4650 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2950 4400 50  0001 C CNN
F 3 "~" H 2950 4400 50  0001 C CNN
	1    2950 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FDCC339
P 2500 4900
AR Path="/5FDCC339" Ref="#PWR?"  Part="1" 
AR Path="/5FCC310D/5FDCC339" Ref="#PWR?"  Part="1" 
AR Path="/5FDBF033/5FDCC339" Ref="#PWR085"  Part="1" 
F 0 "#PWR085" H 2500 4650 50  0001 C CNN
F 1 "GND" H 2505 4727 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FDCC33F
P 3400 4200
AR Path="/5FDCC33F" Ref="R?"  Part="1" 
AR Path="/5FCC310D/5FDCC33F" Ref="R?"  Part="1" 
AR Path="/5FDBF033/5FDCC33F" Ref="R106"  Part="1" 
F 0 "R106" V 3300 4200 50  0000 C CNN
F 1 "620" V 3400 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3330 4200 50  0001 C CNN
F 3 "~" H 3400 4200 50  0001 C CNN
	1    3400 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5FDCC345
P 2950 4200
AR Path="/5FDCC345" Ref="D?"  Part="1" 
AR Path="/5FCC310D/5FDCC345" Ref="D?"  Part="1" 
AR Path="/5FDBF033/5FDCC345" Ref="D79"  Part="1" 
F 0 "D79" H 2950 4100 50  0000 C CNN
F 1 "LED" H 2950 4100 50  0001 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2950 4200 50  0001 C CNN
F 3 "~" H 2950 4200 50  0001 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2150 5650 2150
Connection ~ 5250 2150
Wire Wire Line
	5250 2450 5250 2500
Wire Wire Line
	5250 2500 5650 2500
Connection ~ 6450 2500
Wire Wire Line
	6450 2500 6450 2450
Wire Wire Line
	6050 2450 6050 2500
Connection ~ 6050 2500
Wire Wire Line
	6050 2500 6450 2500
Wire Wire Line
	5650 2450 5650 2500
Connection ~ 5650 2500
Wire Wire Line
	5650 2500 6050 2500
Wire Wire Line
	3050 2600 3250 2600
Wire Wire Line
	4850 6500 4850 6450
Connection ~ 4850 6450
Wire Wire Line
	4850 6450 4900 6450
Wire Wire Line
	3550 4200 3750 4200
Wire Wire Line
	3750 4200 3750 4350
Wire Wire Line
	3750 4350 4200 4350
Wire Wire Line
	3550 4400 3700 4400
Wire Wire Line
	3700 4400 3700 4450
Wire Wire Line
	3700 4450 4200 4450
Wire Wire Line
	4200 4550 3700 4550
Wire Wire Line
	3700 4550 3700 4600
Wire Wire Line
	3700 4600 3550 4600
Wire Wire Line
	3100 4200 3250 4200
Wire Wire Line
	3250 4400 3100 4400
Wire Wire Line
	3100 4600 3250 4600
Wire Wire Line
	3250 4800 3100 4800
Wire Wire Line
	2800 4200 2500 4200
Wire Wire Line
	2500 4200 2500 4400
Wire Wire Line
	2800 4400 2500 4400
Connection ~ 2500 4400
Wire Wire Line
	2500 4400 2500 4600
Wire Wire Line
	2800 4600 2500 4600
Connection ~ 2500 4600
Wire Wire Line
	2500 4600 2500 4800
Wire Wire Line
	2800 4800 2500 4800
Connection ~ 2500 4800
Wire Wire Line
	2500 4800 2500 4900
$Comp
L MCU_ST_STM32F1:STM32F103C8Tx U?
U 1 1 5FDCC376
P 4900 4550
AR Path="/5FDCC376" Ref="U?"  Part="1" 
AR Path="/5FDBF033/5FDCC376" Ref="U20"  Part="1" 
F 0 "U20" H 4400 3050 50  0000 C CNN
F 1 "STM32F103C8Tx" H 5350 3050 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 4300 3150 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00161566.pdf" H 4900 4550 50  0001 C CNN
	1    4900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2900 6200 2950
Text Label 9250 1550 0    50   ~ 0
SW_CLK
Text Label 9250 1750 0    50   ~ 0
SW_DIO
Text Label 9250 1850 0    50   ~ 0
SW_NRST
Text Label 6100 5750 0    50   ~ 0
SW_CLK
Text Label 6100 5650 0    50   ~ 0
SW_DIO
Wire Wire Line
	5500 5650 6100 5650
Wire Wire Line
	5500 5750 6100 5750
Text HLabel 4200 5250 0    50   Output ~ 0
TX_CAN
Text HLabel 4200 5150 0    50   Input ~ 0
RX_CAN
Text HLabel 5500 5250 2    50   Output ~ 0
USART1_TX
Text HLabel 5500 5350 2    50   Input ~ 0
USART1_RX
Text HLabel 5500 5450 2    50   Input ~ 0
USART1_CTS
Text HLabel 5500 5550 2    50   Output ~ 0
USART1_RTS
Wire Wire Line
	3700 5350 4200 5350
Text HLabel 4200 5550 0    50   Output ~ 0
SPI2_CS
Text HLabel 4200 5650 0    50   Output ~ 0
SPI2_CLK
Text HLabel 4200 5850 0    50   Output ~ 0
SPI2_MOSI
Text HLabel 5500 4750 2    50   Output ~ 0
SPI1_CS
Text HLabel 5500 4850 2    50   Output ~ 0
SPI1_CLK
Text HLabel 5500 5050 2    50   Output ~ 0
SPI1_MOSI
Text Label 3050 2600 2    50   ~ 0
SW_NRST
Text HLabel 5500 5850 2    50   Output ~ 0
LCD_RS
Text HLabel 4200 4650 0    50   Output ~ 0
LCD_E
Wire Wire Line
	3550 4800 3700 4800
Wire Wire Line
	3700 4800 3700 5350
Text HLabel 4200 4750 0    50   Output ~ 0
LCD_D4
Text HLabel 4200 4850 0    50   Output ~ 0
LCD_D5
Text HLabel 4200 4950 0    50   Output ~ 0
LCD_D6
Text HLabel 4200 5050 0    50   Output ~ 0
LCD_D7
$EndSCHEMATC
