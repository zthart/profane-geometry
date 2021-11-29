EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
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
L Connector:AudioJack2_SwitchT J13
U 1 1 609A0947
P 850 4450
F 0 "J13" H 882 4775 50  0000 C CNN
F 1 "V/OCT" H 882 4684 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 850 4450 50  0001 C CNN
F 3 "~" H 850 4450 50  0001 C CNN
	1    850  4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J14
U 1 1 609AFDD8
P 1850 4450
F 0 "J14" H 1882 4775 50  0000 C CNN
F 1 "PulseCV" H 1882 4684 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 1850 4450 50  0001 C CNN
F 3 "~" H 1850 4450 50  0001 C CNN
	1    1850 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J15
U 1 1 609B03E3
P 3850 4450
F 0 "J15" H 3882 4775 50  0000 C CNN
F 1 "MixOut" H 3882 4684 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3850 4450 50  0001 C CNN
F 3 "~" H 3850 4450 50  0001 C CNN
	1    3850 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J11
U 1 1 609B6586
P 3850 3550
F 0 "J11" H 3882 3875 50  0000 C CNN
F 1 "NotchOut" H 3882 3784 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3850 3550 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 609B6BC2
P 3850 2850
F 0 "J8" H 3882 3175 50  0000 C CNN
F 1 "PulseOut" H 3882 3084 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3850 2850 50  0001 C CNN
F 3 "~" H 3850 2850 50  0001 C CNN
	1    3850 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 609B70EA
P 3850 2150
F 0 "J6" H 3882 2475 50  0000 C CNN
F 1 "SquareOut" H 3882 2384 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3850 2150 50  0001 C CNN
F 3 "~" H 3850 2150 50  0001 C CNN
	1    3850 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 609B7607
P 3850 1400
F 0 "J2" H 3882 1725 50  0000 C CNN
F 1 "TriOut" H 3882 1634 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3850 1400 50  0001 C CNN
F 3 "~" H 3850 1400 50  0001 C CNN
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 609BC6B4
P 8700 2800
F 0 "#PWR09" H 8700 2550 50  0001 C CNN
F 1 "GND" V 8705 2672 50  0000 R CNN
F 2 "" H 8700 2800 50  0001 C CNN
F 3 "" H 8700 2800 50  0001 C CNN
	1    8700 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 609BD124
P 8000 2800
F 0 "#PWR08" H 8000 2550 50  0001 C CNN
F 1 "GND" V 8005 2672 50  0000 R CNN
F 2 "" H 8000 2800 50  0001 C CNN
F 3 "" H 8000 2800 50  0001 C CNN
	1    8000 2800
	0    1    1    0   
$EndComp
Text Label 8700 2600 0    50   ~ 0
+12v-rack
Text Label 8700 3000 0    50   ~ 0
-12v-rack
Wire Wire Line
	8600 2700 8700 2700
Wire Wire Line
	8600 2800 8700 2800
Wire Wire Line
	8600 2900 8700 2900
Wire Wire Line
	8600 2600 8700 2600
Wire Wire Line
	8600 3000 8700 3000
Text Label 8000 3000 2    50   ~ 0
-12v-rack
Text Label 8000 2600 2    50   ~ 0
+12v-rack
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR4
U 1 1 609CB4C7
P 1650 3550
F 0 "VR4" H 2200 3815 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 2200 3724 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2600 3650 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2600 3550 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2600 3450 50  0001 L CNN "Description"
F 5 "37.5" H 2600 3350 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2600 3250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2600 3150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2600 3050 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2600 2950 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 3550
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR3
U 1 1 609CC110
P 1650 2800
F 0 "VR3" H 2200 3065 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 2200 2974 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2600 2900 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2600 2800 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2600 2700 50  0001 L CNN "Description"
F 5 "37.5" H 2600 2600 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2600 2500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2600 2400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2600 2300 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2600 2200 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 2800
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR2
U 1 1 609CC831
P 1650 2050
F 0 "VR2" H 2200 2315 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 2200 2224 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2600 2150 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2600 2050 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2600 1950 50  0001 L CNN "Description"
F 5 "37.5" H 2600 1850 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2600 1750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2600 1650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2600 1550 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2600 1450 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 2050
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR1
U 1 1 609CCDC8
P 1650 1300
F 0 "VR1" H 2200 1565 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 2200 1474 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2600 1400 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2600 1300 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2600 1200 50  0001 L CNN "Description"
F 5 "37.5" H 2600 1100 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2600 1000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2600 900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2600 800 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2600 700 50  0001 L CNN "Manufacturer_Part_Number"
	1    1650 1300
	1    0    0    -1  
