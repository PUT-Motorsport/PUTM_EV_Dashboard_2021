EESchema Schematic File Version 4
LIBS:dash_hw-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3500 3200 0    50   Input ~ 0
SER
Text HLabel 3500 3300 0    50   Input ~ 0
SRCLK
Text HLabel 3500 3400 0    50   Input ~ 0
RCLK
Wire Wire Line
	3500 3300 4700 3300
$Comp
L 74xx:74HC595 U?
U 1 1 61F6E690
P 5700 3600
AR Path="/61F6E690" Ref="U?"  Part="1" 
AR Path="/5FCC310D/61F6E690" Ref="U?"  Part="1" 
AR Path="/61EF75E6/61F6E690" Ref="U11"  Part="1" 
F 0 "U11" H 5450 4150 50  0000 C CNN
F 1 "74HC595" H 5900 4150 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 5700 3600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 5700 3600 50  0001 C CNN
	1    5700 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E696
P 6650 2850
AR Path="/61F6E696" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E696" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E696" Ref="R33"  Part="1" 
F 0 "R33" V 6550 2850 50  0000 C CNN
F 1 "200" V 6650 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 2850 50  0001 C CNN
F 3 "~" H 6650 2850 50  0001 C CNN
	1    6650 2850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E69C
P 7150 2850
AR Path="/61F6E69C" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E69C" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E69C" Ref="D7"  Part="1" 
F 0 "D7" H 7150 2750 50  0000 C CNN
F 1 "LED" H 7142 2686 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 2850 50  0001 C CNN
F 3 "~" H 7150 2850 50  0001 C CNN
	1    7150 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6A2
P 6650 3050
AR Path="/61F6E6A2" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6A2" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6A2" Ref="R34"  Part="1" 
F 0 "R34" V 6550 3050 50  0000 C CNN
F 1 "200" V 6650 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 3050 50  0001 C CNN
F 3 "~" H 6650 3050 50  0001 C CNN
	1    6650 3050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6A8
P 7150 3050
AR Path="/61F6E6A8" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6A8" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6A8" Ref="D8"  Part="1" 
F 0 "D8" H 7150 2950 50  0000 C CNN
F 1 "LED" H 7142 2886 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 3050 50  0001 C CNN
F 3 "~" H 7150 3050 50  0001 C CNN
	1    7150 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6AE
P 6650 3250
AR Path="/61F6E6AE" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6AE" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6AE" Ref="R35"  Part="1" 
F 0 "R35" V 6550 3250 50  0000 C CNN
F 1 "200" V 6650 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 3250 50  0001 C CNN
F 3 "~" H 6650 3250 50  0001 C CNN
	1    6650 3250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6B4
P 7150 3250
AR Path="/61F6E6B4" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6B4" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6B4" Ref="D9"  Part="1" 
F 0 "D9" H 7150 3150 50  0000 C CNN
F 1 "LED" H 7142 3086 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 3250 50  0001 C CNN
F 3 "~" H 7150 3250 50  0001 C CNN
	1    7150 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6BA
P 6650 3450
AR Path="/61F6E6BA" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6BA" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6BA" Ref="R36"  Part="1" 
F 0 "R36" V 6550 3450 50  0000 C CNN
F 1 "200" V 6650 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 3450 50  0001 C CNN
F 3 "~" H 6650 3450 50  0001 C CNN
	1    6650 3450
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6C0
P 7150 3450
AR Path="/61F6E6C0" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6C0" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6C0" Ref="D10"  Part="1" 
F 0 "D10" H 7150 3350 50  0000 C CNN
F 1 "LED" H 7142 3286 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 3450 50  0001 C CNN
F 3 "~" H 7150 3450 50  0001 C CNN
	1    7150 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6C6
P 6650 3650
AR Path="/61F6E6C6" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6C6" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6C6" Ref="R37"  Part="1" 
F 0 "R37" V 6550 3650 50  0000 C CNN
F 1 "200" V 6650 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 3650 50  0001 C CNN
F 3 "~" H 6650 3650 50  0001 C CNN
	1    6650 3650
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6CC
P 7150 3650
AR Path="/61F6E6CC" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6CC" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6CC" Ref="D11"  Part="1" 
F 0 "D11" H 7150 3550 50  0000 C CNN
F 1 "LED" H 7142 3486 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 3650 50  0001 C CNN
F 3 "~" H 7150 3650 50  0001 C CNN
	1    7150 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6D2
