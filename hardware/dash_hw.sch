EESchema Schematic File Version 4
LIBS:dash_hw-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
Title "PUTM_EV_Dashboard_2021"
Date "2020-11-23"
Rev ""
Comp "PUT Motorsport"
Comment1 "Piotr Kwiatkowski"
Comment2 "Tomasz Wojciechowski"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 8350 1000 650  300 
U 61B067FE
F0 "CAN" 50
F1 "CAN.sch" 50
F2 "TXD" I L 8350 1100 50 
F3 "RXD" O L 8350 1200 50 
F4 "CANH" B R 9000 1100 50 
F5 "CANL" B R 9000 1200 50 
$EndSheet
$Sheet
S 1650 850  750  400 
U 5FC07051
F0 "7_seg_dis" 50
F1 "7_seg_dis.sch" 50
F2 "SER" I L 1650 950 50 
F3 "CLK" I L 1650 1050 50 
F4 "RCLK" I L 1650 1150 50 
F5 "QH'" O R 2400 1050 50 
$EndSheet
$Sheet
S 8350 1600 700  550 
U 5FD4381C
F0 "UART_USB" 50
F1 "UART_USB.sch" 50
F2 "TXD" O L 8350 1700 50 
F3 "RXD" I L 8350 1800 50 
F4 "RTS" O L 8350 1900 50 
F5 "CTS" I L 8350 2000 50 
$EndSheet
$Sheet
S 6000 1350 900  700 
U 5FBBB385
F0 "display_16x2" 50
F1 "display_16x2.sch" 50
F2 "D4" I L 6000 1650 50 
F3 "D5" I L 6000 1750 50 
F4 "D6" I L 6000 1850 50 
F5 "D7" I L 6000 1950 50 
F6 "E" I L 6000 1550 50 
F7 "RS" I L 6000 1450 50 
$EndSheet
$Sheet
S 1650 2350 750  400 
U 5FCE8CC4
F0 "charge_level" 50
F1 "charge_level.sch" 50
F2 "QH'" O R 2400 2550 50 
F3 "SER" I L 1650 2450 50 
F4 "SRCLK" I L 1650 2550 50 
F5 "RCLK" I L 1650 2650 50 
$EndSheet
$Sheet
S 1650 3150 650  400 
U 5FCC310D
F0 "3state_leds" 50
F1 "3state_leds.sch" 50
F2 "SER" I L 1650 3250 50 
F3 "SRCLK" I L 1650 3350 50 
F4 "RCLK" I L 1650 3450 50 
F5 "QH'" O R 2300 3350 50 
$EndSheet
$Sheet
S 4300 1150 1050 1450
U 5FDBF033
F0 "mcu" 50
F1 "mcu.sch" 50
F2 "TX_CAN" O L 4300 1250 50 
F3 "RX_CAN" I L 4300 1350 50 
F4 "USART1_TX" O L 4300 1500 50 
F5 "USART1_RX" I L 4300 1600 50 
F6 "USART1_CTS" I L 4300 1700 50 
F7 "USART1_RTS" O L 4300 1800 50 
F8 "SPI2_CS" O L 4300 1950 50 
F9 "SPI2_CLK" O L 4300 2050 50 
F10 "SPI2_MOSI" O L 4300 2150 50 
F11 "SPI1_CS" O L 4300 2300 50 
F12 "SPI1_CLK" O L 4300 2400 50 
F13 "SPI1_MOSI" O L 4300 2500 50 
F14 "LCD_RS" O R 5350 1450 50 
F15 "LCD_E" O R 5350 1550 50 
F16 "LCD_D4" O R 5350 1650 50 
F17 "LCD_D5" O R 5350 1750 50 
F18 "LCD_D6" O R 5350 1850 50 
F19 "LCD_D7" O R 5350 1950 50 
$EndSheet
Text Label 8350 1100 2    50   ~ 0
CAN_TX
Text Label 8350 1200 2    50   ~ 0
CAN_RX
Text Label 4300 1250 2    50   ~ 0
CAN_TX
Text Label 4300 1350 2    50   ~ 0
CAN_RX
Text Label 8350 1800 2    50   ~ 0
UART_TX
Text Label 8350 1700 2    50   ~ 0
UART_RX
Text Label 8350 1900 2    50   ~ 0
UART_CTS
Text Label 8350 2000 2    50   ~ 0
UART_RTS
Text Label 4300 1500 2    50   ~ 0
UART_TX
Text Label 4300 1600 2    50   ~ 0
UART_RX
Text Label 4300 1700 2    50   ~ 0
UART_CTS
Text Label 4300 1800 2    50   ~ 0
UART_RTS
Wire Wire Line
	5350 1450 6000 1450
