EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6600 1050 1000 700 
U 608DF28C
F0 "Power" 50
F1 "power.sch" 50
F2 "+12v-rack" I R 7600 1200 50 
F3 "-12v-rack" I R 7600 1350 50 
$EndSheet
Text Label 7850 1200 0    50   ~ 0
+12v-rack
Text Label 7850 1350 0    50   ~ 0
-12v-rack
Text Label 2750 4000 0    50   ~ 0
+12v-rack
Text Label 2750 3900 0    50   ~ 0
-12v-rack
Wire Wire Line
	7850 1350 7600 1350
Wire Wire Line
	7850 1200 7600 1200
Text Label 3650 1150 2    50   ~ 0
dac-coarse-cv
Text Label 3650 1250 2    50   ~ 0
dac-fine-cv
Wire Wire Line
	3650 1250 3800 1250
Wire Wire Line
	3650 1150 3800 1150
Text Label 3650 1350 2    50   ~ 0
duty-cv
Text Label 5750 1150 0    50   ~ 0
tri-out
Text Label 5750 1250 0    50   ~ 0
square-out
Text Label 5750 1350 0    50   ~ 0
pulse-out
Text Label 5750 1450 0    50   ~ 0
notch-out
Wire Wire Line
	5550 1150 5750 1150
Wire Wire Line
	5550 1350 5750 1350
Wire Wire Line
	3650 1350 3800 1350
Text Label 1400 4200 2    50   ~ 0
tri-out
Text Label 1400 4100 2    50   ~ 0
square-out
Text Label 1400 4000 2    50   ~ 0
pulse-out
Text Label 1400 3900 2    50   ~ 0
notch-out
$Sheet
S 3800 1050 1750 1450
U 608DE95A
F0 "Geometry Core" 50
F1 "geo_core.sch" 50
F2 "coarse-cv" I L 3800 1150 50 
F3 "fine-cv" I L 3800 1250 50 
F4 "tri-out" O R 5550 1150 50 
F5 "square-out" O R 5550 1250 50 
F6 "duty-cv" I L 3800 1350 50 
F7 "pulse-out" O R 5550 1350 50 
F8 "notch-out" O R 5550 1450 50 
$EndSheet
$Sheet
S 7300 2600 1200 1050
U 61ADEA4A
F0 "Mixer" 50
F1 "mixer.sch" 50
F2 "mix-out" O R 8500 3550 50 
F3 "mix-pre" O R 8500 3450 50 
F4 "tri-att-in" I L 7300 2650 50 
F5 "square-att-in" I L 7300 2750 50 
F6 "pulse-att-in" I L 7300 2850 50 
F7 "notch-att-in" I L 7300 2950 50 
F8 "mix-att" I L 7300 3050 50 
F9 "notch-in" I L 7300 3550 50 
F10 "pulse-in" I L 7300 3450 50 
F11 "square-in" I L 7300 3350 50 
F12 "tri-in" I L 7300 3250 50 
$EndSheet
Wire Wire Line
	5550 1250 5750 1250
Wire Wire Line
	5550 1450 5750 1450
Text Label 1400 4600 2    50   ~ 0
tri-att-in
Text Label 1400 4700 2    50   ~ 0
square-att-in
Text Label 1400 4800 2    50   ~ 0
pulse-att-in
Text Label 1400 4900 2    50   ~ 0
notch-att-in
$Comp
L power:GND #PWR01
U 1 1 609A5210
P 3050 3800
F 0 "#PWR01" H 3050 3550 50  0001 C CNN
F 1 "GND" H 3055 3627 50  0000 C CNN
F 2 "" H 3050 3800 50  0001 C CNN
F 3 "" H 3050 3800 50  0001 C CNN
	1    3050 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 3800 3050 3800
$Comp
L power:+3V3 #PWR02
U 1 1 609A60FA
P 3100 4100
F 0 "#PWR02" H 3100 3950 50  0001 C CNN
F 1 "+3V3" V 3115 4228 50  0000 L CNN
F 2 "" H 3100 4100 50  0001 C CNN
F 3 "" H 3100 4100 50  0001 C CNN
	1    3100 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4100 3100 4100
Text Label 1400 4300 2    50   ~ 0
mix-pre
Text Label 1400 4500 2    50   ~ 0
mix-att-in
Text Label 1400 4400 2    50   ~ 0
mix-out
Text Label 8650 3450 0    50   ~ 0
mix-pre
Text Label 7150 3050 2    50   ~ 0
mix-att-in
Text Label 8650 3550 0    50   ~ 0
mix-out
Wire Wire Line
	8650 3550 8500 3550
Wire Wire Line
	8500 3450 8650 3450
Wire Wire Line
	7150 3050 7300 3050
Wire Wire Line
	2600 4000 2750 4000
Wire Wire Line
	2750 3900 2600 3900
Wire Wire Line
	2750 4400 2600 4400
Wire Wire Line
	2600 4500 2750 4500
Wire Wire Line
	2600 4600 2750 4600
Wire Wire Line
	1400 4200 1550 4200
Wire Wire Line
	1550 4100 1400 4100
Wire Wire Line
	1400 4000 1550 4000
Wire Wire Line
	1550 3900 1400 3900
Wire Wire Line
	1400 4900 1550 4900