P 6650 3850
AR Path="/61F6E6D2" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6D2" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6D2" Ref="R38"  Part="1" 
F 0 "R38" V 6550 3850 50  0000 C CNN
F 1 "200" V 6650 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 3850 50  0001 C CNN
F 3 "~" H 6650 3850 50  0001 C CNN
	1    6650 3850
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6D8
P 7150 3850
AR Path="/61F6E6D8" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6D8" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6D8" Ref="D12"  Part="1" 
F 0 "D12" H 7150 3750 50  0000 C CNN
F 1 "LED" H 7142 3686 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 3850 50  0001 C CNN
F 3 "~" H 7150 3850 50  0001 C CNN
	1    7150 3850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6DE
P 6650 4050
AR Path="/61F6E6DE" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6DE" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6DE" Ref="R39"  Part="1" 
F 0 "R39" V 6550 4050 50  0000 C CNN
F 1 "200" V 6650 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 4050 50  0001 C CNN
F 3 "~" H 6650 4050 50  0001 C CNN
	1    6650 4050
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6E4
P 7150 4050
AR Path="/61F6E6E4" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6E4" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6E4" Ref="D13"  Part="1" 
F 0 "D13" H 7150 3950 50  0000 C CNN
F 1 "LED" H 7142 3886 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 4050 50  0001 C CNN
F 3 "~" H 7150 4050 50  0001 C CNN
	1    7150 4050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 61F6E6EA
P 6650 4250
AR Path="/61F6E6EA" Ref="R?"  Part="1" 
AR Path="/5FCC310D/61F6E6EA" Ref="R?"  Part="1" 
AR Path="/61EF75E6/61F6E6EA" Ref="R40"  Part="1" 
F 0 "R40" V 6550 4250 50  0000 C CNN
F 1 "200" V 6650 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6580 4250 50  0001 C CNN
F 3 "~" H 6650 4250 50  0001 C CNN
	1    6650 4250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 61F6E6F0
P 7150 4250
AR Path="/61F6E6F0" Ref="D?"  Part="1" 
AR Path="/5FCC310D/61F6E6F0" Ref="D?"  Part="1" 
AR Path="/61EF75E6/61F6E6F0" Ref="D14"  Part="1" 
F 0 "D14" H 7150 4150 50  0000 C CNN
F 1 "LED" H 7150 4150 50  0001 C CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 7150 4250 50  0001 C CNN
F 3 "~" H 7150 4250 50  0001 C CNN
	1    7150 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 3500 6450 3500
Wire Wire Line
	6100 3600 6450 3600
Wire Wire Line
	6450 3500 6450 3450
Wire Wire Line
	6450 3450 6500 3450
Wire Wire Line
	6450 3600 6450 3650
Wire Wire Line
	6450 3650 6500 3650
Wire Wire Line
	6500 3850 6400 3850
Wire Wire Line
	6400 3850 6400 3700
Wire Wire Line
	6400 3700 6100 3700
Wire Wire Line
	6100 3800 6350 3800
Wire Wire Line
	6350 3800 6350 4050
Wire Wire Line
	6350 4050 6500 4050
Wire Wire Line
	6100 3900 6300 3900
Wire Wire Line
	6300 3900 6300 4250
Wire Wire Line
	6300 4250 6500 4250
Wire Wire Line
	6100 3400 6400 3400
Wire Wire Line
	6400 3400 6400 3250
Wire Wire Line
	6400 3250 6500 3250
Wire Wire Line
	6100 3300 6350 3300
Wire Wire Line
	6350 3300 6350 3050
Wire Wire Line
	6350 3050 6500 3050
Wire Wire Line
	6100 3200 6300 3200
Wire Wire Line
	6300 3200 6300 2850
Wire Wire Line
	6300 2850 6500 2850
Wire Wire Line
	6800 2850 7000 2850
Wire Wire Line
	6800 3050 7000 3050
Wire Wire Line
	6800 3250 7000 3250
Wire Wire Line
	6800 3450 7000 3450
Wire Wire Line
	6800 3650 7000 3650
Wire Wire Line
	6800 3850 7000 3850
Wire Wire Line
	6800 4050 7000 4050
Wire Wire Line
	6800 4250 7000 4250
