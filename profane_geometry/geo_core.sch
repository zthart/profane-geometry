EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 6
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
L Amplifier_Operational:TL074 U2
U 5 1 60B2F72E
P 1250 7250
F 0 "U2" H 1208 7296 50  0000 L CNN
F 1 "TL074" H 1208 7205 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1200 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1300 7450 50  0001 C CNN
	5    1250 7250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U3
U 5 1 60B30DCF
P 1600 7250
F 0 "U3" H 1558 7296 50  0000 L CNN
F 1 "TL074" H 1558 7205 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1550 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1650 7450 50  0001 C CNN
	5    1600 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 60B33491
P 3550 7250
F 0 "C11" H 3665 7296 50  0000 L CNN
F 1 "0.1uF" H 3665 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3588 7100 50  0001 C CNN
F 3 "~" H 3550 7250 50  0001 C CNN
	1    3550 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 60B3403A
P 4400 7250
F 0 "C12" H 4515 7296 50  0000 L CNN
F 1 "0.1uF" H 4515 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4438 7100 50  0001 C CNN
F 3 "~" H 4400 7250 50  0001 C CNN
	1    4400 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 60B37BE6
P 4850 7250
F 0 "C13" H 4965 7296 50  0000 L CNN
F 1 "0.1uF" H 4965 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4888 7100 50  0001 C CNN
F 3 "~" H 4850 7250 50  0001 C CNN
	1    4850 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 60B3899B
P 5300 7250
F 0 "C14" H 5415 7296 50  0000 L CNN
F 1 "0.1uF" H 5415 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5338 7100 50  0001 C CNN
F 3 "~" H 5300 7250 50  0001 C CNN
	1    5300 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR030
U 1 1 60B394AC
P 1150 6950
F 0 "#PWR030" H 1150 6800 50  0001 C CNN
F 1 "+12V" H 1165 7123 50  0000 C CNN
F 2 "" H 1150 6950 50  0001 C CNN
F 3 "" H 1150 6950 50  0001 C CNN
	1    1150 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR031
U 1 1 60B3A273
P 1500 6950
F 0 "#PWR031" H 1500 6800 50  0001 C CNN
F 1 "+12V" H 1515 7123 50  0000 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR045
U 1 1 60B3AF6B
P 1150 7550
F 0 "#PWR045" H 1150 7650 50  0001 C CNN
F 1 "-12V" H 1165 7723 50  0000 C CNN
F 2 "" H 1150 7550 50  0001 C CNN
F 3 "" H 1150 7550 50  0001 C CNN
	1    1150 7550
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR046
U 1 1 60B3B56A
P 1500 7550
F 0 "#PWR046" H 1500 7650 50  0001 C CNN
F 1 "-12V" H 1515 7723 50  0000 C CNN
F 2 "" H 1500 7550 50  0001 C CNN
F 3 "" H 1500 7550 50  0001 C CNN
	1    1500 7550
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR041
U 1 1 60B3CB4B
P 3550 7400
F 0 "#PWR041" H 3550 7500 50  0001 C CNN
F 1 "-12V" H 3565 7573 50  0000 C CNN
F 2 "" H 3550 7400 50  0001 C CNN
F 3 "" H 3550 7400 50  0001 C CNN
	1    3550 7400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 60B3E4B7
P 3550 7100
F 0 "#PWR035" H 3550 6850 50  0001 C CNN
F 1 "GND" H 3555 6927 50  0000 C CNN
F 2 "" H 3550 7100 50  0001 C CNN
F 3 "" H 3550 7100 50  0001 C CNN
	1    3550 7100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 60B4260C
P 4850 7400
F 0 "#PWR043" H 4850 7150 50  0001 C CNN
F 1 "GND" H 4855 7227 50  0000 C CNN
F 2 "" H 4850 7400 50  0001 C CNN
F 3 "" H 4850 7400 50  0001 C CNN
	1    4850 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 60B43BD6
P 5300 7400
F 0 "#PWR044" H 5300 7150 50  0001 C CNN
F 1 "GND" H 5305 7227 50  0000 C CNN
F 2 "" H 5300 7400 50  0001 C CNN
F 3 "" H 5300 7400 50  0001 C CNN
	1    5300 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR037
U 1 1 60B447AE
P 4850 7100
F 0 "#PWR037" H 4850 6950 50  0001 C CNN
F 1 "+12V" H 4865 7273 50  0000 C CNN
F 2 "" H 4850 7100 50  0001 C CNN
F 3 "" H 4850 7100 50  0001 C CNN
	1    4850 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR038
U 1 1 60B45455
P 5300 7100
F 0 "#PWR038" H 5300 6950 50  0001 C CNN
F 1 "+12V" H 5315 7273 50  0000 C CNN
F 2 "" H 5300 7100 50  0001 C CNN
F 3 "" H 5300 7100 50  0001 C CNN
	1    5300 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 6094E54B
P 1700 1600
F 0 "R6" V 1495 1600 50  0000 C CNN
F 1 "10k" V 1586 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1740 1590 50  0001 C CNN
F 3 "" H 1700 1600 50  0001 C CNN
	1    1700 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 6094ECB1
