EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:w_device
LIBS:w_analog
LIBS:w_relay
LIBS:Placa Rele-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "5 mar 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR3
U 1 1 523627F0
P 3050 1350
F 0 "#PWR3" H 3050 1350 30  0001 C CNN
F 1 "GND" H 3050 1280 30  0001 C CNN
F 2 "" H 3050 1350 60  0000 C CNN
F 3 "" H 3050 1350 60  0000 C CNN
	1    3050 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 523627FF
P 3050 1250
F 0 "#PWR2" H 3050 1350 30  0001 C CNN
F 1 "VCC" H 3050 1350 30  0000 C CNN
F 2 "" H 3050 1250 60  0000 C CNN
F 3 "" H 3050 1250 60  0000 C CNN
	1    3050 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1450 3050 1450
Wire Wire Line
	2950 1350 3050 1350
Text GLabel 3050 1450 2    39   Input ~ 0
Relay 1
Wire Notes Line
	2450 850  2450 2750
Wire Notes Line
	2450 1650 3450 1650
Wire Notes Line
	3450 850  3450 2750
Wire Notes Line
	2450 850  8950 850 
Text Notes 2450 950  0    60   ~ 0
Conector a placa \ncontroladora
$Comp
L BC547 Q1
U 1 1 523629EF
P 4900 2200
F 0 "Q1" H 4900 2051 40  0000 R CNN
F 1 "BC547" H 4900 2350 40  0000 R CNN
F 2 "TO92" H 4800 2302 29  0000 C CNN
F 3 "" H 4900 2200 60  0000 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 52362D2B
P 4800 1500
F 0 "D1" H 4800 1600 40  0000 C CNN
F 1 "1N4148" H 4800 1400 40  0000 C CNN
F 2 "~" H 4800 1500 60  0000 C CNN
F 3 "~" H 4800 1500 60  0000 C CNN
	1    4800 1500
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 52362D3A
P 4350 2200
F 0 "R1" V 4430 2200 40  0000 C CNN
F 1 "3K9" V 4357 2201 40  0000 C CNN
F 2 "~" V 4280 2200 30  0000 C CNN
F 3 "~" H 4350 2200 30  0000 C CNN
	1    4350 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 2200 4700 2200
Wire Wire Line
	4650 1300 5150 1300
Wire Wire Line
	4100 1700 5150 1700
Wire Wire Line
	5000 2000 5000 1700
Connection ~ 5000 1700
Wire Wire Line
	5000 1300 5000 1200
Connection ~ 5000 1300
Wire Wire Line
	5000 2400 5000 2500
$Comp
L VCC #PWR5
U 1 1 523634B7
P 5000 1200
F 0 "#PWR5" H 5000 1300 30  0001 C CNN
F 1 "VCC" H 5000 1300 30  0000 C CNN
F 2 "" H 5000 1200 60  0000 C CNN
F 3 "" H 5000 1200 60  0000 C CNN
	1    5000 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 523634D0
P 5000 2500
F 0 "#PWR6" H 5000 2500 30  0001 C CNN
F 1 "GND" H 5000 2430 30  0001 C CNN
F 2 "" H 5000 2500 60  0000 C CNN
F 3 "" H 5000 2500 60  0000 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2200 3950 2200
$Comp
L LED D2
U 1 1 523636CE
P 2600 2350
F 0 "D2" H 2600 2450 50  0000 C CNN
F 1 "LED" H 2600 2250 50  0000 C CNN
F 2 "~" H 2600 2350 60  0000 C CNN
F 3 "~" H 2600 2350 60  0000 C CNN
	1    2600 2350
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR4
U 1 1 523636DD
P 3150 1900
F 0 "#PWR4" H 3150 2000 30  0001 C CNN
F 1 "VCC" H 3150 2000 30  0000 C CNN
F 2 "" H 3150 1900 60  0000 C CNN
F 3 "" H 3150 1900 60  0000 C CNN
	1    3150 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 523636F6
