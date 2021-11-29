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
S 7500 1600 1000 700 
U 608DF28C
F0 "Power" 50
F1 "power.sch" 50
F2 "+12v-rack" I R 8500 1750 50 
F3 "-12v-rack" I R 8500 1900 50 
$EndSheet
Text Label 8750 1750 0    50   ~ 0
+12v-rack
Text Label 8750 1900 0    50   ~ 0
-12v-rack
Wire Wire Line
	8750 1900 8500 1900
Wire Wire Line
	8750 1750 8500 1750
Text Label 4300 950  2    50   ~ 0
dac-coarse-cv
Text Label 4300 1050 2    50   ~ 0
dac-fine-cv
Wire Wire Line
	4300 1050 4450 1050
Wire Wire Line
	4300 950  4450 950 
Text Label 4300 1150 2    50   ~ 0
duty-cv
Text Label 6400 950  0    50   ~ 0
tri-out
Text Label 6400 1050 0    50   ~ 0
square-out
Text Label 6400 1150 0    50   ~ 0
pulse-out
Text Label 6400 1250 0    50   ~ 0
notch-out
Wire Wire Line
	6200 950  6400 950 
Wire Wire Line
	6200 1150 6400 1150
Wire Wire Line
	4300 1150 4450 1150
$Sheet
S 4450 850  1750 1450
U 608DE95A
F0 "Geometry Core" 50
F1 "geo_core.sch" 50
F2 "coarse-cv" I L 4450 950 50 
F3 "fine-cv" I L 4450 1050 50 
F4 "tri-out" O R 6200 950 50 
F5 "square-out" O R 6200 1050 50 
F6 "duty-cv" I L 4450 1150 50 
F7 "pulse-out" O R 6200 1150 50 
F8 "notch-out" O R 6200 1250 50 
$EndSheet
$Sheet
S 7300 2600 1200 1050
U 61ADEA4A
F0 "Mixer" 50
F1 "mixer.sch" 50
F2 "mix-out" O R 8500 3550 50 
F3 "notch-in" I L 7300 3550 50 
F4 "pulse-in" I L 7300 3450 50 
F5 "square-in" I L 7300 3350 50 
F6 "tri-in" I L 7300 3250 50 
F7 "tri-mix-in" I L 7300 2650 50 
F8 "sq-mix-in" I L 7300 2750 50 
F9 "pl-mix-in" I L 7300 2850 50 
F10 "nt-mix-in" I L 7300 2950 50 
F11 "tri-pre-mix" O R 8500 2650 50 
F12 "sq-pre-mix" O R 8500 2750 50 
F13 "pl-pre-mix" O R 8500 2850 50 
F14 "nt-pre-mix" O R 8500 2950 50 
$EndSheet
Wire Wire Line
	6200 1050 6400 1050
Wire Wire Line
	6200 1250 6400 1250
Text Label 8650 3550 0    50   ~ 0
mix-out
Wire Wire Line
	8650 3550 8500 3550
Text Label 7150 2650 2    50   ~ 0
tri-mix-in
Text Label 7150 2750 2    50   ~ 0
square-mix-in
Text Label 7150 2850 2    50   ~ 0
pulse-mix-in
Text Label 7150 2950 2    50   ~ 0
notch-mix-in
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
$Sheet
S 7150 4500 1250 1100
U 60A41FC6
F0 "Inputs" 50
F1 "inputs.sch" 50
F2 "dac-sda" I L 7150 4600 50 
F3 "dac-scl" I L 7150 4700 50 
F4 "v_oct-cv" I L 7150 4800 50 
F5 "pulse-cv" I L 7150 4900 50 
F6 "pulse-scaled" O R 8400 4700 50 
F7 "v_oct-scaled" O R 8400 4600 50 
F8 "coarse-pitch-cv" O R 8400 4800 50 
F9 "fine-pitch-cv" O R 8400 4900 50 
F10 "duty-cv" O R 8400 5000 50 
$EndSheet
Text Label 7000 4800 2    50   ~ 0
v_oct-cv
Text Label 7000 4900 2    50   ~ 0
pulse-cv
Text Label 8550 4800 0    50   ~ 0
dac-coarse-cv
Text Label 8550 4900 0    50   ~ 0
dac-fine-cv
Text Label 8550 5000 0    50   ~ 0
duty-cv
Wire Wire Line
	8400 4800 8550 4800