$EndComp
NoConn ~ 1650 3750
NoConn ~ 1650 3000
NoConn ~ 1650 2250
NoConn ~ 1650 1500
$Comp
L power:GND #PWR012
U 1 1 609CDB93
P 1650 2150
F 0 "#PWR012" H 1650 1900 50  0001 C CNN
F 1 "GND" V 1655 2022 50  0000 R CNN
F 2 "" H 1650 2150 50  0001 C CNN
F 3 "" H 1650 2150 50  0001 C CNN
	1    1650 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 609CE258
P 1650 1400
F 0 "#PWR01" H 1650 1150 50  0001 C CNN
F 1 "GND" V 1655 1272 50  0000 R CNN
F 2 "" H 1650 1400 50  0001 C CNN
F 3 "" H 1650 1400 50  0001 C CNN
	1    1650 1400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 609CE554
P 1650 2900
F 0 "#PWR018" H 1650 2650 50  0001 C CNN
F 1 "GND" V 1655 2772 50  0000 R CNN
F 2 "" H 1650 2900 50  0001 C CNN
F 3 "" H 1650 2900 50  0001 C CNN
	1    1650 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 609CE8C8
P 1650 3650
F 0 "#PWR023" H 1650 3400 50  0001 C CNN
F 1 "GND" V 1655 3522 50  0000 R CNN
F 2 "" H 1650 3650 50  0001 C CNN
F 3 "" H 1650 3650 50  0001 C CNN
	1    1650 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 609D1DE9
P 1650 3850
F 0 "#PWR025" H 1650 3600 50  0001 C CNN
F 1 "GND" V 1655 3722 50  0000 R CNN
F 2 "" H 1650 3850 50  0001 C CNN
F 3 "" H 1650 3850 50  0001 C CNN
	1    1650 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 609D2015
P 1650 3100
F 0 "#PWR020" H 1650 2850 50  0001 C CNN
F 1 "GND" V 1655 2972 50  0000 R CNN
F 2 "" H 1650 3100 50  0001 C CNN
F 3 "" H 1650 3100 50  0001 C CNN
	1    1650 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 609D2274
P 1650 2350
F 0 "#PWR016" H 1650 2100 50  0001 C CNN
F 1 "GND" V 1655 2222 50  0000 R CNN
F 2 "" H 1650 2350 50  0001 C CNN
F 3 "" H 1650 2350 50  0001 C CNN
	1    1650 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 609D2421
P 1650 1600
F 0 "#PWR04" H 1650 1350 50  0001 C CNN
F 1 "GND" V 1655 1472 50  0000 R CNN
F 2 "" H 1650 1600 50  0001 C CNN
F 3 "" H 1650 1600 50  0001 C CNN
	1    1650 1600
	0    1    1    0   
$EndComp
NoConn ~ 4050 1500
NoConn ~ 4050 2250
NoConn ~ 4050 2950
NoConn ~ 4050 3650
NoConn ~ 4050 4550
$Comp
L power:GND #PWR03
U 1 1 609DBA6E
P 4200 1300
F 0 "#PWR03" H 4200 1050 50  0001 C CNN
F 1 "GND" V 4205 1172 50  0000 R CNN
F 2 "" H 4200 1300 50  0001 C CNN
F 3 "" H 4200 1300 50  0001 C CNN
	1    4200 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 609DBF77
