EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7000 6750 0    50   ~ 10
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$Comp
L power:GND #PWR0103
U 1 1 61254B63
P 4100 5500
F 0 "#PWR0103" H 4100 5250 50  0001 C CNN
F 1 "GND" H 4105 5327 50  0000 C CNN
F 2 "" H 4100 5500 50  0001 C CNN
F 3 "" H 4100 5500 50  0001 C CNN
	1    4100 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR098
U 1 1 61255A6B
P 4700 1600
F 0 "#PWR098" H 4700 1350 50  0001 C CNN
F 1 "GND" H 4705 1427 50  0000 C CNN
F 2 "" H 4700 1600 50  0001 C CNN
F 3 "" H 4700 1600 50  0001 C CNN
	1    4700 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C32
U 1 1 612564E9
P 4550 1500
F 0 "C32" V 4298 1500 50  0000 C CNN
F 1 "1uF" V 4389 1500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4588 1350 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 4550 1500 50  0001 C CNN
F 4 "0805DC105KAT2A" H 4550 1500 50  0001 C CNN "MFG Part No."
	1    4550 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 1700 4400 1500
Wire Wire Line
	4700 1500 4700 1600
$Comp
L power:+3.3VA #PWR097
U 1 1 61256F11
P 4300 1300
F 0 "#PWR097" H 4300 1150 50  0001 C CNN
F 1 "+3.3VA" H 4315 1473 50  0000 C CNN
F 2 "" H 4300 1300 50  0001 C CNN
F 3 "" H 4300 1300 50  0001 C CNN
	1    4300 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR096
U 1 1 6125778D
P 4000 1300
F 0 "#PWR096" H 4000 1150 50  0001 C CNN
F 1 "+3.3V" H 4015 1473 50  0000 C CNN
F 2 "" H 4000 1300 50  0001 C CNN
F 3 "" H 4000 1300 50  0001 C CNN
	1    4000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1700 4300 1300
Wire Wire Line
	4000 1700 4000 1600
Wire Wire Line
	4100 1700 4100 1600
Wire Wire Line
	4100 1600 4000 1600
Connection ~ 4000 1600
Wire Wire Line
	4000 1600 4000 1300
$Comp
L power:GND #PWR0104
U 1 1 6125F359
P 4300 5500
F 0 "#PWR0104" H 4300 5250 50  0001 C CNN
F 1 "GND" H 4305 5327 50  0000 C CNN
F 2 "" H 4300 5500 50  0001 C CNN
F 3 "" H 4300 5500 50  0001 C CNN
	1    4300 5500
	1    0    0    -1  
$EndComp
Text Label 3200 4800 2    50   ~ 0
SWCLK
Text Label 3200 4900 2    50   ~ 0
SWDIO
Text Label 3200 5100 2    50   ~ 0
RESET
Text Label 3200 2300 2    50   ~ 0
AIN[1](VREFA)
Text Label 3200 4400 2    50   ~ 0
D-
Text Label 3200 4500 2    50   ~ 0
D+
Text Label 3200 2400 2    50   ~ 0
AIN[4](VREFB)
Text Label 3200 3600 2    50   ~ 0
SERCOM1[0]
Text Label 3200 3700 2    50   ~ 0
SERCOM1[1]
Text Label 3200 3200 2    50   ~ 0
SERCOM4[0]
Text Label 3200 3300 2    50   ~ 0
SERCOM4[1]
Text Label 3200 3000 2    50   ~ 0
TCC0_WO[2]
Text Label 3200 3100 2    50   ~ 0
TCC0_WO[3]
Text Label 5200 2400 0    50   ~ 0
TCC0_WO[4]
Text Label 5200 2500 0    50   ~ 0
TCC0_WO[5]
Text Label 3200 2500 2    50   ~ 0
AIN[5]
Text Label 3200 2600 2    50   ~ 0
AIN[6]
Text Label 3200 2700 2    50   ~ 0
AIN[7]
Text Label 3200 2200 2    50   ~ 0
AIN[0]
$Comp
L Connector:USB_B_Micro J3
U 1 1 61271877
P 7800 4700
F 0 "J3" H 7857 5167 50  0000 C CNN
F 1 "USB_B_Micro" H 7857 5076 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Amphenol_10103594-0001LF_Horizontal" H 7950 4650 50  0001 C CNN
F 3 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10103594.pdf" H 7950 4650 50  0001 C CNN
F 4 "10103594-0001LF" H 7800 4700 50  0001 C CNN "MFG Part No."
	1    7800 4700
	1    0    0    -1  