Wire Wire Line
	5350 1550 6000 1550
Wire Wire Line
	6000 1650 5350 1650
Wire Wire Line
	5350 1750 6000 1750
Wire Wire Line
	6000 1850 5350 1850
Wire Wire Line
	5350 1950 6000 1950
Text Label 4300 2500 2    50   ~ 0
SPI_1_MOSI
Text Label 4300 2400 2    50   ~ 0
SPI_1_CLK
Text Label 4300 2300 2    50   ~ 0
SPI_1_CS
Wire Wire Line
	1200 950  1650 950 
Wire Wire Line
	1500 3450 1650 3450
Wire Wire Line
	2400 2550 2500 2550
Wire Wire Line
	2500 2550 2500 2950
Wire Wire Line
	2500 2950 1600 2950
Wire Wire Line
	1600 2950 1600 3250
Wire Wire Line
	1600 3250 1650 3250
Wire Wire Line
	1650 3350 1400 3350
$Comp
L Regulator_Switching:LM2596S-5 U?
U 1 1 5FD2508C
P 4600 5250
AR Path="/61C146B0/5FD2508C" Ref="U?"  Part="1" 
AR Path="/5FD2508C" Ref="U2"  Part="1" 
F 0 "U2" H 4600 5617 50  0000 C CNN
F 1 "LM2596S-5" H 4600 5526 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 4650 5000 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 4600 5250 50  0001 C CNN
	1    4600 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5FD250A0
P 1600 5150
AR Path="/61C146B0/5FD250A0" Ref="F?"  Part="1" 
AR Path="/5FD250A0" Ref="F1"  Part="1" 
F 0 "F1" V 1403 5150 50  0000 C CNN
F 1 "SL150-33 1.5A" V 1494 5150 50  0000 C CNN
F 2 "Fuse:Fuse_2920_7451Metric" V 1530 5150 50  0001 C CNN
F 3 "~" H 1600 5150 50  0001 C CNN
	1    1600 5150
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD250AD
P 6550 5550
AR Path="/61C146B0/5FD250AD" Ref="C?"  Part="1" 
AR Path="/5FD250AD" Ref="C6"  Part="1" 
F 0 "C6" H 6642 5596 50  0000 L CNN
F 1 "1uF" H 6642 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6550 5550 50  0001 C CNN
F 3 "~" H 6550 5550 50  0001 C CNN
	1    6550 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5FD250B3
P 3650 5400
AR Path="/61C146B0/5FD250B3" Ref="C?"  Part="1" 
AR Path="/5FD250B3" Ref="C3"  Part="1" 
F 0 "C3" H 3750 5400 50  0000 L CNN
F 1 "100uF" H 3650 5300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3650 5400 50  0001 C CNN
F 3 "~" H 3650 5400 50  0001 C CNN
	1    3650 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD250B9
P 4600 5750
AR Path="/61C146B0/5FD250B9" Ref="#PWR?"  Part="1" 
AR Path="/5FD250B9" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4600 5500 50  0001 C CNN
F 1 "GND" H 4605 5577 50  0000 C CNN
F 2 "" H 4600 5750 50  0001 C CNN
F 3 "" H 4600 5750 50  0001 C CNN
	1    4600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5750 4600 5550
Wire Wire Line
	4600 5750 4000 5750
Connection ~ 4600 5750
Wire Wire Line
	4100 5350 4000 5350
Wire Wire Line
	4000 5350 4000 5750
Connection ~ 4000 5750
$Comp
L Device:D_Schottky D?
U 1 1 5FD250C5
P 5400 5550
AR Path="/61C146B0/5FD250C5" Ref="D?"  Part="1" 
AR Path="/5FD250C5" Ref="D3"  Part="1" 
F 0 "D3" V 5354 5629 50  0000 L CNN
F 1 "D_Schottky" V 5445 5629 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 5400 5550 50  0001 C CNN
F 3 "~" H 5400 5550 50  0001 C CNN
	1    5400 5550
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5FD250CB
P 5750 5350
AR Path="/61C146B0/5FD250CB" Ref="L?"  Part="1" 
AR Path="/5FD250CB" Ref="L1"  Part="1" 
F 0 "L1" V 5700 5350 50  0000 C CNN
F 1 "68uH" V 5844 5350 50  0000 C CNN
F 2 "Inductor_SMD:L_10.4x10.4_H4.8" H 5750 5350 50  0001 C CNN
F 3 "~" H 5750 5350 50  0001 C CNN
	1    5750 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C?