P 2600 2650
F 0 "#PWR1" H 2600 2650 30  0001 C CNN
F 1 "GND" H 2600 2580 30  0001 C CNN
F 2 "" H 2600 2650 60  0000 C CNN
F 3 "" H 2600 2650 60  0000 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2550 2600 2650
$Comp
L LED D3
U 1 1 52363740
P 4100 1500
F 0 "D3" H 4100 1600 50  0000 C CNN
F 1 "LED" H 4100 1400 50  0000 C CNN
F 2 "~" H 4100 1500 60  0000 C CNN
F 3 "~" H 4100 1500 60  0000 C CNN
	1    4100 1500
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 52363759
P 4400 1300
F 0 "R2" V 4480 1300 40  0000 C CNN
F 1 "560E" V 4407 1301 40  0000 C CNN
F 2 "~" V 4330 1300 30  0000 C CNN
F 3 "~" H 4400 1300 30  0000 C CNN
	1    4400 1300
	0    -1   -1   0   
$EndComp
Connection ~ 4800 1300
Wire Wire Line
	4150 1300 4100 1300
Connection ~ 4800 1700
Text Notes 2450 1750 0    60   ~ 0
LED \nencendido
Text Notes 5000 950  0    60   ~ 0
Circuito Rele 1
Wire Notes Line
	2450 2750 5700 2750
Wire Notes Line
	5700 2750 5700 850 
$Comp
L RELAY_SRD RLY1
U 1 1 52364230
P 5300 1500
F 0 "RLY1" H 5300 1750 60  0000 C CNN
F 1 "RELAY_SRD" H 5300 1350 60  0000 C CNN
F 2 "" H 5300 1500 60  0000 C CNN
F 3 "" H 5300 1500 60  0000 C CNN
	1    5300 1500
	0    -1   -1   0   
$EndComp
$Comp
L PWR_FLAG #FLG1
U 1 1 523642EB
P 8350 1550
F 0 "#FLG1" H 8350 1645 30  0001 C CNN
F 1 "PWR_FLAG" H 8350 1730 30  0000 C CNN
F 2 "" H 8350 1550 60  0000 C CNN
F 3 "" H 8350 1550 60  0000 C CNN
	1    8350 1550
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG2
U 1 1 523642FA
P 8600 1350
F 0 "#FLG2" H 8600 1445 30  0001 C CNN
F 1 "PWR_FLAG" H 8600 1530 30  0000 C CNN
F 2 "" H 8600 1350 60  0000 C CNN
F 3 "" H 8600 1350 60  0000 C CNN
	1    8600 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR9
U 1 1 52364313
P 8350 1250
F 0 "#PWR9" H 8350 1350 30  0001 C CNN
F 1 "VCC" H 8350 1350 30  0000 C CNN
F 2 "" H 8350 1250 60  0000 C CNN
F 3 "" H 8350 1250 60  0000 C CNN
	1    8350 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 52364322
P 8600 1650
F 0 "#PWR10" H 8600 1650 30  0001 C CNN
F 1 "GND" H 8600 1580 30  0001 C CNN
F 2 "" H 8600 1650 60  0000 C CNN
F 3 "" H 8600 1650 60  0000 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1250 8350 1550
Wire Wire Line
	8600 1350 8600 1650
Wire Notes Line
	7950 1900 8950 1900
Wire Notes Line
	8950 1900 8950 850 
$Comp
L R R3
U 1 1 52364E46
P 2900 2050
F 0 "R3" V 2980 2050 40  0000 C CNN
F 1 "560E" V 2907 2051 40  0000 C CNN
F 2 "~" V 2830 2050 30  0000 C CNN
F 3 "~" H 2900 2050 30  0000 C CNN
	1    2900 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 2150 2600 2050
Wire Wire Line
	2600 2050 2650 2050
Wire Wire Line
	3150 2050 3150 1900