$EndComp
NoConn ~ 7700 5100
Text Label 8100 4800 0    50   ~ 0
D-
Text Label 8100 4700 0    50   ~ 0
D+
$Comp
L power:GND #PWR099
U 1 1 612733FD
P 8300 5250
F 0 "#PWR099" H 8300 5000 50  0001 C CNN
F 1 "GND" H 8305 5077 50  0000 C CNN
F 2 "" H 8300 5250 50  0001 C CNN
F 3 "" H 8300 5250 50  0001 C CNN
	1    8300 5250
	1    0    0    -1  
$EndComp
NoConn ~ 8100 4500
Text Label 1100 6800 1    50   ~ 0
AIN[1](VREFA)
$Comp
L power:GND #PWR0109
U 1 1 61276F15
P 1100 7100
F 0 "#PWR0109" H 1100 6850 50  0001 C CNN
F 1 "GND" H 1105 6927 50  0000 C CNN
F 2 "" H 1100 7100 50  0001 C CNN
F 3 "" H 1100 7100 50  0001 C CNN
	1    1100 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C33
U 1 1 61276D91
P 1100 6950
F 0 "C33" H 985 6904 50  0000 R CNN
F 1 "0.1uF" H 985 6995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1138 6800 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 1100 6950 50  0001 C CNN
F 4 "08055C104KAT4A" H 1100 6950 50  0001 C CNN "MFG Part No."
	1    1100 6950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 6126CB62
P 1550 6800
F 0 "#PWR0106" H 1550 6650 50  0001 C CNN
F 1 "+3.3V" H 1565 6973 50  0000 C CNN
F 2 "" H 1550 6800 50  0001 C CNN
F 3 "" H 1550 6800 50  0001 C CNN
	1    1550 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6126C9B3
P 1550 7100
F 0 "#PWR0110" H 1550 6850 50  0001 C CNN
F 1 "GND" H 1555 6927 50  0000 C CNN
F 2 "" H 1550 7100 50  0001 C CNN
F 3 "" H 1550 7100 50  0001 C CNN
	1    1550 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 6126C563
P 1550 6950
F 0 "C34" H 1435 6904 50  0000 R CNN
F 1 "0.1uF" H 1435 6995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1588 6800 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 1550 6950 50  0001 C CNN
F 4 "08055C104KAT4A" H 1550 6950 50  0001 C CNN "MFG Part No."
	1    1550 6950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0107
U 1 1 61261682
P 2000 6800
F 0 "#PWR0107" H 2000 6650 50  0001 C CNN
F 1 "+3.3V" H 2015 6973 50  0000 C CNN
F 2 "" H 2000 6800 50  0001 C CNN
F 3 "" H 2000 6800 50  0001 C CNN
	1    2000 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR0108
U 1 1 61261130
P 2900 6800
F 0 "#PWR0108" H 2900 6650 50  0001 C CNN
F 1 "+3.3VA" H 2915 6973 50  0000 C CNN
F 2 "" H 2900 6800 50  0001 C CNN
F 3 "" H 2900 6800 50  0001 C CNN
	1    2900 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 61260E13
P 2900 7100
F 0 "#PWR0112" H 2900 6850 50  0001 C CNN
F 1 "GND" H 2905 6927 50  0000 C CNN
F 2 "" H 2900 7100 50  0001 C CNN
F 3 "" H 2900 7100 50  0001 C CNN
	1    2900 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 6126094B