P 4200 2050
F 0 "#PWR014" H 4200 1800 50  0001 C CNN
F 1 "GND" V 4205 1922 50  0000 R CNN
F 2 "" H 4200 2050 50  0001 C CNN
F 3 "" H 4200 2050 50  0001 C CNN
	1    4200 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 609DC1BB
P 4200 2750
F 0 "#PWR017" H 4200 2500 50  0001 C CNN
F 1 "GND" V 4205 2622 50  0000 R CNN
F 2 "" H 4200 2750 50  0001 C CNN
F 3 "" H 4200 2750 50  0001 C CNN
	1    4200 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 609DC51A
P 4200 3450
F 0 "#PWR022" H 4200 3200 50  0001 C CNN
F 1 "GND" V 4205 3322 50  0000 R CNN
F 2 "" H 4200 3450 50  0001 C CNN
F 3 "" H 4200 3450 50  0001 C CNN
	1    4200 3450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 609DC81A
P 4050 4350
F 0 "#PWR029" H 4050 4100 50  0001 C CNN
F 1 "GND" V 4055 4222 50  0000 R CNN
F 2 "" H 4050 4350 50  0001 C CNN
F 3 "" H 4050 4350 50  0001 C CNN
	1    4050 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 1300 4200 1300
Wire Wire Line
	4050 2050 4200 2050
Wire Wire Line
	4050 2750 4200 2750
Wire Wire Line
	4050 3450 4200 3450
Text Label 4250 3550 0    50   ~ 0
notch-out
Text Label 4250 2850 0    50   ~ 0
pulse-out
Text Label 4250 2150 0    50   ~ 0
square-out
Text Label 4250 1400 0    50   ~ 0
tri-out
Wire Wire Line
	4250 3550 4050 3550
Wire Wire Line
	4050 2850 4250 2850
Wire Wire Line
	4050 2150 4250 2150
Wire Wire Line
	4050 1400 4250 1400
Text Label 1450 1300 2    50   ~ 0
tri-mix
Text Label 1450 2050 2    50   ~ 0
square-mix
Text Label 1450 2800 2    50   ~ 0
pulse-mix
Text Label 1450 3550 2    50   ~ 0
notch-mix
Wire Wire Line
	1650 3550 1450 3550
Wire Wire Line
	1650 2800 1450 2800
Wire Wire Line
	1650 2050 1450 2050
Wire Wire Line
	1650 1300 1450 1300
Text Label 2950 1300 0    50   ~ 0
tri-pre-out
Text Label 2950 2800 0    50   ~ 0
pulse-pre-out
Text Label 2950 3550 0    50   ~ 0
notch-pre-out
$Comp
L power:GND #PWR026
U 1 1 609F2008
P 1050 4350
F 0 "#PWR026" H 1050 4100 50  0001 C CNN
F 1 "GND" V 1055 4222 50  0000 R CNN
F 2 "" H 1050 4350 50  0001 C CNN
F 3 "" H 1050 4350 50  0001 C CNN
	1    1050 4350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 609F22DC
P 2050 4350
F 0 "#PWR027" H 2050 4100 50  0001 C CNN
F 1 "GND" V 2055 4222 50  0000 R CNN
F 2 "" H 2050 4350 50  0001 C CNN
F 3 "" H 2050 4350 50  0001 C CNN
	1    2050 4350
	0    -1   -1   0   
$EndComp
Text Label 4150 4450 0    50   ~ 0
mix-out
Wire Wire Line
	2950 2900 2750 2900
Wire Wire Line
	2950 3650 2750 3650
Wire Wire Line
	2950 2150 2750 2150
Wire Wire Line
	2750 1400 2950 1400
Text Label 2950 2050 0    50   ~ 0
square-pre-out
NoConn ~ 1050 4550
Text Label 1150 4450 0    50   ~ 0
v_oct-cv
Wire Wire Line
	1050 4450 1150 4450