$Comp
L CONN_3 K2
U 1 1 523661E1
P 5450 2250
F 0 "K2" V 5400 2250 50  0000 C CNN
F 1 "CONN_3" V 5500 2250 40  0000 C CNN
F 2 "~" H 5450 2250 60  0000 C CNN
F 3 "~" H 5450 2250 60  0000 C CNN
	1    5450 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 1300 5500 1300
Wire Wire Line
	5550 1200 5300 1200
Wire Wire Line
	5300 1200 5300 1300
$Comp
L CONN_4 P1
U 1 1 52A5CA3D
P 2600 1300
F 0 "P1" V 2550 1300 50  0000 C CNN
F 1 "CONN_4" V 2650 1300 50  0000 C CNN
F 2 "~" H 2600 1300 60  0000 C CNN
F 3 "~" H 2600 1300 60  0000 C CNN
	1    2600 1300
	-1   0    0    1   
$EndComp
Text GLabel 3050 1150 2    39   Input ~ 0
Relay 2
Wire Wire Line
	3050 1250 2950 1250
Wire Wire Line
	3050 1150 2950 1150
Text GLabel 3950 2200 0    39   Input ~ 0
Relay 1
$Comp
L BC547 Q2
U 1 1 52A5CAA1
P 7150 2200
F 0 "Q2" H 7150 2051 40  0000 R CNN
F 1 "BC547" H 7150 2350 40  0000 R CNN
F 2 "TO92" H 7050 2302 29  0000 C CNN
F 3 "" H 7150 2200 60  0000 C CNN
	1    7150 2200
	1    0    0    -1  
$EndComp
$Comp
L DIODE D5
U 1 1 52A5CAA7
P 7050 1500
F 0 "D5" H 7050 1600 40  0000 C CNN
F 1 "1N4148" H 7050 1400 40  0000 C CNN
F 2 "~" H 7050 1500 60  0000 C CNN
F 3 "~" H 7050 1500 60  0000 C CNN
	1    7050 1500
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 52A5CAAD
P 6600 2200
F 0 "R4" V 6680 2200 40  0000 C CNN
F 1 "3K9" V 6607 2201 40  0000 C CNN
F 2 "~" V 6530 2200 30  0000 C CNN
F 3 "~" H 6600 2200 30  0000 C CNN
	1    6600 2200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6850 2200 6950 2200
Wire Wire Line
	6900 1300 7400 1300
Wire Wire Line
	6350 1700 7400 1700
Wire Wire Line
	7250 2000 7250 1700
Connection ~ 7250 1700
Wire Wire Line
	7250 1300 7250 1200
Connection ~ 7250 1300
Wire Wire Line
	7250 2400 7250 2500
$Comp
L VCC #PWR7
U 1 1 52A5CABB
P 7250 1200
F 0 "#PWR7" H 7250 1300 30  0001 C CNN
F 1 "VCC" H 7250 1300 30  0000 C CNN
F 2 "" H 7250 1200 60  0000 C CNN
F 3 "" H 7250 1200 60  0000 C CNN
	1    7250 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 52A5CAC1
P 7250 2500
F 0 "#PWR8" H 7250 2500 30  0001 C CNN
F 1 "GND" H 7250 2430 30  0001 C CNN
F 2 "" H 7250 2500 60  0000 C CNN
F 3 "" H 7250 2500 60  0000 C CNN
	1    7250 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2200 6200 2200
$Comp
L LED D4
U 1 1 52A5CAC8
P 6350 1500
F 0 "D4" H 6350 1600 50  0000 C CNN
F 1 "LED" H 6350 1400 50  0000 C CNN
F 2 "~" H 6350 1500 60  0000 C CNN
F 3 "~" H 6350 1500 60  0000 C CNN
	1    6350 1500
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 52A5CACE
P 6650 1300
F 0 "R5" V 6730 1300 40  0000 C CNN
F 1 "560E" V 6657 1301 40  0000 C CNN
F 2 "~" V 6580 1300 30  0000 C CNN
F 3 "~" H 6650 1300 30  0000 C CNN
	1    6650 1300
	0    -1   -1   0   