P 2000 7100
F 0 "#PWR0111" H 2000 6850 50  0001 C CNN
F 1 "GND" H 2005 6927 50  0000 C CNN
F 2 "" H 2000 7100 50  0001 C CNN
F 3 "" H 2000 7100 50  0001 C CNN
	1    2000 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C36
U 1 1 61260668
P 2900 6950
F 0 "C36" H 2785 6904 50  0000 R CNN
F 1 "0.1uF" H 2785 6995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2938 6800 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2900 6950 50  0001 C CNN
F 4 "08055C104KAT4A" H 2900 6950 50  0001 C CNN "MFG Part No."
	1    2900 6950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C35
U 1 1 6125F59A
P 2000 6950
F 0 "C35" H 1885 6904 50  0000 R CNN
F 1 "0.1uF" H 1885 6995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 6800 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2000 6950 50  0001 C CNN
F 4 "08055C104KAT4A" H 2000 6950 50  0001 C CNN "MFG Part No."
	1    2000 6950
	-1   0    0    1   
$EndComp
Wire Notes Line
	2650 2950 2650 3100
Wire Notes Line
	2650 3150 2650 3300
Wire Notes Line
	2650 4350 2650 4500
Wire Notes Line
	2650 4750 2650 4900
Wire Notes Line
	2650 2150 2650 2700
Text Notes 2600 2200 2    50   ~ 0
Analog Ins/VREF
Text Notes 2600 3000 2    50   ~ 0
Slider LED PWM
Text Notes 2600 3200 2    50   ~ 0
I2C - DAC
Text Notes 2600 4400 2    50   ~ 0
USB
Text Notes 2600 4800 2    50   ~ 0
DEBUG
Text Notes 5750 2400 0    50   ~ 0
Slider LED PWM
Wire Notes Line
	5700 2350 5700 2500
Text Label 8200 1450 2    50   ~ 0
AIN[0]
Text Label 8200 1550 2    50   ~ 0
AIN[4](VREFB)
Text Label 8200 1650 2    50   ~ 0
AIN[5]
Text Label 8200 1750 2    50   ~ 0
AIN[6]
Text Label 8200 1850 2    50   ~ 0
AIN[7]
Text Label 8200 2000 2    50   ~ 0
TCC0_WO[2]
Text Label 8200 2100 2    50   ~ 0
TCC0_WO[3]
Text Label 8200 2200 2    50   ~ 0
TCC0_WO[4]
Text Label 8200 2300 2    50   ~ 0
TCC0_WO[5]
Text Label 8200 2450 2    50   ~ 0
SERCOM4[0]
Text Label 8200 2550 2    50   ~ 0
SERCOM4[1]
Text Label 8200 2700 2    50   ~ 0
SERCOM1[0]
Text Label 8200 2800 2    50   ~ 0
SERCOM1[1]
Text Notes 7600 1350 2    50   ~ 0
Analog Ins/VREF
Text Notes 7600 2000 2    50   ~ 0
Slider LED PWM
Text Notes 7600 2450 2    50   ~ 0
I2C - DAC
Wire Notes Line
	7650 1950 7650 2300
Wire Notes Line
	7650 2400 7650 2550
Wire Notes Line
	2650 3550 2650 3700
Text Notes 2600 3600 2    50   ~ 0
I2C - RGB
Wire Notes Line
	7650 2650 7650 2800