Text Label 2150 4450 0    50   ~ 0
pulse-cv
Wire Wire Line
	2050 4450 2150 4450
$Comp
L Device:R_POT_US RV2
U 1 1 60AF251D
P 2950 4450
F 0 "RV2" H 2883 4496 50  0000 R CNN
F 1 "PulsePot" H 2883 4405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_TT_P0915N" H 2950 4450 50  0001 C CNN
F 3 "~" H 2950 4450 50  0001 C CNN
	1    2950 4450
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 60AF63F6
P 2950 4600
F 0 "#PWR035" H 2950 4350 50  0001 C CNN
F 1 "GND" H 2955 4427 50  0000 C CNN
F 2 "" H 2950 4600 50  0001 C CNN
F 3 "" H 2950 4600 50  0001 C CNN
	1    2950 4600
	1    0    0    -1  
$EndComp
Text Notes 6700 7750 0    50   ~ 0
Profane Geometry Jackboard
Text Notes 6300 6950 0    50   ~ 0
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
Wire Wire Line
	2950 1300 2750 1300
Wire Wire Line
	2950 2050 2750 2050
Wire Wire Line
	2950 2800 2750 2800
Wire Wire Line
	2950 3550 2750 3550
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J4
U 1 1 6126D8D5
P 8300 2800
F 0 "J4" H 8350 3217 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8350 3126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 8300 2800 50  0001 C CNN
F 3 "~" H 8300 2800 50  0001 C CNN
	1    8300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2600 8000 2600
Wire Wire Line
	8100 2700 8000 2700
Wire Wire Line
	8100 2800 8000 2800
Wire Wire Line
	8100 2900 8000 2900
Wire Wire Line
	8100 3000 8000 3000
Wire Wire Line
	8000 2700 8000 2800
Connection ~ 8000 2800
Wire Wire Line
	8000 2900 8000 2800
Wire Wire Line
	8700 2900 8700 2800
Connection ~ 8700 2800
Wire Wire Line
	8700 2700 8700 2800
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 61286DAC
P 7250 1450
F 0 "J1" H 7300 1967 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 7300 1876 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 7250 1450 50  0001 C CNN
F 3 "~" H 7250 1450 50  0001 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6128834B
P 9350 1950
F 0 "#PWR02" H 9350 1700 50  0001 C CNN
F 1 "GND" V 9355 1822 50  0000 R CNN
F 2 "" H 9350 1950 50  0001 C CNN
F 3 "" H 9350 1950 50  0001 C CNN
	1    9350 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 612888D0
P 7300 1950
F 0 "#PWR06" H 7300 1700 50  0001 C CNN
F 1 "GND" V 7305 1822 50  0000 R CNN
F 2 "" H 7300 1950 50  0001 C CNN
F 3 "" H 7300 1950 50  0001 C CNN
	1    7300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1850 7650 1850
Wire Wire Line
	7650 1850 7650 1950
Wire Wire Line
	7650 1950 7300 1950
Wire Wire Line
	7300 1950 6950 1950
Wire Wire Line
	6950 1950 6950 1850
Wire Wire Line
	6950 1850 7050 1850
Connection ~ 7300 1950
Wire Wire Line
	9000 1850 9000 1950
Wire Wire Line
	9000 1950 9350 1950
Wire Wire Line
	9350 1950 9700 1950
Wire Wire Line
	9700 1950 9700 1850