P 1700 1800
F 0 "R9" V 1900 1800 50  0000 C CNN
F 1 "1M" V 1800 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1740 1790 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	0    1    1    0   
$EndComp
Text HLabel 1300 1600 0    50   Input ~ 0
coarse-cv
Text HLabel 1300 1800 0    50   Input ~ 0
fine-cv
$Comp
L Device:R_US R1
U 1 1 60950803
P 1850 1050
F 0 "R1" V 1645 1050 50  0000 C CNN
F 1 "10k" V 1736 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1890 1040 50  0001 C CNN
F 3 "" H 1850 1050 50  0001 C CNN
	1    1850 1050
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 60951B84
P 2250 1050
F 0 "R2" V 2045 1050 50  0000 C CNN
F 1 "10k" V 2136 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2290 1040 50  0001 C CNN
F 3 "" H 2250 1050 50  0001 C CNN
	1    2250 1050
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 1 1 60953697
P 2350 1500
F 0 "U2" H 2350 1133 50  0000 C CNN
F 1 "TL074" H 2350 1224 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2300 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2400 1700 50  0001 C CNN
	1    2350 1500
	1    0    0    1   
$EndComp
Wire Wire Line
	1850 1800 1850 1600
Wire Wire Line
	1850 1600 2050 1600
Connection ~ 1850 1600
Wire Wire Line
	2050 1400 2050 1050
Wire Wire Line
	2050 1050 2000 1050
Wire Wire Line
	2050 1050 2100 1050
Connection ~ 2050 1050
Wire Wire Line
	1700 1050 1650 1050
Wire Wire Line
	1650 1050 1650 1100
Wire Wire Line
	2400 1050 2650 1050
Wire Wire Line
	2650 1050 2650 1500
$Comp
L power:GND #PWR014
U 1 1 609594CC
P 1650 1100
F 0 "#PWR014" H 1650 850 50  0001 C CNN
F 1 "GND" H 1655 927 50  0000 C CNN
F 2 "" H 1650 1100 50  0001 C CNN
F 3 "" H 1650 1100 50  0001 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 60959A47
P 3050 1500
F 0 "R4" V 2845 1500 50  0000 C CNN
F 1 "10k" V 2936 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3090 1490 50  0001 C CNN
F 3 "" H 3050 1500 50  0001 C CNN
	1    3050 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 6095AE49
P 3050 1700
F 0 "R8" V 3250 1700 50  0000 C CNN
F 1 "10k" V 3150 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3090 1690 50  0001 C CNN
F 3 "" H 3050 1700 50  0001 C CNN
	1    3050 1700
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U2
U 2 1 6095BC40
P 3500 1600
F 0 "U2" H 3500 1233 50  0000 C CNN
F 1 "TL074" H 3500 1324 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3450 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3550 1800 50  0001 C CNN
	2    3500 1600
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R3
U 1 1 6095D65C
P 3500 1100
F 0 "R3" V 3295 1100 50  0000 C CNN
F 1 "10k" V 3386 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3540 1090 50  0001 C CNN
F 3 "" H 3500 1100 50  0001 C CNN
	1    3500 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1500 3200 1100
Wire Wire Line
	3200 1100 3350 1100
Connection ~ 3200 1500
Wire Wire Line
	3650 1100 3800 1100
Wire Wire Line
	3800 1100 3800 1600
$Comp
L Device:R_US R7
U 1 1 6095ED94
P 4200 1600
F 0 "R7" V 3995 1600 50  0000 C CNN
F 1 "1k" V 4086 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4240 1590 50  0001 C CNN
F 3 "" H 4200 1600 50  0001 C CNN
	1    4200 1600
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NJFET_DSG Q1
U 1 1 60960786
P 3300 3300
F 0 "Q1" H 3491 3254 50  0000 L CNN
F 1 "MMBF4416A" H 3491 3345 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 3400 50  0001 C CNN
F 3 "~" H 3300 3300 50  0001 C CNN
	1    3300 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 609628DC
P 3650 3450
F 0 "R16" H 3582 3404 50  0000 R CNN
F 1 "10k" H 3582 3495 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 3690 3440 50  0001 C CNN
F 3 "" H 3650 3450 50  0001 C CNN
	1    3650 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3500 3200 3600
$Comp
L power:GND #PWR019
U 1 1 609643C8
P 3200 3700
F 0 "#PWR019" H 3200 3450 50  0001 C CNN
F 1 "GND" H 3205 3527 50  0000 C CNN
F 2 "" H 3200 3700 50  0001 C CNN
F 3 "" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3600 3200 3600
Connection ~ 3200 3600
Wire Wire Line
	3200 3600 3200 3700
$Comp
L Device:D D3
U 1 1 609659B4
P 4050 3300
F 0 "D3" H 4050 3083 50  0000 C CNN
F 1 "1N5819" H 4050 3174 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4050 3300 50  0001 C CNN
F 3 "~" H 4050 3300 50  0001 C CNN
	1    4050 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 1600 4050 1600