Text Notes 7600 2700 2    50   ~ 0
I2C - RGB
Text HLabel 8450 2000 2    50   Output ~ 0
tri-slider-led
Text HLabel 8450 2100 2    50   Output ~ 0
square-slider-led
Text HLabel 8450 2200 2    50   Output ~ 0
pulse-slider-led
Text HLabel 8450 2300 2    50   Output ~ 0
notch-slider-led
Text HLabel 8450 2450 2    50   Output ~ 0
dac-sda
Text HLabel 8450 2550 2    50   Output ~ 0
dac-scl
Text HLabel 8450 2700 2    50   Output ~ 0
rgb-sda
Text HLabel 8450 2800 2    50   Output ~ 0
rgb-scl
Text HLabel 8450 1450 2    50   Input ~ 0
v-oct-scaled
Text HLabel 8450 1550 2    50   Input ~ 0
pwm-scaled
Wire Wire Line
	8200 1450 8450 1450
Wire Wire Line
	8200 1550 8450 1550
Wire Wire Line
	8200 1650 8450 1650
Wire Wire Line
	8200 1750 8450 1750
Wire Wire Line
	8200 1850 8450 1850
Wire Wire Line
	8200 2000 8450 2000
Wire Wire Line
	8200 2100 8450 2100
Wire Wire Line
	8200 2200 8450 2200
Wire Wire Line
	8200 2300 8450 2300
Wire Wire Line
	8200 2450 8450 2450
Wire Wire Line
	8200 2550 8450 2550
Wire Wire Line
	8200 2700 8450 2700
Wire Wire Line
	8200 2800 8450 2800
Text Label 9750 2000 2    50   ~ 0
TCC0_WO[2]
Text Label 9750 2100 2    50   ~ 0
TCC0_WO[3]
Text Label 9750 2200 2    50   ~ 0
TCC0_WO[4]
Text Label 9750 2300 2    50   ~ 0
TCC0_WO[5]
Text Label 9750 1350 2    50   ~ 0
AIN[0]
Text Label 9750 1550 2    50   ~ 0
AIN[4](VREFB)
Wire Wire Line
	9750 1550 9850 1550
Wire Wire Line
	9750 1350 9850 1350
Wire Wire Line
	9750 2000 9850 2000
Wire Wire Line
	9750 2100 9850 2100
Wire Wire Line
	9750 2200 9850 2200
Wire Wire Line
	9750 2300 9850 2300
Text Label 9750 2450 2    50   ~ 0
SERCOM4[0]
Text Label 9750 2550 2    50   ~ 0
SERCOM4[1]
Text Label 9750 2700 2    50   ~ 0
SERCOM1[0]
Text Label 9750 2800 2    50   ~ 0
SERCOM1[1]
Wire Wire Line
	9750 2800 9850 2800
Wire Wire Line
	9750 2700 9850 2700
Wire Wire Line
	9750 2550 9850 2550
Wire Wire Line
	9750 2450 9850 2450
NoConn ~ 8450 1750
NoConn ~ 8450 1850
Wire Notes Line
	7650 1300 7650 1850
Text HLabel 8450 1650 2    50   Input ~ 0
pwm-pot
Text Label 9750 1650 2    50   ~ 0
AIN[5]
Wire Wire Line
	9750 1650 9850 1650
$Comp
L Device:C C37
U 1 1 612C1408
P 2450 6950
F 0 "C37" H 2335 6904 50  0000 R CNN
F 1 "0.1uF" H 2335 6995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 6800 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2450 6950 50  0001 C CNN
F 4 "08055C104KAT4A" H 2450 6950 50  0001 C CNN "MFG Part No."
	1    2450 6950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 612C225D
P 2450 7100
F 0 "#PWR0115" H 2450 6850 50  0001 C CNN
F 1 "GND" H 2455 6927 50  0000 C CNN
F 2 "" H 2450 7100 50  0001 C CNN
F 3 "" H 2450 7100 50  0001 C CNN
	1    2450 7100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 612C23C7
P 2450 6800
F 0 "#PWR0114" H 2450 6650 50  0001 C CNN
F 1 "+3.3V" H 2465 6973 50  0000 C CNN
F 2 "" H 2450 6800 50  0001 C CNN
F 3 "" H 2450 6800 50  0001 C CNN
	1    2450 6800
	1    0    0    -1  