Wire Wire Line
	8400 4900 8550 4900
Wire Wire Line
	8400 5000 8550 5000
Wire Wire Line
	7150 4900 7000 4900
Wire Wire Line
	7150 4800 7000 4800
$Sheet
S 4300 4250 1900 1600
U 60A53067
F0 "MCU" 50
F1 "mcu.sch" 50
F2 "tri-slider-led" O L 4300 4350 50 
F3 "square-slider-led" O L 4300 4450 50 
F4 "pulse-slider-led" O L 4300 4550 50 
F5 "notch-slider-led" O L 4300 4650 50 
F6 "dac-sda" O R 6200 4600 50 
F7 "dac-scl" O R 6200 4700 50 
F8 "rgb-sda" O L 4300 4750 50 
F9 "rgb-scl" O L 4300 4850 50 
F10 "v-oct-scaled" I R 6200 4400 50 
F11 "pwm-scaled" I R 6200 4300 50 
F12 "pwm-pot" I R 6200 4500 50 
$EndSheet
Text Notes 6700 7750 0    50   ~ 10
Profane Geometry (aka. Demon Core)
Text Notes 6300 7000 0    50   ~ 0
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 61546130
P 3250 3500
F 0 "J1" H 3300 4017 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3300 3926 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 3250 3500 50  0001 C CNN
F 3 "~" H 3250 3500 50  0001 C CNN
	1    3250 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J2
U 1 1 61547B9C
P 4900 3500
F 0 "J2" H 4950 4050 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4950 3950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 4900 3500 50  0001 C CNN
F 3 "~" H 4900 3500 50  0001 C CNN
	1    4900 3500
	1    0    0    -1  
$EndComp
Text Label 3050 3200 2    50   ~ 0
notch-out
Text Label 3050 3300 2    50   ~ 0
pulse-out
Text Label 3550 3200 0    50   ~ 0
square-out
Text Label 3550 3300 0    50   ~ 0
tri-out
Text Label 4700 3800 2    50   ~ 0
mix-out
Text Label 3050 3700 2    50   ~ 0
pulse-mix-in
Text Label 3050 3600 2    50   ~ 0
notch-mix-in
Text Label 3550 3600 0    50   ~ 0
square-mix-in
Text Label 3550 3700 0    50   ~ 0
tri-mix-in
Text Label 8650 2650 0    50   ~ 0
tri-pre-out
Text Label 8650 2750 0    50   ~ 0
square-pre-out
Text Label 8650 2850 0    50   ~ 0
pulse-pre-out
Text Label 8650 2950 0    50   ~ 0
notch-pre-out
Wire Wire Line
	8500 2650 8650 2650
Wire Wire Line
	8500 2750 8650 2750
Wire Wire Line
	8500 2850 8650 2850
Wire Wire Line
	8500 2950 8650 2950
Text Label 3550 3500 0    50   ~ 0
tri-pre-out
Text Label 3550 3400 0    50   ~ 0
square-pre-out
Text Label 3050 3500 2    50   ~ 0
pulse-pre-out
Text Label 3050 3400 2    50   ~ 0
notch-pre-out
$Comp
L power:GND #PWR01
U 1 1 615736D5
P 3300 4000
F 0 "#PWR01" H 3300 3750 50  0001 C CNN
F 1 "GND" H 3305 3827 50  0000 C CNN
F 2 "" H 3300 4000 50  0001 C CNN
F 3 "" H 3300 4000 50  0001 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3900 3650 3900
Wire Wire Line
	3650 3900 3650 4000