Connection ~ 3800 1600
Wire Wire Line
	2650 1500 2900 1500
Connection ~ 2650 1500
Wire Wire Line
	2900 1700 2900 1500
Connection ~ 2900 1500
$Comp
L Amplifier_Operational:TL074 U2
U 3 1 6096937E
P 4650 1700
F 0 "U2" H 4650 1333 50  0000 C CNN
F 1 "TL074" H 4650 1424 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4600 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4700 1900 50  0001 C CNN
	3    4650 1700
	1    0    0    1   
$EndComp
Wire Wire Line
	4350 1800 4300 1800
Wire Wire Line
	4300 1800 4300 1850
$Comp
L power:GND #PWR015
U 1 1 6096DC0A
P 4300 1850
F 0 "#PWR015" H 4300 1600 50  0001 C CNN
F 1 "GND" H 4305 1677 50  0000 C CNN
F 2 "" H 4300 1850 50  0001 C CNN
F 3 "" H 4300 1850 50  0001 C CNN
	1    4300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6096E4B7
P 4650 1150
F 0 "C4" V 4398 1150 50  0000 C CNN
F 1 "47nF" V 4489 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4688 1000 50  0001 C CNN
F 3 "~" H 4650 1150 50  0001 C CNN
	1    4650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 1150 4350 1150
Wire Wire Line
	4350 1150 4350 1600
Connection ~ 4350 1600
$Comp
L Amplifier_Operational:TL074 U2
U 4 1 60977B59
P 5600 2600
F 0 "U2" H 5600 2233 50  0000 C CNN
F 1 "TL074" H 5600 2324 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5550 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5650 2800 50  0001 C CNN
	4    5600 2600
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R13
U 1 1 6098C2D7
P 5600 2950
F 0 "R13" V 5800 2900 50  0000 L CNN
F 1 "2.87k" V 5700 2850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5640 2940 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 5600 2950 50  0001 C CNN
	1    5600 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 6098C858
P 4950 2700
F 0 "R12" V 5150 2650 50  0000 L CNN
F 1 "7.15k" V 5050 2600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 4990 2690 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 4950 2700 50  0001 C CNN
	1    4950 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 609989F6
P 4700 2800
F 0 "#PWR017" H 4700 2550 50  0001 C CNN
F 1 "GND" H 4705 2627 50  0000 C CNN
F 2 "" H 4700 2800 50  0001 C CNN
F 3 "" H 4700 2800 50  0001 C CNN
	1    4700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2800 4700 2700
Wire Wire Line
	4700 2700 4800 2700
Wire Wire Line
	5300 2700 5100 2700
Wire Wire Line
	5300 2700 5300 2950
Wire Wire Line
	5300 2950 5450 2950
Connection ~ 5300 2700
Wire Wire Line
	5750 2950 5900 2950
Wire Wire Line
	5900 2950 5900 2600
Wire Wire Line
	5900 2950 5900 3300
Connection ~ 5900 2950
Connection ~ 5900 2600
Text Label 6100 2600 0    50   ~ 0
square-pre
$Comp
L Device:R_US R10
U 1 1 609BAF1E
P 6750 1900
F 0 "R10" V 6550 1850 50  0000 L CNN
F 1 "10k" V 6650 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6790 1890 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 6750 1900 50  0001 C CNN
	1    6750 1900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 609C1F87
P 7200 1550
F 0 "R5" V 7000 1500 50  0000 L CNN
F 1 "5.9k" V 7100 1450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7240 1540 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 7200 1550 50  0001 C CNN
	1    7200 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1900 6900 1550
Wire Wire Line
	6900 1550 7050 1550
Wire Wire Line
	7350 1550 7500 1550
Wire Wire Line
	7500 1550 7500 2000
Wire Wire Line
	6900 2100 6850 2100
Wire Wire Line
	6850 2100 6850 2150
$Comp
L power:GND #PWR016
U 1 1 609C8810
P 6850 2150
F 0 "#PWR016" H 6850 1900 50  0001 C CNN
F 1 "GND" H 6855 1977 50  0000 C CNN
F 2 "" H 6850 2150 50  0001 C CNN
F 3 "" H 6850 2150 50  0001 C CNN
	1    6850 2150
	1    0    0    -1  
$EndComp
Text Label 6400 1900 2    50   ~ 0
tri-pre
$Comp
L Device:R_US R15
U 1 1 609E78DD
P 7700 3350
F 0 "R15" V 7900 3300 50  0000 L CNN
F 1 "10k" V 7800 3250 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7740 3340 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 7700 3350 50  0001 C CNN
	1    7700 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R14
U 1 1 609E78F1
P 8150 3000
F 0 "R14" V 7950 2950 50  0000 L CNN
F 1 "4.12k" V 8050 2950 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8190 2990 50  0001 C CNN
F 3 "" H 8150 3000 50  0001 C CNN
	1    8150 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3350 7850 3000
Wire Wire Line
	7850 3000 8000 3000
Wire Wire Line
	8300 3000 8450 3000
Wire Wire Line
	8450 3000 8450 3450
Wire Wire Line
	7850 3550 7800 3550