$EndComp
Text Label 3200 4000 2    50   ~ 0
TCC0_WO[6]
Wire Notes Line
	2650 3950 2650 4000
Text Notes 2600 4000 2    50   ~ 0
Power LED
$Comp
L Connector:TestPoint TP15
U 1 1 612D0F25
P 9850 2800
F 0 "TP15" V 9850 3000 50  0000 L CNN
F 1 "L_SCL" V 9850 3250 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2800 50  0001 C CNN
F 3 "~" H 10050 2800 50  0001 C CNN
	1    9850 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP14
U 1 1 612D0C87
P 9850 2700
F 0 "TP14" V 9850 2900 50  0000 L CNN
F 1 "L_SDA" V 9850 3150 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2700 50  0001 C CNN
F 3 "~" H 10050 2700 50  0001 C CNN
	1    9850 2700
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP13
U 1 1 612D0AC8
P 9850 2550
F 0 "TP13" V 9850 2750 50  0000 L CNN
F 1 "D_SCL" V 9850 3000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2550 50  0001 C CNN
F 3 "~" H 10050 2550 50  0001 C CNN
	1    9850 2550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP12
U 1 1 612D09B5
P 9850 2450
F 0 "TP12" V 9850 2650 50  0000 L CNN
F 1 "D_SDA" V 9850 2900 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2450 50  0001 C CNN
F 3 "~" H 10050 2450 50  0001 C CNN
	1    9850 2450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP11
U 1 1 612CC0B4
P 9850 2300
F 0 "TP11" V 9850 2500 50  0000 L CNN
F 1 "NSL" V 9850 2750 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2300 50  0001 C CNN
F 3 "~" H 10050 2300 50  0001 C CNN
	1    9850 2300
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP10
U 1 1 612CBF22
P 9850 2200
F 0 "TP10" V 9850 2400 50  0000 L CNN
F 1 "PSL" V 9850 2650 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2200 50  0001 C CNN
F 3 "~" H 10050 2200 50  0001 C CNN
	1    9850 2200
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 612CBDA8
P 9850 2100
F 0 "TP9" V 9850 2300 50  0000 L CNN
F 1 "SSL" V 9850 2550 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2100 50  0001 C CNN
F 3 "~" H 10050 2100 50  0001 C CNN
	1    9850 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP8
U 1 1 612CB483
P 9850 2000
F 0 "TP8" V 9850 2200 50  0000 L CNN
F 1 "TSL" V 9850 2450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 2000 50  0001 C CNN
F 3 "~" H 10050 2000 50  0001 C CNN
	1    9850 2000
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP7
U 1 1 612FF9CA
P 9850 1650
F 0 "TP7" V 9850 1850 50  0000 L CNN
F 1 "POT" V 9850 2100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 1650 50  0001 C CNN
F 3 "~" H 10050 1650 50  0001 C CNN
	1    9850 1650
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 612CCF41
P 9850 1550
F 0 "TP6" V 9850 1750 50  0000 L CNN
F 1 "PWM" V 9850 2000 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 1550 50  0001 C CNN
F 3 "~" H 10050 1550 50  0001 C CNN
	1    9850 1550
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 612CD3DC
P 9850 1350
F 0 "TP5" V 9850 1550 50  0000 L CNN
F 1 "V/OCT" V 9850 1800 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 10050 1350 50  0001 C CNN
F 3 "~" H 10050 1350 50  0001 C CNN
	1    9850 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R71
U 1 1 619A401E
P 8200 3350
F 0 "R71" H 8132 3304 50  0000 R CNN
F 1 "4.7k" H 8132 3395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8240 3340 50  0001 C CNN
F 3 "~" H 8200 3350 50  0001 C CNN
	1    8200 3350
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 619A4600
P 7850 3200
F 0 "#PWR03" H 7850 3050 50  0001 C CNN
F 1 "+3.3V" H 7865 3373 50  0000 C CNN
F 2 "" H 7850 3200 50  0001 C CNN
F 3 "" H 7850 3200 50  0001 C CNN
	1    7850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 619A4F3C