Wire Wire Line
	1550 4800 1400 4800
Wire Wire Line
	1550 4700 1400 4700
Wire Wire Line
	1550 4600 1400 4600
Text Label 7150 2650 2    50   ~ 0
tri-att-in
Text Label 7150 2750 2    50   ~ 0
square-att-in
Text Label 7150 2850 2    50   ~ 0
pulse-att-in
Text Label 7150 2950 2    50   ~ 0
notch-att-in
Wire Wire Line
	7150 2950 7300 2950
Wire Wire Line
	7150 2850 7300 2850
Wire Wire Line
	7150 2750 7300 2750
Wire Wire Line
	7150 2650 7300 2650
Text Label 7150 3250 2    50   ~ 0
tri-out
Text Label 7150 3350 2    50   ~ 0
square-out
Text Label 7150 3450 2    50   ~ 0
pulse-out
Text Label 7150 3550 2    50   ~ 0
notch-out
Wire Wire Line
	7150 3550 7300 3550
Wire Wire Line
	7150 3450 7300 3450
Wire Wire Line
	7150 3350 7300 3350
Wire Wire Line
	7150 3250 7300 3250
Text Label 2750 4400 0    50   ~ 0
SERCOM4[0]
Text Label 2750 4500 0    50   ~ 0
SERCOM4[1]
Text Label 2750 4600 0    50   ~ 0
v_oct-cv
Text Label 2750 4800 0    50   ~ 0
pulse-cv
Wire Wire Line
	2750 4700 2600 4700
Wire Wire Line
	1400 4500 1550 4500
Wire Wire Line
	1550 4300 1400 4300
Wire Wire Line
	1550 4400 1400 4400
Text Label 2750 4700 0    50   ~ 0
v_oct-scaled
Text Label 2750 4900 0    50   ~ 0
pulse-scaled
Wire Wire Line
	2750 4900 2600 4900
Wire Wire Line
	2750 4800 2600 4800
$Sheet
S 7600 4400 1250 1100
U 60A41FC6
F0 "Inputs" 50
F1 "inputs.sch" 50
F2 "SERCOM4[0]" I L 7600 4500 50 
F3 "SERCOM4[1]" I L 7600 4600 50 
F4 "v_oct-cv" I L 7600 4700 50 
F5 "pulse-cv" I L 7600 4800 50 
F6 "pulse-scaled" O R 8850 4800 50 
F7 "v_oct-scaled" O R 8850 4700 50 
F8 "coarse-pitch-cv" O R 8850 4900 50 
F9 "fine-pitch-cv" O R 8850 5000 50 
F10 "duty-cv" O R 8850 5100 50 
$EndSheet
Text Label 9000 4700 0    50   ~ 0
v_oct-scaled
Text Label 9000 4800 0    50   ~ 0
pulse-scaled
Text Label 7450 4700 2    50   ~ 0
v_oct-cv
Text Label 7450 4800 2    50   ~ 0
pulse-cv
Text Label 7450 4500 2    50   ~ 0
SERCOM4[0]
Text Label 7450 4600 2    50   ~ 0
SERCOM4[1]
Text Label 9000 4900 0    50   ~ 0
dac-coarse-cv
Text Label 9000 5000 0    50   ~ 0
dac-fine-cv
Text Label 9000 5100 0    50   ~ 0
duty-cv
Wire Wire Line
	8850 4700 9000 4700
Wire Wire Line
	8850 4800 9000 4800
Wire Wire Line
	8850 4900 9000 4900
Wire Wire Line
	8850 5000 9000 5000
Wire Wire Line
	8850 5100 9000 5100
Wire Wire Line
	7600 4800 7450 4800
Wire Wire Line
	7600 4700 7450 4700
Wire Wire Line
	7600 4600 7450 4600
Wire Wire Line
	7600 4500 7450 4500
$Comp
L power:GND #PWR03
U 1 1 60A85156
P 800 3800
F 0 "#PWR03" H 800 3550 50  0001 C CNN
F 1 "GND" H 805 3627 50  0000 C CNN
F 2 "" H 800 3800 50  0001 C CNN
F 3 "" H 800 3800 50  0001 C CNN
	1    800  3800
	0    1    1    0   
$EndComp
Wire Wire Line
	800  3800 1550 3800
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 60B3BA71
P 2400 4300
F 0 "J2" H 2318 5017 50  0000 C CNN
F 1 "Conn_01x12" H 2318 4926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 2400 4300 50  0001 C CNN
F 3 "~" H 2400 4300 50  0001 C CNN
	1    2400 4300
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J1
U 1 1 60B416A6
P 1750 4300
F 0 "J1" H 1830 4292 50  0000 L CNN
F 1 "Conn_01x12" H 1830 4201 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 1750 4300 50  0001 C CNN
F 3 "~" H 1750 4300 50  0001 C CNN
	1    1750 4300
	1    0    0    -1  
$EndComp
NoConn ~ 2600 4300
NoConn ~ 2600 4200
$Sheet
S 4350 4750 1900 1600
U 60A53067
F0 "MCU" 50
F1 "mcu.sch" 50
$EndSheet
Text Notes 6700 7750 0    50   ~ 10
Profane Geometry
Text Notes 6300 7000 0    50   ~ 0
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$EndSCHEMATC