Wire Wire Line
	7800 3550 7800 3600
$Comp
L power:GND #PWR018
U 1 1 609E7902
P 7800 3600
F 0 "#PWR018" H 7800 3350 50  0001 C CNN
F 1 "GND" H 7805 3427 50  0000 C CNN
F 2 "" H 7800 3600 50  0001 C CNN
F 3 "" H 7800 3600 50  0001 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
Text Label 7350 3350 2    50   ~ 0
square-pre
Text HLabel 8050 2000 2    50   Output ~ 0
tri-out
Text HLabel 9000 3450 2    50   Output ~ 0
square-out
Text Notes 8200 1900 2    50   ~ 0
10Vpp
Text Notes 9150 3400 2    50   ~ 0
10Vpp
Text Notes 7350 3200 2    39   ~ 0
-12v -> +12v
Text Notes 6400 1800 2    39   ~ 0
-9v -> +9v
Text Notes 4200 2600 0    39   ~ 0
Tri amplitude (hysterisis limit) \ndetermined by R10/R9 voltage divider
Wire Wire Line
	5900 2600 6100 2600
Wire Wire Line
	3500 3300 3650 3300
Connection ~ 3650 3300
Wire Wire Line
	3650 3300 3900 3300
Wire Wire Line
	5300 1700 5300 2500
Wire Wire Line
	3200 1700 3200 3100
Connection ~ 3200 1700
Wire Notes Line
	2750 2050 2750 800 
Wire Wire Line
	4950 1700 5300 1700
Wire Wire Line
	4800 1150 5300 1150
Wire Wire Line
	5300 1700 5300 1150
Connection ~ 5300 1700
Wire Wire Line
	4200 3300 5900 3300
Wire Notes Line
	5100 2150 5100 800 
Wire Notes Line
	4000 800  4000 2150
Wire Notes Line
	1450 800  1450 2050
Wire Notes Line
	1450 2050 4000 2050
Wire Notes Line
	1450 800  5100 800 
Wire Wire Line
	1300 1600 1550 1600
Wire Wire Line
	1300 1800 1550 1800
Text Notes 2700 2000 2    39   ~ 0
Summing amplifier
Text Notes 3900 2000 2    39   ~ 0
Polarity inverter
Text Notes 4050 900  0    39   ~ 0
Integrator
Wire Notes Line
	5950 2150 5950 3950
Wire Notes Line
	5950 3950 2600 3950
Wire Notes Line
	2600 3950 2600 2050
Wire Notes Line
	4000 2150 5950 2150
Text Notes 550  2950 0    39   ~ 0
As the integrator's output reaches the V_h level set by the \nR10/R9 voltage dividor, the square wave generator's output\ndrops below zero. This causes a negative voltage at the gate\nof the JFET, preventing current flowing from R7 to ground.\nIn this state, the polarity inverter's output is positive, allowing\ncurrent to flow from R6 to C1 and discharging the capacitor.\nOnce the voltage at the intverting input of the square generator\nreaches the negative hysteresis voltage, the output of the\namplifier swings positive, causing the diode to prevent voltage\nat the gate of the JFET. Current flows from R7 to GND through\nthe JFET, the polarity inverter's output voltage is negative, \ncausing current to flow from the output of the integrator\ninto C1, charging the capacitor.
$Comp
L Connector:TestPoint TP1
U 1 1 60B0F071
P 7850 2350
F 0 "TP1" V 7804 2538 50  0000 L CNN
F 1 "Tri" V 7895 2538 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 8050 2350 50  0001 C CNN
F 3 "~" H 8050 2350 50  0001 C CNN
	1    7850 2350
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 60B127B9
P 8800 3800
F 0 "TP2" V 8754 3988 50  0000 L CNN
F 1 "Square" V 8845 3988 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9000 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
	1    8800 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R17
U 1 1 60B2DDB0
P 8600 3450
F 0 "R17" V 8400 3400 50  0000 L CNN
F 1 "1k" V 8500 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8640 3440 50  0001 C CNN
F 3 "" H 8600 3450 50  0001 C CNN
	1    8600 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 60B55256
P 7650 2000
F 0 "R11" V 7450 1950 50  0000 L CNN
F 1 "1k" V 7550 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7690 1990 50  0001 C CNN
F 3 "" H 7650 2000 50  0001 C CNN
	1    7650 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 1900 6600 1900
Wire Wire Line
	5300 1150 5750 1150
Text Label 5750 1150 0    50   ~ 0
tri-pre
Wire Wire Line
	7800 2000 7850 2000
Wire Wire Line
	7850 2350 7850 2000
Connection ~ 7850 2000
Wire Wire Line
	7850 2000 8050 2000
Wire Wire Line
	8750 3450 8800 3450
Wire Wire Line
	8800 3800 8800 3450
Connection ~ 8800 3450
Wire Wire Line
	8800 3450 9000 3450
Text Label 950  5750 2    50   ~ 0
tri-pre
Text HLabel 950  4700 0    50   Input ~ 0
duty-cv
$Comp
L Amplifier_Operational:TL074 U3
U 2 1 61078B27
P 1500 5650
F 0 "U3" H 1500 5300 50  0000 C CNN
F 1 "TL074" H 1500 5374 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1450 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1550 5850 50  0001 C CNN
	2    1500 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R26