U 1 1 5FD250D1
P 6150 5550
AR Path="/61C146B0/5FD250D1" Ref="C?"  Part="1" 
AR Path="/5FD250D1" Ref="C5"  Part="1" 
F 0 "C5" H 6238 5596 50  0000 L CNN
F 1 "220uF" H 6238 5505 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6150 5550 50  0001 C CNN
F 3 "~" H 6150 5550 50  0001 C CNN
	1    6150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5150 6150 5350
Wire Wire Line
	5100 5150 6150 5150
Wire Wire Line
	5100 5350 5400 5350
Wire Wire Line
	5850 5350 6150 5350
Connection ~ 6150 5350
Wire Wire Line
	6150 5750 5400 5750
Wire Wire Line
	5400 5700 5400 5750
Connection ~ 5400 5750
Wire Wire Line
	5400 5750 4600 5750
Wire Wire Line
	6150 5350 6550 5350
$Comp
L power:+5V #PWR?
U 1 1 5FD250E2
P 6550 5200
AR Path="/61C146B0/5FD250E2" Ref="#PWR?"  Part="1" 
AR Path="/5FD250E2" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 6550 5050 50  0001 C CNN
F 1 "+5V" H 6565 5373 50  0000 C CNN
F 2 "" H 6550 5200 50  0001 C CNN
F 3 "" H 6550 5200 50  0001 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U?
U 1 1 5FD250E8
P 3150 6650
AR Path="/61C146B0/5FD250E8" Ref="U?"  Part="1" 
AR Path="/5FD250E8" Ref="U1"  Part="1" 
F 0 "U1" H 3150 6892 50  0000 C CNN
F 1 "LM1117-3.3" H 3150 6801 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3150 6650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 3150 6650 50  0001 C CNN
	1    3150 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5FD250EE
P 2500 6550
AR Path="/61C146B0/5FD250EE" Ref="#PWR?"  Part="1" 
AR Path="/5FD250EE" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2500 6400 50  0001 C CNN
F 1 "+5V" H 2515 6723 50  0000 C CNN
F 2 "" H 2500 6550 50  0001 C CNN
F 3 "" H 2500 6550 50  0001 C CNN
	1    2500 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD250F4
P 2500 6800
AR Path="/61C146B0/5FD250F4" Ref="C?"  Part="1" 
AR Path="/5FD250F4" Ref="C1"  Part="1" 
F 0 "C1" H 2592 6846 50  0000 L CNN
F 1 "100nF" H 2592 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2500 6800 50  0001 C CNN
F 3 "~" H 2500 6800 50  0001 C CNN
	1    2500 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD250FA
P 3600 6800
AR Path="/61C146B0/5FD250FA" Ref="C?"  Part="1" 
AR Path="/5FD250FA" Ref="C2"  Part="1" 
F 0 "C2" H 3692 6846 50  0000 L CNN
F 1 "100nF" H 3692 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3600 6800 50  0001 C CNN
F 3 "~" H 3600 6800 50  0001 C CNN
	1    3600 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FD25100
P 3150 7100
AR Path="/61C146B0/5FD25100" Ref="#PWR?"  Part="1" 
AR Path="/5FD25100" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 3150 6850 50  0001 C CNN
F 1 "GND" H 3155 6927 50  0000 C CNN
F 2 "" H 3150 7100 50  0001 C CNN
F 3 "" H 3150 7100 50  0001 C CNN
	1    3150 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FD25107
P 4000 6550
AR Path="/61C146B0/5FD25107" Ref="#PWR?"  Part="1" 
AR Path="/5FD25107" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4000 6400 50  0001 C CNN
F 1 "+3.3V" H 4015 6723 50  0000 C CNN
F 2 "" H 4000 6550 50  0001 C CNN
F 3 "" H 4000 6550 50  0001 C CNN
	1    4000 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6550 4000 6650
Wire Wire Line
	5400 5400 5400 5350
Connection ~ 5400 5350
Wire Wire Line
	5400 5350 5650 5350
Wire Wire Line
	6150 5350 6150 5450
Wire Wire Line
	6150 5650 6150 5750
Wire Wire Line
	3650 5750 3650 5500
Connection ~ 3650 5750
Wire Wire Line
	3650 5750 4000 5750
Connection ~ 3650 5150
Wire Wire Line
	3650 5150 4100 5150
Wire Wire Line
	3650 5300 3650 5150
Wire Wire Line
	6150 5750 6550 5750