P 8200 3200
F 0 "#PWR0117" H 8200 3050 50  0001 C CNN
F 1 "+3.3V" H 8215 3373 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
Text Label 7850 3500 3    50   ~ 0
SERCOM1[0]
Text Label 8200 3500 3    50   ~ 0
SERCOM1[1]
$Comp
L Device:R_US R70
U 1 1 619A2856
P 7850 3350
F 0 "R70" H 7782 3304 50  0000 R CNN
F 1 "4.7k" H 7782 3395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7890 3340 50  0001 C CNN
F 3 "~" H 7850 3350 50  0001 C CNN
	1    7850 3350
	-1   0    0    1   
$EndComp
NoConn ~ 5200 2000
NoConn ~ 5200 2100
NoConn ~ 5200 2200
NoConn ~ 5200 2300
NoConn ~ 5200 2600
NoConn ~ 5200 2700
NoConn ~ 3200 2000
NoConn ~ 3200 2100
NoConn ~ 3200 2800
NoConn ~ 3200 2900
NoConn ~ 3200 3400
NoConn ~ 3200 3500
NoConn ~ 3200 3800
NoConn ~ 3200 3900
NoConn ~ 3200 4100
NoConn ~ 3200 4200
NoConn ~ 3200 4300
NoConn ~ 3200 4600
NoConn ~ 3200 4700
$Comp
L Device:Net-Tie_2 NT1
U 1 1 61A46866
P 8050 5250
F 0 "NT1" H 8050 5431 50  0000 C CNN
F 1 "GND_Net_Tie" H 8050 5340 50  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 8050 5250 50  0001 C CNN
F 3 "~" H 8050 5250 50  0001 C CNN
	1    8050 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR0118
U 1 1 61A48DA9
P 7800 5250
F 0 "#PWR0118" H 7800 5000 50  0001 C CNN
F 1 "GNDD" H 7804 5095 50  0000 C CNN
F 2 "" H 7800 5250 50  0001 C CNN
F 3 "" H 7800 5250 50  0001 C CNN
	1    7800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5100 7800 5250
Wire Wire Line
	7800 5250 7950 5250
Connection ~ 7800 5250
Wire Wire Line
	8100 4900 8300 4900
Wire Wire Line
	8300 4900 8300 5250
Wire Wire Line
	8300 5250 8150 5250
Connection ~ 8300 5250
Text Notes 8450 5400 0    50   ~ 0
Satisfies the ERC - The USB micro symbol here considers\nGND to be a Power Output pin, meaning we can't just tie our \nown GND to it directly. Instead KiCad can accomplish joining\nof ground planes via this special Net Tie symbol. In practice\nthis appears to just give us a copper trace we can use to "join"\nthe two ground planes on the PCB
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 61314E6C
P 6300 4350
F 0 "SW1" H 6300 4735 50  0000 C CNN
F 1 "RESET_SW" H 6300 4644 50  0000 C CNN
F 2 "zzzzzzzz:SPST_TL3365AF180QG_SMD" H 6300 4650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 6300 4650 50  0001 C CNN
F 4 "TL3365AF180QG" H 6300 4350 50  0001 C CNN "MFG Part No."
	1    6300 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J4
U 1 1 612743E4
P 6250 3450
F 0 "J4" H 6300 3767 50  0000 C CNN
F 1 "TagConect SWD" H 6300 3676 50  0000 C CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" H 6250 3450 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
Connection ~ 6100 4350
Wire Wire Line
	6100 4250 6100 4350
Text Label 6050 4900 2    50   ~ 0
TCC0_WO[6]
Wire Wire Line
	6150 4900 6050 4900
Wire Wire Line
	6450 4900 6550 4900