U 1 1 6108B7A2
P 2150 5650
F 0 "R26" V 1950 5600 50  0000 L CNN
F 1 "22k" V 2050 5600 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2190 5640 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 2150 5650 50  0001 C CNN
	1    2150 5650
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U3
U 3 1 6108C237
P 2600 5750
F 0 "U3" H 2600 6100 50  0000 C CNN
F 1 "TL074" H 2600 6000 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2550 5850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2650 5950 50  0001 C CNN
	3    2600 5750
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 61093198
P 2250 5900
F 0 "#PWR026" H 2250 5650 50  0001 C CNN
F 1 "GND" H 2255 5727 50  0000 C CNN
F 2 "" H 2250 5900 50  0001 C CNN
F 3 "" H 2250 5900 50  0001 C CNN
	1    2250 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5900 2250 5850
Wire Wire Line
	2250 5850 2300 5850
$Comp
L Device:R_US R24
U 1 1 6109A825
P 2600 5350
F 0 "R24" V 2400 5300 50  0000 L CNN
F 1 "10k" V 2500 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2640 5340 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 2600 5350 50  0001 C CNN
	1    2600 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 5650 2300 5350
Wire Wire Line
	2300 5350 2450 5350
Connection ~ 2300 5650
Wire Wire Line
	2750 5350 2900 5350
Wire Wire Line
	2900 5350 2900 5750
$Comp
L Amplifier_Operational:TL074 U4
U 5 1 610AC947
P 1950 7250
F 0 "U4" H 1908 7296 50  0000 L CNN
F 1 "TL074" H 1908 7205 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1900 7350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2000 7450 50  0001 C CNN
	5    1950 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR032
U 1 1 610B984F
P 1850 6950
F 0 "#PWR032" H 1850 6800 50  0001 C CNN
F 1 "+12V" H 1865 7123 50  0000 C CNN
F 2 "" H 1850 6950 50  0001 C CNN
F 3 "" H 1850 6950 50  0001 C CNN
	1    1850 6950
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR047
U 1 1 610B9B40
P 1850 7550
F 0 "#PWR047" H 1850 7650 50  0001 C CNN
F 1 "-12V" H 1865 7723 50  0000 C CNN
F 2 "" H 1850 7550 50  0001 C CNN
F 3 "" H 1850 7550 50  0001 C CNN
	1    1850 7550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 610BB5A4
P 3100 7250
F 0 "C10" H 3215 7296 50  0000 L CNN
F 1 "0.1uF" H 3215 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3138 7100 50  0001 C CNN
F 3 "~" H 3100 7250 50  0001 C CNN
	1    3100 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 610BB96D
P 2650 7250
F 0 "C9" H 2765 7296 50  0000 L CNN
F 1 "0.1uF" H 2765 7205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2688 7100 50  0001 C CNN
F 3 "~" H 2650 7250 50  0001 C CNN
	1    2650 7250
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR040
U 1 1 610BBBFE
P 3100 7400
F 0 "#PWR040" H 3100 7500 50  0001 C CNN
F 1 "-12V" H 3115 7573 50  0000 C CNN
F 2 "" H 3100 7400 50  0001 C CNN
F 3 "" H 3100 7400 50  0001 C CNN
	1    3100 7400
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR039
U 1 1 610BBED8
P 2650 7400
F 0 "#PWR039" H 2650 7500 50  0001 C CNN
F 1 "-12V" H 2665 7573 50  0000 C CNN
F 2 "" H 2650 7400 50  0001 C CNN
F 3 "" H 2650 7400 50  0001 C CNN
	1    2650 7400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 610BC2B4
P 3100 7100
F 0 "#PWR034" H 3100 6850 50  0001 C CNN
F 1 "GND" H 3105 6927 50  0000 C CNN
F 2 "" H 3100 7100 50  0001 C CNN
F 3 "" H 3100 7100 50  0001 C CNN
	1    3100 7100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR033
U 1 1 610BC4AC
P 2650 7100
F 0 "#PWR033" H 2650 6850 50  0001 C CNN
F 1 "GND" H 2655 6927 50  0000 C CNN
F 2 "" H 2650 7100 50  0001 C CNN
F 3 "" H 2650 7100 50  0001 C CNN
	1    2650 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R28
U 1 1 610C2315
P 3050 5750
F 0 "R28" V 2850 5700 50  0000 L CNN
F 1 "1k" V 2950 5700 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3090 5740 50  0001 C CNN
F 3 "" H 3050 5750 50  0001 C CNN
	1    3050 5750
	0    1    1    0   
$EndComp
Connection ~ 2900 5750
Wire Wire Line
	7350 3350 7550 3350