Connection ~ 9350 1950
Text Label 7550 1250 0    50   ~ 0
tri-out
Text Label 7550 1150 0    50   ~ 0
square-out
Text Label 7050 1250 2    50   ~ 0
pulse-out
Text Label 7050 1150 2    50   ~ 0
notch-out
Text Label 7550 1450 0    50   ~ 0
tri-pre-out
Text Label 7550 1350 0    50   ~ 0
square-pre-out
Text Label 7050 1450 2    50   ~ 0
pulse-pre-out
Text Label 7050 1350 2    50   ~ 0
notch-pre-out
Text Label 7550 1650 0    50   ~ 0
tri-mix
Text Label 7550 1550 0    50   ~ 0
square-mix
Text Label 7050 1650 2    50   ~ 0
pulse-mix
Text Label 7050 1550 2    50   ~ 0
notch-mix
Text Label 9100 1750 2    50   ~ 0
mix-out
Text Label 9100 1150 2    50   ~ 0
-12v-rack
Text Label 9100 1250 2    50   ~ 0
+12v-rack
Text Label 9100 1450 2    50   ~ 0
pulse-cv
Text Label 9100 1350 2    50   ~ 0
v_oct-cv
Text Label 9100 1650 2    50   ~ 0
pulse-pot
Text Label 9600 1150 0    50   ~ 0
tri-slider-led
Text Label 9600 1250 0    50   ~ 0
square-slider-led
Text Label 9600 1350 0    50   ~ 0
pulse-slider-led
Text Label 9600 1450 0    50   ~ 0
notch-slider-led
Text Label 9600 1550 0    50   ~ 0
rgb-scl
Text Label 9100 1550 2    50   ~ 0
rgb-sda
$Comp
L power:GND #PWR034
U 1 1 60AAEFE7
P 2050 4550
F 0 "#PWR034" H 2050 4300 50  0001 C CNN
F 1 "GND" V 2055 4422 50  0000 R CNN
F 2 "" H 2050 4550 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	0    -1   -1   0   
$EndComp
Text Label 3100 4450 0    50   ~ 0
pulse-pot
$Comp
L power:+3V3 #PWR033
U 1 1 60AFA071
P 2950 4300
F 0 "#PWR033" H 2950 4150 50  0001 C CNN
F 1 "+3V3" H 2965 4473 50  0000 C CNN
F 2 "" H 2950 4300 50  0001 C CNN
F 3 "" H 2950 4300 50  0001 C CNN
	1    2950 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4450 4150 4450
Wire Wire Line
	9700 1850 9600 1850
Wire Wire Line
	9100 1850 9000 1850
Text Label 2950 1400 0    50   ~ 0
tri-slider-led
Text Label 2950 2150 0    50   ~ 0
square-slider-led
Text Label 2950 2900 0    50   ~ 0
pulse-slider-led
Text Label 2950 3650 0    50   ~ 0
notch-slider-led
Text Label 5250 3200 2    50   ~ 0
rgb-sda
Text Label 5250 3300 2    50   ~ 0
rgb-scl
Wire Wire Line
	5850 3200 5950 3200
Wire Wire Line
	5850 3300 5950 3300
Wire Wire Line
	6550 3200 6650 3200
Wire Wire Line
	6550 3300 6650 3300
Wire Wire Line
	5850 4550 5950 4550
Wire Wire Line
	5850 4650 5950 4650
Wire Wire Line
	6550 4550 6650 4550
Wire Wire Line
	6550 4650 6650 4650
Wire Wire Line
	6250 6000 6350 6000
Wire Wire Line
	6250 6100 6350 6100
$Comp
L power:GND #PWR010
U 1 1 61CF1A0D
P 5550 3600
F 0 "#PWR010" H 5550 3350 50  0001 C CNN
F 1 "GND" V 5555 3472 50  0000 R CNN
F 2 "" H 5550 3600 50  0001 C CNN
F 3 "" H 5550 3600 50  0001 C CNN
	1    5550 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 61CF1D7B
P 6250 3600
F 0 "#PWR011" H 6250 3350 50  0001 C CNN
F 1 "GND" V 6255 3472 50  0000 R CNN
F 2 "" H 6250 3600 50  0001 C CNN
F 3 "" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 61CF2048
P 6950 3600
F 0 "#PWR013" H 6950 3350 50  0001 C CNN
F 1 "GND" V 6955 3472 50  0000 R CNN
F 2 "" H 6950 3600 50  0001 C CNN
F 3 "" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 61CF231C
P 5550 4950
F 0 "#PWR019" H 5550 4700 50  0001 C CNN
F 1 "GND" V 5555 4822 50  0000 R CNN
F 2 "" H 5550 4950 50  0001 C CNN
F 3 "" H 5550 4950 50  0001 C CNN
	1    5550 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 61CF268E