$EndComp
Connection ~ 7050 1300
Wire Wire Line
	6400 1300 6350 1300
Connection ~ 7050 1700
Text Notes 7250 950  0    60   ~ 0
Circuito Rele 2
Wire Notes Line
	4700 2750 7950 2750
Wire Notes Line
	7950 2750 7950 850 
$Comp
L RELAY_SRD RLY2
U 1 1 52A5CADA
P 7550 1500
F 0 "RLY2" H 7550 1750 60  0000 C CNN
F 1 "RELAY_SRD" H 7550 1350 60  0000 C CNN
F 2 "" H 7550 1500 60  0000 C CNN
F 3 "" H 7550 1500 60  0000 C CNN
	1    7550 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 K1
U 1 1 52A5CAE1
P 7700 2250
F 0 "K1" V 7650 2250 50  0000 C CNN
F 1 "CONN_3" V 7750 2250 40  0000 C CNN
F 2 "~" H 7700 2250 60  0000 C CNN
F 3 "~" H 7700 2250 60  0000 C CNN
	1    7700 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 1300 7750 1300
Wire Wire Line
	7800 1900 7800 1200
Wire Wire Line
	7800 1200 7550 1200
Wire Wire Line
	7550 1200 7550 1300
Text GLabel 6200 2200 0    39   Input ~ 0
Relay 2
Wire Wire Line
	5450 1900 5450 1700
Wire Wire Line
	5450 1700 5350 1700
Wire Wire Line
	5350 1900 5350 1800
Wire Wire Line
	5350 1800 5500 1800
Wire Wire Line
	5500 1800 5500 1300
Wire Wire Line
	5550 1200 5550 1900
Wire Wire Line
	7700 1900 7700 1700
Wire Wire Line
	7700 1700 7600 1700
Wire Wire Line
	7600 1900 7600 1800
Wire Wire Line
	7600 1800 7750 1800
Wire Wire Line
	7750 1800 7750 1300
$Comp
L TST P2
U 1 1 52A61B6C
P 9200 1650
F 0 "P2" H 9200 1950 40  0000 C CNN
F 1 "TST" H 9200 1900 30  0000 C CNN
F 2 "~" H 9200 1650 60  0000 C CNN
F 3 "~" H 9200 1650 60  0000 C CNN
	1    9200 1650
	1    0    0    -1  
$EndComp
$Comp
L TST P3
U 1 1 52A61B7B
P 9400 1650
F 0 "P3" H 9400 1950 40  0000 C CNN
F 1 "TST" H 9400 1900 30  0000 C CNN
F 2 "~" H 9400 1650 60  0000 C CNN
F 3 "~" H 9400 1650 60  0000 C CNN
	1    9400 1650
	1    0    0    -1  
$EndComp
NoConn ~ 9400 1650
NoConn ~ 9200 1650
$Comp
L TST P4
U 1 1 52A61C56
P 9600 1650
F 0 "P4" H 9600 1950 40  0000 C CNN
F 1 "TST" H 9600 1900 30  0000 C CNN
F 2 "~" H 9600 1650 60  0000 C CNN
F 3 "~" H 9600 1650 60  0000 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
NoConn ~ 9600 1650
$Comp
L TST P5
U 1 1 52A61C8A
P 9800 1650
F 0 "P5" H 9800 1950 40  0000 C CNN
F 1 "TST" H 9800 1900 30  0000 C CNN
F 2 "~" H 9800 1650 60  0000 C CNN
F 3 "~" H 9800 1650 60  0000 C CNN
	1    9800 1650
	1    0    0    -1  
$EndComp
NoConn ~ 9800 1650
$EndSCHEMATC