Wire Wire Line
	3650 4000 3300 4000
Wire Wire Line
	3050 3900 2950 3900
Wire Wire Line
	2950 3900 2950 4000
Wire Wire Line
	2950 4000 3300 4000
Connection ~ 3300 4000
Text Label 4700 3200 2    50   ~ 0
-12v-rack
Text Label 4700 3300 2    50   ~ 0
+12v-rack
$Comp
L power:GND #PWR02
U 1 1 6157CB9A
P 4950 4000
F 0 "#PWR02" H 4950 3750 50  0001 C CNN
F 1 "GND" H 4955 3827 50  0000 C CNN
F 2 "" H 4950 4000 50  0001 C CNN
F 3 "" H 4950 4000 50  0001 C CNN
	1    4950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4000 4950 4000
Wire Wire Line
	4950 4000 4600 4000
Connection ~ 4950 4000
Text Label 4700 3400 2    50   ~ 0
v_oct-cv
Text Label 4700 3500 2    50   ~ 0
pulse-cv
Wire Wire Line
	6200 4600 7150 4600
Wire Wire Line
	6200 4700 7150 4700
Wire Wire Line
	8400 4600 8550 4600
Wire Wire Line
	8550 4600 8550 4400
Wire Wire Line
	8400 4700 8650 4700
Wire Wire Line
	8650 4700 8650 4300
Text Label 4150 4750 2    50   ~ 0
rgb-sda
Text Label 4150 4850 2    50   ~ 0
rgb-scl
Text Label 4150 4350 2    50   ~ 0
tri-slider-led
Text Label 4150 4450 2    50   ~ 0
square-slider-led
Text Label 4150 4550 2    50   ~ 0
pulse-slider-led
Text Label 4150 4650 2    50   ~ 0
notch-slider-led
Wire Wire Line
	4300 4350 4150 4350
Wire Wire Line
	4300 4450 4150 4450
Wire Wire Line
	4300 4550 4150 4550
Wire Wire Line
	4300 4650 4150 4650
Wire Wire Line
	4300 4750 4150 4750
Wire Wire Line
	4300 4850 4150 4850
Text Label 5200 3200 0    50   ~ 0
tri-slider-led
Text Label 5200 3300 0    50   ~ 0
square-slider-led
Text Label 5200 3400 0    50   ~ 0
pulse-slider-led
Text Label 5200 3500 0    50   ~ 0
notch-slider-led
Text Label 4700 3600 2    50   ~ 0
rgb-sda
Text Label 5200 3600 0    50   ~ 0
rgb-scl
Text Label 6350 4500 0    50   ~ 0
pulse-pot-in
Wire Wire Line
	4600 4000 4600 3900
Wire Wire Line
	4600 3900 4700 3900
Wire Wire Line
	5300 4000 5300 3900
Wire Wire Line
	5300 3900 5200 3900
Wire Wire Line
	6200 4300 8650 4300
Wire Wire Line
	6200 4400 8550 4400
Wire Wire Line
	6350 4500 6200 4500
Text Label 4700 3700 2    50   ~ 0
pulse-pot-in
$Comp
L power:+3.3V #PWR0116
U 1 1 61DC4BC6
P 5200 3700
F 0 "#PWR0116" H 5200 3550 50  0001 C CNN
F 1 "+3.3V" V 5215 3828 50  0000 L CNN
F 2 "" H 5200 3700 50  0001 C CNN
F 3 "" H 5200 3700 50  0001 C CNN
	1    5200 3700
	0    1    1    0   
$EndComp
Text Notes 7450 7850 0    50   ~ 0
v0.3 9/12/21
NoConn ~ 5200 3800
NoConn ~ 3050 3800
NoConn ~ 3550 3800
$EndSCHEMATC