P 6250 4950
F 0 "#PWR021" H 6250 4700 50  0001 C CNN
F 1 "GND" V 6255 4822 50  0000 R CNN
F 2 "" H 6250 4950 50  0001 C CNN
F 3 "" H 6250 4950 50  0001 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 61CF2840
P 6950 4950
F 0 "#PWR024" H 6950 4700 50  0001 C CNN
F 1 "GND" V 6955 4822 50  0000 R CNN
F 2 "" H 6950 4950 50  0001 C CNN
F 3 "" H 6950 4950 50  0001 C CNN
	1    6950 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 61CF2A07
P 5950 6400
F 0 "#PWR030" H 5950 6150 50  0001 C CNN
F 1 "GND" V 5955 6272 50  0000 R CNN
F 2 "" H 5950 6400 50  0001 C CNN
F 3 "" H 5950 6400 50  0001 C CNN
	1    5950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 61CF2E8A
P 6650 6400
F 0 "#PWR031" H 6650 6150 50  0001 C CNN
F 1 "GND" V 6655 6272 50  0000 R CNN
F 2 "" H 6650 6400 50  0001 C CNN
F 3 "" H 6650 6400 50  0001 C CNN
	1    6650 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 61CF3C58
P 9700 1650
F 0 "#PWR05" H 9700 1500 50  0001 C CNN
F 1 "+3.3V" V 9715 1778 50  0000 L CNN
F 2 "" H 9700 1650 50  0001 C CNN
F 3 "" H 9700 1650 50  0001 C CNN
	1    9700 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 1650 9600 1650
Wire Wire Line
	7350 3000 7350 2850
$Comp
L power:+3.3V #PWR07
U 1 1 61CFB7DC
P 7350 2850
F 0 "#PWR07" H 7350 2700 50  0001 C CNN
F 1 "+3.3V" H 7365 3023 50  0000 C CNN
F 2 "" H 7350 2850 50  0001 C CNN
F 3 "" H 7350 2850 50  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4350 7350 4200
$Comp
L power:+3.3V #PWR015
U 1 1 61CFFCDD
P 7350 4200
F 0 "#PWR015" H 7350 4050 50  0001 C CNN
F 1 "+3.3V" H 7365 4373 50  0000 C CNN
F 2 "" H 7350 4200 50  0001 C CNN
F 3 "" H 7350 4200 50  0001 C CNN
	1    7350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5800 7400 5650
$Comp
L power:+3.3V #PWR028
U 1 1 61D027A1
P 7400 5650
F 0 "#PWR028" H 7400 5500 50  0001 C CNN
F 1 "+3.3V" H 7415 5823 50  0000 C CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "" H 7400 5650 50  0001 C CNN
	1    7400 5650
	1    0    0    -1  
$EndComp
$Comp
L LED:APA102-2020 D1
U 1 1 61D070DA
P 5550 3300
F 0 "D1" H 5550 3781 50  0000 C CNN
F 1 "APA102-2020" H 5550 3690 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 5600 3000 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 5650 2925 50  0001 L TNN
	1    5550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 3000 6250 3000
Wire Wire Line
	5950 5800 6650 5800
$Comp
L LED:APA102-2020 D2
U 1 1 61D07FAB
P 6250 3300
F 0 "D2" H 6250 3781 50  0000 C CNN
F 1 "APA102-2020" H 6250 3690 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 6300 3000 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 6350 2925 50  0001 L TNN
	1    6250 3300
	1    0    0    -1  
$EndComp
Connection ~ 6250 3000
Wire Wire Line
	6250 3000 6950 3000
$Comp
L LED:APA102-2020 D3
U 1 1 61D08546
P 6950 3300
F 0 "D3" H 6950 3781 50  0000 C CNN
F 1 "APA102-2020" H 6950 3690 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 7000 3000 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 7050 2925 50  0001 L TNN
	1    6950 3300
	1    0    0    -1  
