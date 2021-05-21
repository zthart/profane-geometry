EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4150 5100 0    50   Input ~ 0
+12v-rack
Text HLabel 4150 5600 0    50   Input ~ 0
-12v-rack
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 608DF566
P 4200 3750
F 0 "U1" H 4200 3992 50  0000 C CNN
F 1 "LM1117-3.3" H 4200 3901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4200 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4200 3750 50  0001 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C1
U 1 1 608E166F
P 3700 3900
F 0 "C1" H 3815 3946 50  0000 L CNN
F 1 "47uF" H 3815 3855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.7" H 3700 3900 50  0001 C CNN
F 3 "~" H 3700 3900 50  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 608E1EC4
P 4700 3900
F 0 "C2" H 4815 3946 50  0000 L CNN
F 1 "47uF" H 4815 3855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.7" H 4700 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 608E3C5E
P 5150 3900
F 0 "C3" H 5265 3946 50  0000 L CNN
F 1 "0.1uF" H 5265 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5188 3750 50  0001 C CNN
F 3 "~" H 5150 3900 50  0001 C CNN
	1    5150 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 608E5375
P 5950 3500
F 0 "FB1" H 6050 3546 50  0000 L CNN
F 1 "FB" H 6050 3455 50  0000 L CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 5880 3500 50  0001 C CNN
F 3 "~" H 5950 3500 50  0001 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 608E5D33
P 4900 5100
F 0 "FB2" V 4663 5100 50  0000 C CNN
F 1 "FB" V 4754 5100 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 4830 5100 50  0001 C CNN
F 3 "~" H 4900 5100 50  0001 C CNN
	1    4900 5100
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 608E6AA8
P 4900 5600
F 0 "FB3" V 4663 5600 50  0000 C CNN
F 1 "FB" V 4754 5600 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric_Pad1.42x2.65mm_HandSolder" V 4830 5600 50  0001 C CNN
F 3 "~" H 4900 5600 50  0001 C CNN
	1    4900 5600
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 608E7377
P 5300 5100
F 0 "D1" H 5300 4883 50  0000 C CNN
F 1 "1N5819" H 5300 4974 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5300 5100 50  0001 C CNN
F 3 "~" H 5300 5100 50  0001 C CNN
	1    5300 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:D D2
U 1 1 608E7B60
P 5300 5600
F 0 "D2" H 5300 5817 50  0000 C CNN
F 1 "1N5819" H 5300 5726 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5300 5600 50  0001 C CNN
F 3 "~" H 5300 5600 50  0001 C CNN
	1    5300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5100 4800 5100
Wire Wire Line
	5000 5100 5150 5100
Wire Wire Line
	5450 5100 5500 5100
Wire Wire Line
	4150 5600 4800 5600
Wire Wire Line
	5000 5600 5150 5600
Wire Wire Line
	5450 5600 5500 5600
$Comp
L power:+12V #PWR011
U 1 1 608EC109
P 5600 5100
F 0 "#PWR011" H 5600 4950 50  0001 C CNN
F 1 "+12V" H 5615 5273 50  0000 C CNN
F 2 "" H 5600 5100 50  0001 C CNN
F 3 "" H 5600 5100 50  0001 C CNN
	1    5600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR013
U 1 1 608EC817
P 5600 5600
F 0 "#PWR013" H 5600 5700 50  0001 C CNN
F 1 "-12V" H 5615 5773 50  0000 C CNN
F 2 "" H 5600 5600 50  0001 C CNN
F 3 "" H 5600 5600 50  0001 C CNN
	1    5600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 608ECE35
P 5500 5100
F 0 "#FLG03" H 5500 5175 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 5273 50  0000 C CNN
F 2 "" H 5500 5100 50  0001 C CNN
F 3 "~" H 5500 5100 50  0001 C CNN
	1    5500 5100
	-1   0    0    1   
$EndComp
Connection ~ 5500 5100
Wire Wire Line
	5500 5100 5600 5100
$Comp
L power:PWR_FLAG #FLG05
U 1 1 608ED52A
P 5500 5600
F 0 "#FLG05" H 5500 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 5773 50  0000 C CNN
F 2 "" H 5500 5600 50  0001 C CNN
F 3 "~" H 5500 5600 50  0001 C CNN
	1    5500 5600
	-1   0    0    1   
$EndComp
Connection ~ 5500 5600
Wire Wire Line
	5500 5600 5600 5600