$Comp
L Device:R_US R?
U 1 1 61561EEE
P 6300 4900
AR Path="/608DF28C/61561EEE" Ref="R?"  Part="1" 
AR Path="/60A53067/61561EEE" Ref="R1"  Part="1" 
F 0 "R1" V 6095 4900 50  0000 C CNN
F 1 "330R" V 6186 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6340 4890 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6300 4900 50  0001 C CNN
F 4 "RMCF0805FT330R" H 6300 4900 50  0001 C CNN "MFG Part No."
	1    6300 4900
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Microchip_SAMD:ATSAMD21G18A-AUT U11
U 1 1 61251CF9
P 4200 3600
F 0 "U11" H 4200 2700 50  0000 C CNN
F 1 "ATSAMD21G18A-AUT" H 4200 2800 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 3250 1850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D21_DA1_Family_Data%20Sheet_DS40001882E.pdf" H 4200 4600 50  0001 C CNN
F 4 "ATSAMD21G18A-AUT" H 4200 3600 50  0001 C CNN "MFG Part No."
	1    4200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4250 6500 4350
Connection ~ 6500 4350
$Comp
L power:GND #PWR?
U 1 1 61561EF4
P 6550 5200
AR Path="/608DF28C/61561EF4" Ref="#PWR?"  Part="1" 
AR Path="/60A53067/61561EF4" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 6550 4950 50  0001 C CNN
F 1 "GND" H 6555 5027 50  0000 C CNN
F 2 "" H 6550 5200 50  0001 C CNN
F 3 "" H 6550 5200 50  0001 C CNN
	1    6550 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 61561EE8
P 6550 5050
AR Path="/608DF28C/61561EE8" Ref="D?"  Part="1" 
AR Path="/60A53067/61561EE8" Ref="D1"  Part="1" 
F 0 "D1" V 6600 4850 50  0000 L CNN
F 1 "PWR" V 6500 4800 50  0000 L CNN
F 2 "zzzzzzzz:SunLED-Rev-2-PLCC-SeeThru" H 6550 5050 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Everlight%20PDFs/19-213USRC-S259-TR8.pdf" H 6550 5050 50  0001 C CNN
F 4 "‎XZMDK45WT-9‎" H 6550 5050 50  0001 C CNN "MFG Part No."
	1    6550 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 4350 6600 4450
Wire Wire Line
	6500 4350 6600 4350
Wire Wire Line
	6000 4350 6100 4350
$Comp
L power:GND #PWR0105
U 1 1 6127A860
P 6600 4450
F 0 "#PWR0105" H 6600 4200 50  0001 C CNN
F 1 "GND" H 6605 4277 50  0000 C CNN
F 2 "" H 6600 4450 50  0001 C CNN
F 3 "" H 6600 4450 50  0001 C CNN
	1    6600 4450
	1    0    0    -1  
$EndComp
Text Label 6000 4350 2    50   ~ 0
RESET
Wire Wire Line
	6550 3450 6700 3450
Wire Wire Line
	6550 3550 6700 3550
Wire Wire Line
	5900 3550 6050 3550
Wire Wire Line
	5900 3450 6050 3450
Wire Wire Line
	6050 3350 5900 3350
NoConn ~ 6550 3350
$Comp
L power:GND #PWR0102
U 1 1 61275A1E
P 6700 3450
F 0 "#PWR0102" H 6700 3200 50  0001 C CNN
F 1 "GND" V 6705 3322 50  0000 R CNN
F 2 "" H 6700 3450 50  0001 C CNN
F 3 "" H 6700 3450 50  0001 C CNN
	1    6700 3450
	0    -1   -1   0   
$EndComp
Text Label 6700 3550 0    50   ~ 0
SWCLK
Text Label 5900 3550 2    50   ~ 0
RESET
Text Label 5900 3450 2    50   ~ 0
SWDIO
$Comp
L power:+3.3V #PWR0101
U 1 1 6127506C
P 5900 3350
F 0 "#PWR0101" H 5900 3200 50  0001 C CNN
F 1 "+3.3V" V 5915 3478 50  0000 L CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