$EndComp
Connection ~ 6950 3000
Wire Wire Line
	6950 3000 7350 3000
$Comp
L LED:APA102-2020 D4
U 1 1 61D08AF3
P 5550 4650
F 0 "D4" H 5550 5131 50  0000 C CNN
F 1 "APA102-2020" H 5550 5040 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 5600 4350 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 5650 4275 50  0001 L TNN
	1    5550 4650
	1    0    0    -1  
$EndComp
$Comp
L LED:APA102-2020 D5
U 1 1 61D093D3
P 6250 4650
F 0 "D5" H 6250 5131 50  0000 C CNN
F 1 "APA102-2020" H 6250 5040 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 6300 4350 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 6350 4275 50  0001 L TNN
	1    6250 4650
	1    0    0    -1  
$EndComp
$Comp
L LED:APA102-2020 D6
U 1 1 61D098B8
P 6950 4650
F 0 "D6" H 6950 5131 50  0000 C CNN
F 1 "APA102-2020" H 6950 5040 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 7000 4350 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 7050 4275 50  0001 L TNN
	1    6950 4650
	1    0    0    -1  
$EndComp
$Comp
L LED:APA102-2020 D7
U 1 1 61D09D8E
P 5950 6100
F 0 "D7" H 5950 6581 50  0000 C CNN
F 1 "APA102-2020" H 5950 6490 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 6000 5800 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 6050 5725 50  0001 L TNN
	1    5950 6100
	1    0    0    -1  
$EndComp
$Comp
L LED:APA102-2020 D8
U 1 1 61D0A72C
P 6650 6100
F 0 "D8" H 6650 6581 50  0000 C CNN
F 1 "APA102-2020" H 6650 6490 50  0000 C CNN
F 2 "LED_SMD:LED-APA102-2020" H 6700 5800 50  0001 L TNN
F 3 "http://www.led-color.com/upload/201604/APA102-2020%20SMD%20LED.pdf" H 6750 5725 50  0001 L TNN
	1    6650 6100
	1    0    0    -1  
$EndComp
Connection ~ 6650 5800
Wire Wire Line
	6650 5800 7400 5800
Wire Wire Line
	5550 4350 6250 4350
Connection ~ 6250 4350
Wire Wire Line
	6250 4350 6950 4350
Connection ~ 6950 4350
Wire Wire Line
	6950 4350 7350 4350
Wire Wire Line
	7250 3300 7550 3300
Wire Wire Line
	5250 4550 5150 4550
NoConn ~ 6950 6000
NoConn ~ 6950 6100
Wire Wire Line
	7550 3300 7550 4000
Wire Wire Line
	7550 4000 5050 4000
Wire Wire Line
	5050 4000 5050 4650
Wire Wire Line
	5050 4650 5250 4650
Wire Wire Line
	5150 4550 5150 3900
Wire Wire Line
	5150 3900 7650 3900
Wire Wire Line
	7650 3900 7650 3200
Wire Wire Line
	7250 3200 7650 3200
Wire Wire Line
	7250 4650 7250 5500
Wire Wire Line
	5550 6000 5550 5400
Wire Wire Line
	5550 5400 7350 5400
Wire Wire Line
	7350 5400 7350 4550
Wire Wire Line
	7350 4550 7250 4550
Wire Wire Line
	5650 6100 5450 6100
Wire Wire Line
	5450 6100 5450 5500
Wire Wire Line
	5450 5500 7250 5500
Wire Wire Line
	5550 6000 5650 6000
Text Notes 7450 7850 0    50   ~ 0
v0.3 9/12/21
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3
U 1 1 61287CC3
P 9300 1450
F 0 "J3" H 9350 2000 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 9350 1900 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 9300 1450 50  0001 C CNN
F 3 "~" H 9300 1450 50  0001 C CNN
	1    9300 1450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