Wire Wire Line
	3700 3750 3900 3750
Wire Wire Line
	4500 3750 4700 3750
Wire Wire Line
	4700 3750 5150 3750
Connection ~ 4700 3750
Wire Wire Line
	5150 3750 5650 3750
Wire Wire Line
	5950 3750 5950 3600
Connection ~ 5150 3750
$Comp
L power:+12V #PWR06
U 1 1 608EE592
P 3350 3750
F 0 "#PWR06" H 3350 3600 50  0001 C CNN
F 1 "+12V" H 3365 3923 50  0000 C CNN
F 2 "" H 3350 3750 50  0001 C CNN
F 3 "" H 3350 3750 50  0001 C CNN
	1    3350 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 608EEC0D
P 6400 5300
F 0 "#PWR012" H 6400 5050 50  0001 C CNN
F 1 "GND" H 6405 5127 50  0000 C CNN
F 2 "" H 6400 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 608F0499
P 6400 5300
F 0 "#FLG04" H 6400 5375 50  0001 C CNN
F 1 "PWR_FLAG" H 6400 5473 50  0000 C CNN
F 2 "" H 6400 5300 50  0001 C CNN
F 3 "~" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 608F0882
P 3700 4050
F 0 "#PWR07" H 3700 3800 50  0001 C CNN
F 1 "GND" H 3705 3877 50  0000 C CNN
F 2 "" H 3700 4050 50  0001 C CNN
F 3 "" H 3700 4050 50  0001 C CNN
	1    3700 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 608F0BD0
P 4200 4050
F 0 "#PWR08" H 4200 3800 50  0001 C CNN
F 1 "GND" H 4205 3877 50  0000 C CNN
F 2 "" H 4200 4050 50  0001 C CNN
F 3 "" H 4200 4050 50  0001 C CNN
	1    4200 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 608F0F61
P 4700 4050
F 0 "#PWR09" H 4700 3800 50  0001 C CNN
F 1 "GND" H 4705 3877 50  0000 C CNN
F 2 "" H 4700 4050 50  0001 C CNN
F 3 "" H 4700 4050 50  0001 C CNN
	1    4700 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 608F1293
P 5150 4050
F 0 "#PWR010" H 5150 3800 50  0001 C CNN
F 1 "GND" H 5155 3877 50  0000 C CNN
F 2 "" H 5150 4050 50  0001 C CNN
F 3 "" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR05
U 1 1 608F1B9C
P 5950 3250
F 0 "#PWR05" H 5950 3100 50  0001 C CNN
F 1 "+3.3VA" H 5965 3423 50  0000 C CNN
F 2 "" H 5950 3250 50  0001 C CNN
F 3 "" H 5950 3250 50  0001 C CNN
	1    5950 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 608F2111
P 5650 3250
F 0 "#PWR04" H 5650 3100 50  0001 C CNN
F 1 "+3.3V" H 5665 3423 50  0000 C CNN
F 2 "" H 5650 3250 50  0001 C CNN
F 3 "" H 5650 3250 50  0001 C CNN
	1    5650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3400 5950 3300
Wire Wire Line
	5650 3750 5650 3300
Connection ~ 5650 3750
Wire Wire Line
	5650 3750 5950 3750
Wire Wire Line
	3700 3750 3350 3750
Connection ~ 3700 3750
$Comp
L power:PWR_FLAG #FLG02
U 1 1 608F37DD
P 5950 3300
F 0 "#FLG02" H 5950 3375 50  0001 C CNN
F 1 "PWR_FLAG" V 5950 3428 50  0000 L CNN
F 2 "" H 5950 3300 50  0001 C CNN
F 3 "~" H 5950 3300 50  0001 C CNN
	1    5950 3300
	0    1    1    0   
$EndComp
Connection ~ 5950 3300
Wire Wire Line
	5950 3300 5950 3250
$Comp
L power:PWR_FLAG #FLG01
U 1 1 608F3FB8
P 5650 3300
F 0 "#FLG01" H 5650 3375 50  0001 C CNN
F 1 "PWR_FLAG" V 5650 3427 50  0000 L CNN
F 2 "" H 5650 3300 50  0001 C CNN
F 3 "~" H 5650 3300 50  0001 C CNN
	1    5650 3300
	0    -1   -1   0   
$EndComp
Connection ~ 5650 3300
Wire Wire Line
	5650 3300 5650 3250
Text Notes 6300 7000 0    50   ~ 0
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$EndSCHEMATC