$Comp
L Amplifier_Operational:TL074 U3
U 1 1 6105E90D
P 2050 4800
F 0 "U3" H 2050 5167 50  0000 C CNN
F 1 "TL074" H 2050 5076 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2000 4900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2100 5000 50  0001 C CNN
	1    2050 4800
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 61219450
P 1700 4950
F 0 "#PWR023" H 1700 4700 50  0001 C CNN
F 1 "GND" H 1705 4777 50  0000 C CNN
F 2 "" H 1700 4950 50  0001 C CNN
F 3 "" H 1700 4950 50  0001 C CNN
	1    1700 4950
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR024
U 1 1 612199BE
P 1100 5000
F 0 "#PWR024" H 1100 5100 50  0001 C CNN
F 1 "-12V" H 1115 5173 50  0000 C CNN
F 2 "" H 1100 5000 50  0001 C CNN
F 3 "" H 1100 5000 50  0001 C CNN
	1    1100 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R23
U 1 1 6121A500
P 1350 4900
F 0 "R23" V 1550 4900 50  0000 C CNN
F 1 "240k" V 1450 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1390 4890 50  0001 C CNN
F 3 "" H 1350 4900 50  0001 C CNN
	1    1350 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4950 1700 4900
Wire Wire Line
	1700 4900 1750 4900
Wire Wire Line
	1100 5000 1100 4900
Wire Wire Line
	1100 4900 1200 4900
Wire Wire Line
	1500 4900 1600 4900
$Comp
L Device:R_US R22
U 1 1 61234038
P 1350 4700
F 0 "R22" V 1145 4700 50  0000 C CNN
F 1 "33k" V 1236 4700 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 1390 4690 50  0001 C CNN
F 3 "" H 1350 4700 50  0001 C CNN
	1    1350 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R20
U 1 1 612345F7
P 2050 4500
F 0 "R20" V 1845 4500 50  0000 C CNN
F 1 "169k" V 1936 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2090 4490 50  0001 C CNN
F 3 "" H 2050 4500 50  0001 C CNN
	1    2050 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 61234B2C
P 2050 4150
F 0 "C5" V 1798 4150 50  0000 C CNN
F 1 "2.2nF" V 1889 4150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2088 4000 50  0001 C CNN
F 3 "~" H 2050 4150 50  0001 C CNN
	1    2050 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 4900 1600 4700
Wire Wire Line
	1600 4700 1750 4700
Wire Wire Line
	1500 4700 1600 4700
Connection ~ 1600 4700
Wire Wire Line
	1200 4700 950  4700
Wire Wire Line
	1750 4700 1750 4500
Wire Wire Line
	1750 4500 1900 4500
Connection ~ 1750 4700
Wire Wire Line
	2200 4500 2350 4500
Wire Wire Line
	1750 4500 1750 4150
Wire Wire Line
	1750 4150 1900 4150
Connection ~ 1750 4500
Wire Wire Line
	2200 4150 2350 4150
Wire Wire Line
	2350 4150 2350 4500
Connection ~ 2350 4500
Wire Wire Line
	2350 4500 2350 4800
Wire Wire Line
	2000 5650 1800 5650
Text HLabel 3500 5750 2    50   Output ~ 0
pulse-out
Wire Wire Line
	3500 5750 3250 5750
$Comp
L Connector:TestPoint TP3
U 1 1 612B870D
P 3250 6100
F 0 "TP3" V 3204 6288 50  0000 L CNN
F 1 "Pulse" V 3295 6288 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 3450 6100 50  0001 C CNN
F 3 "~" H 3450 6100 50  0001 C CNN
	1    3250 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 6100 3250 5750
Connection ~ 3250 5750
Wire Wire Line
	3250 5750 3200 5750
Connection ~ 5300 1150
Text Label 5500 4350 2    50   ~ 0
tri-pre
$Comp
L Amplifier_Operational:TL074 U4
U 1 1 6139A3DD
P 6300 4450
F 0 "U4" H 6300 4817 50  0000 C CNN
F 1 "TL074" H 6300 4726 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6250 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 4650 50  0001 C CNN
	1    6300 4450
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R19
U 1 1 6139BFB6
P 5850 4350
F 0 "R19" V 5650 4250 50  0000 L CNN
F 1 "10k" V 5750 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 5890 4340 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 5850 4350 50  0001 C CNN
	1    5850 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R18
U 1 1 6139C6D4
P 6300 4100
F 0 "R18" V 6100 4050 50  0000 L CNN
F 1 "3.57k" V 6200 4050 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6340 4090 50  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
	1    6300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 4450 6750 4450
$Comp
L Device:C C6
U 1 1 613A3385
P 6900 4450
F 0 "C6" V 6648 4450 50  0000 C CNN
F 1 "10uF" V 6739 4450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6938 4300 50  0001 C CNN
F 3 "~" H 6900 4450 50  0001 C CNN
	1    6900 4450
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 613A46FD
P 7150 4600
F 0 "D4" V 7100 4750 50  0000 R CNN
F 1 "1N5819" V 7000 4950 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-123" H 7150 4600 50  0001 C CNN
F 3 "~" H 7150 4600 50  0001 C CNN
	1    7150 4600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 613A5204