Wire Wire Line
	6550 5750 6550 5650
Connection ~ 6150 5750
Wire Wire Line
	6550 5450 6550 5350
Connection ~ 6550 5350
Wire Wire Line
	2500 7000 3150 7000
Wire Wire Line
	3450 6650 3600 6650
Wire Wire Line
	3600 6650 3600 6700
Connection ~ 3600 6650
Wire Wire Line
	3600 6650 4000 6650
Wire Wire Line
	3600 6900 3600 7000
Wire Wire Line
	3150 6950 3150 7000
Connection ~ 3150 7000
Wire Wire Line
	3150 7000 3600 7000
Wire Wire Line
	3150 7000 3150 7100
Wire Wire Line
	2500 7000 2500 6900
Wire Wire Line
	2500 6650 2850 6650
Wire Wire Line
	2500 6700 2500 6650
Text Notes 4450 4750 0    50   ~ 0
POWER
$Comp
L Device:D_TVS D1
U 1 1 5FD4D349
P 1850 5500
F 0 "D1" V 1804 5579 50  0000 L CNN
F 1 "SMAJ24CA" V 1895 5579 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 1850 5500 50  0001 C CNN
F 3 "~" H 1850 5500 50  0001 C CNN
	1    1850 5500
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FD6239C
P 4000 6800
AR Path="/61C146B0/5FD6239C" Ref="C?"  Part="1" 
AR Path="/5FD6239C" Ref="C4"  Part="1" 
F 0 "C4" H 4092 6846 50  0000 L CNN
F 1 "1uF" H 4092 6755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4000 6800 50  0001 C CNN
F 3 "~" H 4000 6800 50  0001 C CNN
	1    4000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6650 4000 6700
Connection ~ 4000 6650
Wire Wire Line
	4000 6900 4000 7000
Wire Wire Line
	4000 7000 3600 7000
Connection ~ 3600 7000
Wire Wire Line
	2500 6550 2500 6650
Connection ~ 2500 6650
Wire Wire Line
	6550 5200 6550 5350
Wire Wire Line
	3250 5750 3650 5750
Wire Wire Line
	2650 5150 2950 5150
Wire Wire Line
	1750 5150 1850 5150
Wire Wire Line
	1850 5150 1850 5350
$Comp
L Device:R R1
U 1 1 5FD84941
P 2450 5700
F 0 "R1" H 2520 5746 50  0000 L CNN
F 1 "10k" H 2520 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2380 5700 50  0001 C CNN
F 3 "~" H 2450 5700 50  0001 C CNN
	1    2450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5550 2450 5500
$Comp
L Device:D_Zener D2
U 1 1 5FD8CF67
P 2750 5500
F 0 "D2" H 2750 5284 50  0000 C CNN
F 1 "MM3Z12VST1G" H 2750 5375 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323" H 2750 5500 50  0001 C CNN
F 3 "~" H 2750 5500 50  0001 C CNN
	1    2750 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 5500 2950 5500
Wire Wire Line
	2950 5500 2950 5150
Connection ~ 2950 5150
Wire Wire Line
	2950 5150 3250 5150
Wire Wire Line
	2600 5500 2450 5500
Connection ~ 2450 5500
Wire Wire Line
	2450 5500 2450 5450
Wire Wire Line
	1850 5150 2250 5150
Connection ~ 1850 5150
Wire Wire Line
	1850 5650 1850 5900
Wire Wire Line
	1850 5900 2450 5900
Wire Wire Line
	2450 5900 2450 5850
Wire Wire Line
	2450 5900 3250 5900
Wire Wire Line
	3250 5900 3250 5750
Connection ~ 2450 5900
Wire Wire Line
	1850 5900 1400 5900
Connection ~ 1850 5900
Wire Wire Line
	1450 5150 1400 5150
Text Notes 2000 4700 0    50   ~ 0
Reverse polarity protection
Text Label 9000 1100 0    50   ~ 0
CANH
Text Label 9000 1200 0    50   ~ 0
CANL
Text Label 1400 5150 2    50   ~ 0
GLV+
Text Label 1400 5900 2    50   ~ 0
GLV-
NoConn ~ 2300 3350
Text Label 9600 3800 2    50   ~ 0
GLV+
Text Label 9600 3900 2    50   ~ 0
GLV-
Text Label 9600 4050 2    50   ~ 0
CANH
Text Label 9600 4150 2    50   ~ 0
CANL
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5FDF0E9D
P 2450 5250
F 0 "Q1" V 2792 5250 50  0000 C CNN
F 1 "DMP3056L-7" V 2701 5250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2650 5350 50  0001 C CNN
F 3 "https://www.tme.eu/Document/250d260377fe1e01ee709e3eafa0c268/DMP3056L.pdf" H 2450 5250 50  0001 C CNN
	1    2450 5250
	0    -1   -1   0   