Wire Wire Line
	7300 2850 7400 2850
Wire Wire Line
	7400 2850 7400 3050
Wire Wire Line
	7400 4250 7300 4250
Wire Wire Line
	7300 4050 7400 4050
Connection ~ 7400 4050
Wire Wire Line
	7400 4050 7400 4250
Wire Wire Line
	7300 3850 7400 3850
Connection ~ 7400 3850
Wire Wire Line
	7400 3850 7400 4050
Wire Wire Line
	7300 3650 7400 3650
Connection ~ 7400 3650
Wire Wire Line
	7400 3650 7400 3850
Wire Wire Line
	7300 3450 7400 3450
Connection ~ 7400 3450
Wire Wire Line
	7400 3450 7400 3650
Wire Wire Line
	7300 3250 7400 3250
Connection ~ 7400 3250
Wire Wire Line
	7400 3250 7400 3450
Wire Wire Line
	7300 3050 7400 3050
Connection ~ 7400 3050
Wire Wire Line
	7400 3050 7400 3250
Wire Wire Line
	7400 4250 7400 4350
Connection ~ 7400 4250
$Comp
L power:GND #PWR?
U 1 1 61F6E72D
P 7400 4350
AR Path="/61F6E72D" Ref="#PWR?"  Part="1" 
AR Path="/5FCC310D/61F6E72D" Ref="#PWR?"  Part="1" 
AR Path="/61EF75E6/61F6E72D" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 7400 4100 50  0001 C CNN
F 1 "GND" H 7405 4177 50  0000 C CNN
F 2 "" H 7400 4350 50  0001 C CNN
F 3 "" H 7400 4350 50  0001 C CNN
	1    7400 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61F6E735
P 5700 3000
AR Path="/61F6E735" Ref="#PWR?"  Part="1" 
AR Path="/5FCC310D/61F6E735" Ref="#PWR?"  Part="1" 
AR Path="/61EF75E6/61F6E735" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 5700 2850 50  0001 C CNN
F 1 "+5V" H 5715 3173 50  0000 C CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61F6E73B
P 5700 4300
AR Path="/61F6E73B" Ref="#PWR?"  Part="1" 
AR Path="/5FCC310D/61F6E73B" Ref="#PWR?"  Part="1" 
AR Path="/61EF75E6/61F6E73B" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 5700 4050 50  0001 C CNN
F 1 "GND" H 5705 4127 50  0000 C CNN
F 2 "" H 5700 4300 50  0001 C CNN
F 3 "" H 5700 4300 50  0001 C CNN
	1    5700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61F6E741
P 5200 3900
AR Path="/61F6E741" Ref="#PWR?"  Part="1" 
AR Path="/5FCC310D/61F6E741" Ref="#PWR?"  Part="1" 
AR Path="/61EF75E6/61F6E741" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 5200 3650 50  0001 C CNN
F 1 "GND" H 5205 3727 50  0000 C CNN
F 2 "" H 5200 3900 50  0001 C CNN
F 3 "" H 5200 3900 50  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3800 5200 3800
Wire Wire Line
	5200 3800 5200 3900
Wire Wire Line
	4700 3400 5300 3400
Wire Wire Line
	5300 3500 4850 3500
Wire Wire Line
	4850 3500 4850 2850
$Comp
L power:+5V #PWR?
U 1 1 61F6E74D
P 4850 2850
AR Path="/61F6E74D" Ref="#PWR?"  Part="1" 
AR Path="/5FCC310D/61F6E74D" Ref="#PWR?"  Part="1" 
AR Path="/61EF75E6/61F6E74D" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 4850 2700 50  0001 C CNN
F 1 "+5V" H 4865 3023 50  0000 C CNN
F 2 "" H 4850 2850 50  0001 C CNN
F 3 "" H 4850 2850 50  0001 C CNN
	1    4850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4100 6200 4100
Wire Wire Line
	6200 4100 6200 4700
Wire Wire Line
	6200 4700 5600 4700
Text HLabel 5600 4700 0    50   Output ~ 0
QH'
Wire Wire Line
	3500 3200 5300 3200
Wire Wire Line
	4700 3300 4700 3400
Wire Wire Line
	3500 3400 4500 3400
Wire Wire Line
	4500 3400 4500 3700
Wire Wire Line
	4500 3700 5300 3700
$EndSCHEMATC