P 7450 4600
F 0 "R21" H 7518 4646 50  0000 L CNN
F 1 "47k" H 7518 4555 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7490 4590 50  0001 C CNN
F 3 "~" H 7450 4600 50  0001 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 613A85B3
P 7150 4750
F 0 "#PWR021" H 7150 4500 50  0001 C CNN
F 1 "GND" H 7155 4577 50  0000 C CNN
F 2 "" H 7150 4750 50  0001 C CNN
F 3 "" H 7150 4750 50  0001 C CNN
	1    7150 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 613A88EA
P 7450 4750
F 0 "#PWR022" H 7450 4500 50  0001 C CNN
F 1 "GND" H 7455 4577 50  0000 C CNN
F 2 "" H 7450 4750 50  0001 C CNN
F 3 "" H 7450 4750 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4450 7150 4450
Wire Wire Line
	7150 4450 7450 4450
Connection ~ 7150 4450
Wire Wire Line
	6450 4100 6600 4100
Wire Wire Line
	6600 4100 6600 4450
Connection ~ 6600 4450
Wire Wire Line
	6150 4100 6000 4100
Wire Wire Line
	6000 4100 6000 4350
Connection ~ 6000 4350
$Comp
L power:GND #PWR020
U 1 1 613BCDA9
P 5950 4600
F 0 "#PWR020" H 5950 4350 50  0001 C CNN
F 1 "GND" H 5955 4427 50  0000 C CNN
F 2 "" H 5950 4600 50  0001 C CNN
F 3 "" H 5950 4600 50  0001 C CNN
	1    5950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4600 5950 4550
Wire Wire Line
	5950 4550 6000 4550
$Comp
L Amplifier_Operational:TL074 U4
U 2 1 613C2804
P 6300 5700
F 0 "U4" H 6300 6067 50  0000 C CNN
F 1 "TL074" H 6300 5976 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6250 5800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6350 5900 50  0001 C CNN
	2    6300 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R33
U 1 1 613C5174
P 6000 6300
F 0 "R33" H 6068 6346 50  0000 L CNN
F 1 "10k" H 6068 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 6040 6290 50  0001 C CNN
F 3 "~" H 6000 6300 50  0001 C CNN
	1    6000 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R29
U 1 1 613C5988
P 6350 6000
F 0 "R29" V 6550 5950 50  0000 L CNN
F 1 "30.1k" V 6450 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6390 5990 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 6350 6000 50  0001 C CNN
	1    6350 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 6000 6000 6000
Wire Wire Line
	6000 6000 6000 6150
Wire Wire Line
	6000 6000 6000 5800
Connection ~ 6000 6000
Wire Wire Line
	6500 6000 6600 6000
Wire Wire Line
	6600 6000 6600 5700
$Comp
L power:GND #PWR029
U 1 1 613E5B2E
P 6000 6450
F 0 "#PWR029" H 6000 6200 50  0001 C CNN
F 1 "GND" H 6005 6277 50  0000 C CNN
F 2 "" H 6000 6450 50  0001 C CNN
F 3 "" H 6000 6450 50  0001 C CNN
	1    6000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4350 5700 4350
$Comp
L Device:C C8
U 1 1 613FC178
P 7200 6000
F 0 "C8" V 6948 6000 50  0000 C CNN
F 1 "10uF" V 7039 6000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7238 5850 50  0001 C CNN
F 3 "~" H 7200 6000 50  0001 C CNN
	1    7200 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R32
U 1 1 613FC7CF
P 7350 6150
F 0 "R32" H 7418 6196 50  0000 L CNN
F 1 "47k" H 7418 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7390 6140 50  0001 C CNN
F 3 "~" H 7350 6150 50  0001 C CNN
	1    7350 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R30
U 1 1 613FD728
P 7700 6000
F 0 "R30" V 7900 5950 50  0000 L CNN
F 1 "10k" V 7800 5900 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7740 5990 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 7700 6000 50  0001 C CNN
	1    7700 6000
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:TL074 U4
U 3 1 613FDE19
P 8150 6100
F 0 "U4" H 8150 6450 50  0000 C CNN
F 1 "TL074" H 8150 6350 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8100 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8200 6300 50  0001 C CNN
	3    8150 6100
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R27
U 1 1 614068ED
P 8150 5700
F 0 "R27" V 7950 5650 50  0000 L CNN
F 1 "8.25k" V 8050 5650 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8190 5690 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 8150 5700 50  0001 C CNN
	1    8150 5700
	0    1    1    0   
$EndComp
Connection ~ 7850 6000
$Comp
L power:GND #PWR027
U 1 1 6141D427
P 7800 6250
F 0 "#PWR027" H 7800 6000 50  0001 C CNN
F 1 "GND" H 7805 6077 50  0000 C CNN
F 2 "" H 7800 6250 50  0001 C CNN
F 3 "" H 7800 6250 50  0001 C CNN
	1    7800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 6250 7800 6200
Wire Wire Line
	7800 6200 7850 6200
Wire Wire Line
	7550 6000 7350 6000