$EndComp
Text Label 4300 2150 2    50   ~ 0
SPI_2_MOSI
Text Label 4300 2050 2    50   ~ 0
SPI_2_CLK
Text Label 4300 1950 2    50   ~ 0
SPI_2_CS
Text Label 1200 950  2    50   ~ 0
SPI_1_MOSI
Text Label 1200 1050 2    50   ~ 0
SPI_1_CLK
Text Label 1200 1150 2    50   ~ 0
SPI_1_CS
Text Label 1200 2450 2    50   ~ 0
SPI_2_MOSI
Text Label 1200 2550 2    50   ~ 0
SPI_2_CLK
Text Label 1200 2650 2    50   ~ 0
SPI_2_CS
Wire Wire Line
	1200 2450 1650 2450
Wire Wire Line
	1200 2550 1400 2550
Wire Wire Line
	1200 2650 1500 2650
Wire Wire Line
	1400 3350 1400 2550
Connection ~ 1400 2550
Wire Wire Line
	1400 2550 1650 2550
Wire Wire Line
	1500 2650 1500 3450
Connection ~ 1500 2650
Wire Wire Line
	1500 2650 1650 2650
$Comp
L Device:C_Small C?
U 1 1 5FFB0B2D
P 3250 5400
AR Path="/61C146B0/5FFB0B2D" Ref="C?"  Part="1" 
AR Path="/5FFB0B2D" Ref="C22"  Part="1" 
F 0 "C22" H 3342 5446 50  0000 L CNN
F 1 "470nF" H 3342 5355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3250 5400 50  0001 C CNN
F 3 "~" H 3250 5400 50  0001 C CNN
	1    3250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5300 3250 5150
Connection ~ 3250 5150
Wire Wire Line
	3250 5150 3650 5150
Wire Wire Line
	3250 5500 3250 5750
Connection ~ 3250 5750
$Sheet
S 4950 3150 1100 550 
U 601826D3
F0 "FAULT_LED" 50
F1 "Fault_LED.sch" 50
$EndSheet
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 6018608E
P 9350 5100
F 0 "J4" H 9378 5076 50  0000 L CNN
F 1 "Conn_01x06_Female" H 9378 4985 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9350 5100 50  0001 C CNN
F 3 "~" H 9350 5100 50  0001 C CNN
	1    9350 5100
	1    0    0    -1  
$EndComp
Text GLabel 9150 4900 0    50   Input ~ 0
FAULT1
Text GLabel 9150 5000 0    50   Input ~ 0
FAULT2
Text GLabel 9150 5100 0    50   Input ~ 0
FAULT3
Text GLabel 9150 5200 0    50   Input ~ 0
FAULT4
Text GLabel 9150 5300 0    50   Input ~ 0
FAULT5
Text GLabel 9150 5400 0    50   Input ~ 0
FAULT6
$Comp
L Device:Polyfuse F2
U 1 1 60187DB8
P 6750 5350
F 0 "F2" V 6525 5350 50  0000 C CNN
F 1 "Polyfuse" V 6616 5350 50  0000 C CNN
F 2 "Fuse:Fuse_2010_5025Metric" H 6800 5150 50  0001 L CNN
F 3 "~" H 6750 5350 50  0001 C CNN
	1    6750 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 5350 6550 5350
Wire Wire Line
	6900 5350 7000 5350
Text GLabel 7000 5350 2    50   Input ~ 0
5Vfused
Wire Wire Line
	1200 1150 1650 1150
Wire Wire Line
	1200 1050 1650 1050
NoConn ~ 2400 1050
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 6086EAEA
P 9800 3800
F 0 "J5" H 9880 3792 50  0000 L CNN
F 1 "Conn_01x02" H 9880 3701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9800 3800 50  0001 C CNN
F 3 "~" H 9800 3800 50  0001 C CNN
	1    9800 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 6086F692
P 9800 4050
F 0 "J6" H 9880 4042 50  0000 L CNN
F 1 "Conn_01x02" H 9880 3951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9800 4050 50  0001 C CNN
F 3 "~" H 9800 4050 50  0001 C CNN
	1    9800 4050
	1    0    0    -1  
$EndComp
Text Notes 8000 3700 0    50   ~ 0
VEHICLE CONNECTOR
$EndSCHEMATC