Connection ~ 7350 6000
$Comp
L power:GND #PWR028
U 1 1 6142A11E
P 7350 6300
F 0 "#PWR028" H 7350 6050 50  0001 C CNN
F 1 "GND" H 7355 6127 50  0000 C CNN
F 2 "" H 7350 6300 50  0001 C CNN
F 3 "" H 7350 6300 50  0001 C CNN
	1    7350 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R31
U 1 1 6145F767
P 8600 6100
F 0 "R31" V 8400 6050 50  0000 L CNN
F 1 "1k" V 8500 6050 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8640 6090 50  0001 C CNN
F 3 "" H 8600 6100 50  0001 C CNN
	1    8600 6100
	0    1    1    0   
$EndComp
Connection ~ 8450 6100
Wire Wire Line
	7850 5700 8000 5700
Wire Wire Line
	7850 5700 7850 6000
Wire Wire Line
	8300 5700 8450 5700
Connection ~ 8450 5700
Wire Wire Line
	8450 5700 8450 6100
Wire Wire Line
	2350 4800 2350 5250
Wire Wire Line
	2350 5250 1200 5250
Wire Wire Line
	1200 5250 1200 5550
Connection ~ 2350 4800
Wire Wire Line
	1200 5750 950  5750
Wire Wire Line
	6000 5600 6000 5150
Wire Wire Line
	6000 5150 7700 5150
Wire Wire Line
	7700 5150 7700 4450
Wire Wire Line
	7700 4450 7450 4450
Connection ~ 7450 4450
$Comp
L Device:C C7
U 1 1 61521E3B
P 8150 5350
F 0 "C7" V 7898 5350 50  0000 C CNN
F 1 "22pF" V 7989 5350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8188 5200 50  0001 C CNN
F 3 "~" H 8150 5350 50  0001 C CNN
	1    8150 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 5350 8450 5350
Wire Wire Line
	8450 5350 8450 5700
Wire Wire Line
	8000 5350 7850 5350
Wire Wire Line
	7850 5350 7850 5700
Connection ~ 7850 5700
Wire Wire Line
	7050 6000 6600 6000
Connection ~ 6600 6000
$Comp
L power:-12V #PWR025
U 1 1 6154063C
P 7500 5400
F 0 "#PWR025" H 7500 5500 50  0001 C CNN
F 1 "-12V" H 7515 5573 50  0000 C CNN
F 2 "" H 7500 5400 50  0001 C CNN
F 3 "" H 7500 5400 50  0001 C CNN
	1    7500 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R25
U 1 1 61540C41
P 7700 5350
F 0 "R25" V 7900 5300 50  0000 L CNN
F 1 "47k" V 7800 5250 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7740 5340 50  0001 C CNN
F 3 "https://www.vishay.com/docs/20035/dcrcwe3.pdf" H 7700 5350 50  0001 C CNN
	1    7700 5350
	0    1    1    0   
$EndComp
Connection ~ 7850 5350
Wire Wire Line
	7500 5400 7500 5350
Wire Wire Line
	7500 5350 7550 5350
Text HLabel 9000 6100 2    50   Output ~ 0
notch-out
Wire Wire Line
	8750 6100 8800 6100
$Comp
L Connector:TestPoint TP4
U 1 1 6157A1B6
P 8800 6300
F 0 "TP4" V 8754 6488 50  0000 L CNN
F 1 "Notch" V 8845 6488 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 9000 6300 50  0001 C CNN
F 3 "~" H 9000 6300 50  0001 C CNN
	1    8800 6300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8800 6300 8800 6100
Connection ~ 8800 6100
Wire Wire Line
	8800 6100 9000 6100
Text Notes 950  4600 2    50   ~ 0
0v -> 3.3v
$Comp
L power:GND #PWR042
U 1 1 6170DC2B
P 4400 7400
F 0 "#PWR042" H 4400 7150 50  0001 C CNN
F 1 "GND" H 4405 7227 50  0000 C CNN
F 2 "" H 4400 7400 50  0001 C CNN
F 3 "" H 4400 7400 50  0001 C CNN
	1    4400 7400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR036
U 1 1 6170DED0
P 4400 7100
F 0 "#PWR036" H 4400 6950 50  0001 C CNN
F 1 "+12V" H 4415 7273 50  0000 C CNN
F 2 "" H 4400 7100 50  0001 C CNN
F 3 "" H 4400 7100 50  0001 C CNN
	1    4400 7100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:TL074 U3
U 4 1 61B576B7
P 7200 2000
F 0 "U3" H 7200 1633 50  0000 C CNN
F 1 "TL074" H 7200 1724 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7150 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7250 2200 50  0001 C CNN
	4    7200 2000
	1    0    0    1   
$EndComp
Connection ~ 6900 1900
Connection ~ 7500 2000
$Comp
L Amplifier_Operational:TL074 U4
U 4 1 61B5E55A
P 8150 3450
F 0 "U4" H 8150 3083 50  0000 C CNN
F 1 "TL074" H 8150 3174 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8100 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 8200 3650 50  0001 C CNN
	4    8150 3450
	1    0    0    1   
$EndComp
Connection ~ 7850 3350
Connection ~ 8450 3450
Text Notes 6300 7000 0    50   ~ 10
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$EndSCHEMATC
