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
P 1150 5900
F 0 "J13" H 1182 6225 50  0000 C CNN
F 1 "V/OCT" H 1182 6134 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 1150 5900 50  0001 C CNN
F 3 "~" H 1150 5900 50  0001 C CNN
	1    1150 5900
	1    0    0    -1  
$EndComp
$Comp
L zzzzzzzz:Adafruit_Feather_M0_Express A1
U 1 1 609A7DDA
P 8750 5100
F 0 "A1" H 8750 6215 50  0000 C CNN
F 1 "Adafruit_Feather_M0_Express" H 8750 6124 50  0000 C CNN
F 2 "profane_geometry_jackboard:Adafruit_Feather_M0_Express" H 8750 5100 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-feather-m0-express-designed-for-circuit-python-circuitpython" H 8750 5100 50  0001 C CNN
	1    8750 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J14
U 1 1 609AFDD8
P 2150 5900
F 0 "J14" H 2182 6225 50  0000 C CNN
F 1 "PulseCV" H 2182 6134 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 2150 5900 50  0001 C CNN
F 3 "~" H 2150 5900 50  0001 C CNN
	1    2150 5900
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J15
U 1 1 609B03E3
P 4450 5850
F 0 "J15" H 4482 6175 50  0000 C CNN
F 1 "MixOut" H 4482 6084 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 4450 5850 50  0001 C CNN
F 3 "~" H 4450 5850 50  0001 C CNN
	1    4450 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J11
U 1 1 609B6586
P 4150 5100
F 0 "J11" H 4182 5425 50  0000 C CNN
F 1 "NotchOut" H 4182 5334 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 4150 5100 50  0001 C CNN
F 3 "~" H 4150 5100 50  0001 C CNN
	1    4150 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J8
U 1 1 609B6BC2
P 4150 4400
F 0 "J8" H 4182 4725 50  0000 C CNN
F 1 "PulseOut" H 4182 4634 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 4150 4400 50  0001 C CNN
F 3 "~" H 4150 4400 50  0001 C CNN
	1    4150 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J6
U 1 1 609B70EA
P 4150 3700
F 0 "J6" H 4182 4025 50  0000 C CNN
F 1 "SquareOut" H 4182 3934 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 4150 3700 50  0001 C CNN
F 3 "~" H 4150 3700 50  0001 C CNN
	1    4150 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_SwitchT J2
U 1 1 609B7607
P 4150 2950
F 0 "J2" H 4182 3275 50  0000 C CNN
F 1 "TriOut" H 4182 3184 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 4150 2950 50  0001 C CNN
F 3 "~" H 4150 2950 50  0001 C CNN
	1    4150 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 609BBD58
P 9100 3500
F 0 "#PWR011" H 9100 3250 50  0001 C CNN
F 1 "GND" V 9105 3372 50  0000 R CNN
F 2 "" H 9100 3500 50  0001 C CNN
F 3 "" H 9100 3500 50  0001 C CNN
	1    9100 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 609BC6B4
P 9100 3400
F 0 "#PWR09" H 9100 3150 50  0001 C CNN
F 1 "GND" V 9105 3272 50  0000 R CNN
F 2 "" H 9100 3400 50  0001 C CNN
F 3 "" H 9100 3400 50  0001 C CNN
	1    9100 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 609BC856
P 9100 3300
F 0 "#PWR07" H 9100 3050 50  0001 C CNN
F 1 "GND" V 9105 3172 50  0000 R CNN
F 2 "" H 9100 3300 50  0001 C CNN
F 3 "" H 9100 3300 50  0001 C CNN
	1    9100 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 609BCB03
P 8400 3300
F 0 "#PWR06" H 8400 3050 50  0001 C CNN
F 1 "GND" V 8405 3172 50  0000 R CNN
F 2 "" H 8400 3300 50  0001 C CNN
F 3 "" H 8400 3300 50  0001 C CNN
	1    8400 3300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 609BD124
P 8400 3400
F 0 "#PWR08" H 8400 3150 50  0001 C CNN
F 1 "GND" V 8405 3272 50  0000 R CNN
F 2 "" H 8400 3400 50  0001 C CNN
F 3 "" H 8400 3400 50  0001 C CNN
	1    8400 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 609BD2DF
P 8400 3500
F 0 "#PWR010" H 8400 3250 50  0001 C CNN
F 1 "GND" V 8405 3372 50  0000 R CNN
F 2 "" H 8400 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0001 C CNN
	1    8400 3500
	0    1    1    0   
$EndComp
Text Label 9100 3200 0    50   ~ 0
+12v-rack
Text Label 9100 3600 0    50   ~ 0
-12v-rack
Wire Wire Line
	8400 3600 8500 3600
Wire Wire Line
	8400 3500 8500 3500
Wire Wire Line
	8400 3400 8500 3400
Wire Wire Line
	8400 3300 8500 3300
Wire Wire Line
	9000 3300 9100 3300
Wire Wire Line
	9000 3400 9100 3400
Wire Wire Line
	9000 3500 9100 3500
Wire Wire Line
	9000 3200 9100 3200
Wire Wire Line
	8500 3200 8400 3200
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J3
U 1 1 609BA963
P 8700 3200
F 0 "J3" H 8750 3717 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise" H 8750 3626 50  0000 C CNN
F 2 "profane_geometry_jackboard:Molex_02x08_2.54mm_Shrouded_Keyed" H 8700 3200 50  0001 C CNN
F 3 "~" H 8700 3200 50  0001 C CNN
	1    8700 3200
	1    0    0    -1  
$EndComp
NoConn ~ 9000 2900
NoConn ~ 9000 3000
NoConn ~ 8500 3000
NoConn ~ 8500 2900
Wire Wire Line
	9000 3600 9100 3600
$Comp
L power:GND #PWR030
U 1 1 609C79B0
P 8000 5900
F 0 "#PWR030" H 8000 5650 50  0001 C CNN
F 1 "GND" V 8005 5772 50  0000 R CNN
F 2 "" H 8000 5900 50  0001 C CNN
F 3 "" H 8000 5900 50  0001 C CNN
	1    8000 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 609C7CBC
P 8000 4700
F 0 "#PWR021" H 8000 4450 50  0001 C CNN
F 1 "GND" V 8005 4572 50  0000 R CNN
F 2 "" H 8000 4700 50  0001 C CNN
F 3 "" H 8000 4700 50  0001 C CNN
	1    8000 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4700 8150 4700
Wire Wire Line
	8000 5900 8150 5900
Text Label 8400 3600 2    50   ~ 0
-12v-rack
Text Label 8400 3200 2    50   ~ 0
+12v-rack
$Comp
L Device:R_POT_US RV1
U 1 1 609C9AC4
P 3850 6000
F 0 "RV1" H 3783 6046 50  0000 R CNN
F 1 "MixAtt" H 3783 5955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_TT_P0915N" H 3850 6000 50  0001 C CNN
F 3 "~" H 3850 6000 50  0001 C CNN
	1    3850 6000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR4
U 1 1 609CB4C7
P 1200 5000
F 0 "VR4" H 1750 5265 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 1750 5174 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2150 5100 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2150 5000 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2150 4900 50  0001 L CNN "Description"
F 5 "37.5" H 2150 4800 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2150 4700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2150 4600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2150 4500 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2150 4400 50  0001 L CNN "Manufacturer_Part_Number"
	1    1200 5000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR3
U 1 1 609CC110
P 1200 4250
F 0 "VR3" H 1750 4515 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 1750 4424 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2150 4350 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2150 4250 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2150 4150 50  0001 L CNN "Description"
F 5 "37.5" H 2150 4050 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2150 3950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2150 3850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2150 3750 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2150 3650 50  0001 L CNN "Manufacturer_Part_Number"
	1    1200 4250
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR2
U 1 1 609CC831
P 1200 3500
F 0 "VR2" H 1750 3765 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 1750 3674 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2150 3600 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2150 3500 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2150 3400 50  0001 L CNN "Description"
F 5 "37.5" H 2150 3300 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2150 3200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2150 3100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2150 3000 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2150 2900 50  0001 L CNN "Manufacturer_Part_Number"
	1    1200 3500
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:PTL30-19G1-103B2 VR1
U 1 1 609CCDC8
P 1200 2750
F 0 "VR1" H 1750 3015 50  0000 C CNN
F 1 "PTL30-19G1-103B2" H 1750 2924 50  0000 C CNN
F 2 "profane_geometry_jackboard:Slider_Potentiometer_Bourns_PTL_30mm" H 2150 2850 50  0001 L CNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/PTL.pdf" H 2150 2750 50  0001 L CNN
F 4 "Slide Potentiometers 10Kohms Travel=30mm Center Detent" H 2150 2650 50  0001 L CNN "Description"
F 5 "37.5" H 2150 2550 50  0001 L CNN "Height"
F 6 "652-PTL30-19G1-103B2" H 2150 2450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Bourns/PTL30-19G1-103B2?qs=MufAK3yimRNyCxkP0tpbaw%3D%3D" H 2150 2350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Bourns" H 2150 2250 50  0001 L CNN "Manufacturer_Name"
F 9 "PTL30-19G1-103B2" H 2150 2150 50  0001 L CNN "Manufacturer_Part_Number"
	1    1200 2750
	1    0    0    -1  
$EndComp
NoConn ~ 1200 5200
NoConn ~ 1200 4450
NoConn ~ 1200 3700
NoConn ~ 1200 2950
$Comp
L power:GND #PWR012
U 1 1 609CDB93
P 1200 3600
F 0 "#PWR012" H 1200 3350 50  0001 C CNN
F 1 "GND" V 1205 3472 50  0000 R CNN
F 2 "" H 1200 3600 50  0001 C CNN
F 3 "" H 1200 3600 50  0001 C CNN
	1    1200 3600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 609CE258
P 1200 2850
F 0 "#PWR01" H 1200 2600 50  0001 C CNN
F 1 "GND" V 1205 2722 50  0000 R CNN
F 2 "" H 1200 2850 50  0001 C CNN
F 3 "" H 1200 2850 50  0001 C CNN
	1    1200 2850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 609CE554
P 1200 4350
F 0 "#PWR018" H 1200 4100 50  0001 C CNN
F 1 "GND" V 1205 4222 50  0000 R CNN
F 2 "" H 1200 4350 50  0001 C CNN
F 3 "" H 1200 4350 50  0001 C CNN
	1    1200 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 609CE8C8
P 1200 5100
F 0 "#PWR023" H 1200 4850 50  0001 C CNN
F 1 "GND" V 1205 4972 50  0000 R CNN
F 2 "" H 1200 5100 50  0001 C CNN
F 3 "" H 1200 5100 50  0001 C CNN
	1    1200 5100
	0    1    1    0   
$EndComp
Text Label 4000 6350 3    50   ~ 0
mix-att
Text Label 3850 6550 3    50   ~ 0
mix-pre
Wire Wire Line
	3850 6550 3850 6150
Wire Wire Line
	4000 6350 4000 6000
$Comp
L power:GND #PWR025
U 1 1 609D1DE9
P 1200 5300
F 0 "#PWR025" H 1200 5050 50  0001 C CNN
F 1 "GND" V 1205 5172 50  0000 R CNN
F 2 "" H 1200 5300 50  0001 C CNN
F 3 "" H 1200 5300 50  0001 C CNN
	1    1200 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 609D2015
P 1200 4550
F 0 "#PWR020" H 1200 4300 50  0001 C CNN
F 1 "GND" V 1205 4422 50  0000 R CNN
F 2 "" H 1200 4550 50  0001 C CNN
F 3 "" H 1200 4550 50  0001 C CNN
	1    1200 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 609D2274
P 1200 3800
F 0 "#PWR016" H 1200 3550 50  0001 C CNN
F 1 "GND" V 1205 3672 50  0000 R CNN
F 2 "" H 1200 3800 50  0001 C CNN
F 3 "" H 1200 3800 50  0001 C CNN
	1    1200 3800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 609D2421
P 1200 3050
F 0 "#PWR04" H 1200 2800 50  0001 C CNN
F 1 "GND" V 1205 2922 50  0000 R CNN
F 2 "" H 1200 3050 50  0001 C CNN
F 3 "" H 1200 3050 50  0001 C CNN
	1    1200 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 609D462D
P 7500 2700
F 0 "#PWR05" H 7500 2450 50  0001 C CNN
F 1 "GND" V 7505 2572 50  0000 R CNN
F 2 "" H 7500 2700 50  0001 C CNN
F 3 "" H 7500 2700 50  0001 C CNN
	1    7500 2700
	0    -1   1    0   
$EndComp
$Comp
L power:+3V3 #PWR015
U 1 1 609D4B5D
P 7500 3000
F 0 "#PWR015" H 7500 2850 50  0001 C CNN
F 1 "+3V3" V 7515 3128 50  0000 L CNN
F 2 "" H 7500 3000 50  0001 C CNN
F 3 "" H 7500 3000 50  0001 C CNN
	1    7500 3000
	0    1    -1   0   
$EndComp
Text Label 6950 2900 0    50   ~ 0
+12v-rack
Text Label 6950 2800 0    50   ~ 0
-12v-rack
Wire Wire Line
	6950 3300 6800 3300
Wire Wire Line
	6800 3400 6950 3400
Wire Wire Line
	6800 3500 6950 3500
Wire Wire Line
	6800 2900 6950 2900
Wire Wire Line
	6950 2800 6800 2800
Wire Wire Line
	6800 2700 7500 2700
Wire Wire Line
	7500 3000 6800 3000
NoConn ~ 4350 3050
NoConn ~ 4350 3800
NoConn ~ 4350 4500
NoConn ~ 4350 5200
NoConn ~ 4650 5950
$Comp
L power:GND #PWR03
U 1 1 609DBA6E
P 4500 2850
F 0 "#PWR03" H 4500 2600 50  0001 C CNN
F 1 "GND" V 4505 2722 50  0000 R CNN
F 2 "" H 4500 2850 50  0001 C CNN
F 3 "" H 4500 2850 50  0001 C CNN
	1    4500 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 609DBF77
P 4500 3600
F 0 "#PWR014" H 4500 3350 50  0001 C CNN
F 1 "GND" V 4505 3472 50  0000 R CNN
F 2 "" H 4500 3600 50  0001 C CNN
F 3 "" H 4500 3600 50  0001 C CNN
	1    4500 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 609DC1BB
P 4500 4300
F 0 "#PWR017" H 4500 4050 50  0001 C CNN
F 1 "GND" V 4505 4172 50  0000 R CNN
F 2 "" H 4500 4300 50  0001 C CNN
F 3 "" H 4500 4300 50  0001 C CNN
	1    4500 4300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 609DC51A
P 4500 5000
F 0 "#PWR022" H 4500 4750 50  0001 C CNN
F 1 "GND" V 4505 4872 50  0000 R CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 609DC81A
P 4800 5750
F 0 "#PWR029" H 4800 5500 50  0001 C CNN
F 1 "GND" V 4805 5622 50  0000 R CNN
F 2 "" H 4800 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0001 C CNN
	1    4800 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4350 2850 4500 2850
Wire Wire Line
	4350 3600 4500 3600
Wire Wire Line
	4350 4300 4500 4300
Wire Wire Line
	4350 5000 4500 5000
Wire Wire Line
	4650 5750 4800 5750
Text Label 5650 2800 2    50   ~ 0
notch-out
Text Label 5650 2900 2    50   ~ 0
pulse-out
Text Label 5650 3000 2    50   ~ 0
square-out
Text Label 5650 3100 2    50   ~ 0
tri-out
Wire Wire Line
	5800 2800 5650 2800
Wire Wire Line
	5800 2900 5650 2900
Wire Wire Line
	5800 3000 5650 3000
Wire Wire Line
	5800 3100 5650 3100
Text Label 4550 5100 0    50   ~ 0
notch-out
Text Label 4550 4400 0    50   ~ 0
pulse-out
Text Label 4550 3700 0    50   ~ 0
square-out
Text Label 4550 2950 0    50   ~ 0
tri-out
Wire Wire Line
	4550 5100 4350 5100
Wire Wire Line
	4350 4400 4550 4400
Wire Wire Line
	4350 3700 4550 3700
Wire Wire Line
	4350 2950 4550 2950
Text Label 1000 2750 2    50   ~ 0
tri-att
Text Label 1000 3500 2    50   ~ 0
square-att
Text Label 1000 4250 2    50   ~ 0
pulse-att
Text Label 1000 5000 2    50   ~ 0
notch-att
Wire Wire Line
	1200 5000 1000 5000
Wire Wire Line
	1200 4250 1000 4250
Wire Wire Line
	1200 3500 1000 3500
Wire Wire Line
	1200 2750 1000 2750
Text Label 3500 3050 0    50   ~ 0
tri-out
Text Label 3500 4550 0    50   ~ 0
pulse-out
Text Label 3500 5300 0    50   ~ 0
notch-out
$Comp
L power:GND #PWR026
U 1 1 609F2008
P 1350 5800
F 0 "#PWR026" H 1350 5550 50  0001 C CNN
F 1 "GND" V 1355 5672 50  0000 R CNN
F 2 "" H 1350 5800 50  0001 C CNN
F 3 "" H 1350 5800 50  0001 C CNN
	1    1350 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 609F22DC
P 2350 5800
F 0 "#PWR027" H 2350 5550 50  0001 C CNN
F 1 "GND" V 2355 5672 50  0000 R CNN
F 2 "" H 2350 5800 50  0001 C CNN
F 3 "" H 2350 5800 50  0001 C CNN
	1    2350 5800
	0    -1   -1   0   
$EndComp
Text Label 5650 3500 2    50   ~ 0
tri-att
Text Label 5650 3600 2    50   ~ 0
square-att
Text Label 5650 3700 2    50   ~ 0
pulse-att
Text Label 5650 3800 2    50   ~ 0
notch-att
Wire Wire Line
	5650 3800 5800 3800
Wire Wire Line
	5800 3700 5650 3700
Wire Wire Line
	5800 3600 5650 3600
Wire Wire Line
	5800 3500 5650 3500
Text Label 4850 5850 0    50   ~ 0
mix-out
Wire Wire Line
	4850 5850 4650 5850
Text Label 5650 3300 2    50   ~ 0
mix-out
Text Label 5650 3200 2    50   ~ 0
mix-pre
Text Label 5650 3400 2    50   ~ 0
mix-att
Text Label 2500 2850 0    50   ~ 0
tri-led
Text Label 2500 3600 0    50   ~ 0
square-led
Text Label 2500 4350 0    50   ~ 0
pulse-led
Text Label 2500 5100 0    50   ~ 0
notch-led
Wire Wire Line
	2500 4350 2300 4350
Wire Wire Line
	2500 5100 2300 5100
Wire Wire Line
	2500 3600 2300 3600
Wire Wire Line
	2300 2850 2500 2850
$Comp
L Connector:AudioJack2_SwitchT J1
U 1 1 60A0B406
P 3200 2950
F 0 "J1" H 3200 2600 50  0000 C CNN
F 1 "TriAmt" H 3200 2700 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3200 2950 50  0001 C CNN
F 3 "~" H 3200 2950 50  0001 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60A0B779
P 3400 2850
F 0 "#PWR02" H 3400 2600 50  0001 C CNN
F 1 "GND" V 3405 2722 50  0000 R CNN
F 2 "" H 3400 2850 50  0001 C CNN
F 3 "" H 3400 2850 50  0001 C CNN
	1    3400 2850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2950 3750 2950
Wire Wire Line
	3750 2950 3750 2750
Wire Wire Line
	2300 2750 3750 2750
Wire Wire Line
	3500 3050 3400 3050
$Comp
L Connector:AudioJack2_SwitchT J5
U 1 1 60A209BD
P 3200 3700
F 0 "J5" H 3200 3350 50  0000 C CNN
F 1 "SquareAmt" H 3200 3450 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3200 3700 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3200 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60A20CD1
P 3400 3600
F 0 "#PWR013" H 3400 3350 50  0001 C CNN
F 1 "GND" V 3405 3472 50  0000 R CNN
F 2 "" H 3400 3600 50  0001 C CNN
F 3 "" H 3400 3600 50  0001 C CNN
	1    3400 3600
	0    -1   -1   0   
$EndComp
Text Label 3500 3800 0    50   ~ 0
square-out
Wire Wire Line
	3400 3700 3750 3700
Wire Wire Line
	3750 3700 3750 3500
Wire Wire Line
	2300 3500 3750 3500
Wire Wire Line
	3500 3800 3400 3800
$Comp
L Connector:AudioJack2_SwitchT J9
U 1 1 60A25BFA
P 3200 4450
F 0 "J9" H 3200 4100 50  0000 C CNN
F 1 "PulseAmt" H 3200 4200 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3200 4450 50  0001 C CNN
F 3 "~" H 3200 4450 50  0001 C CNN
	1    3200 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 60A261ED
P 3400 4350
F 0 "#PWR019" H 3400 4100 50  0001 C CNN
F 1 "GND" V 3405 4222 50  0000 R CNN
F 2 "" H 3400 4350 50  0001 C CNN
F 3 "" H 3400 4350 50  0001 C CNN
	1    3400 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 4250 3750 4250
Wire Wire Line
	3750 4450 3400 4450
Wire Wire Line
	3750 4250 3750 4450
$Comp
L Connector:AudioJack2_SwitchT J12
U 1 1 60A2BBE1
P 3200 5200
F 0 "J12" H 3200 4850 50  0000 C CNN
F 1 "PulseAmt" H 3200 4950 50  0000 C CNN
F 2 "profane_geometry_jackboard:Jack_3.5mm_QingPu_WQP-PJ301BM_Vertical" H 3200 5200 50  0001 C CNN
F 3 "~" H 3200 5200 50  0001 C CNN
	1    3200 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 60A2C16A
P 3400 5100
F 0 "#PWR024" H 3400 4850 50  0001 C CNN
F 1 "GND" V 3405 4972 50  0000 R CNN
F 2 "" H 3400 5100 50  0001 C CNN
F 3 "" H 3400 5100 50  0001 C CNN
	1    3400 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3500 5300 3400 5300
Wire Wire Line
	3400 5200 3750 5200
Wire Wire Line
	3750 5200 3750 5000
Wire Wire Line
	2300 5000 3750 5000
Text Label 9500 5500 0    50   ~ 0
tri-led
Text Label 9500 5400 0    50   ~ 0
square-led
Text Label 9500 5300 0    50   ~ 0
pulse-led
Text Label 9500 5200 0    50   ~ 0
notch-led
Wire Wire Line
	9500 5500 9350 5500
Wire Wire Line
	9500 5400 9350 5400
Wire Wire Line
	9500 5300 9350 5300
Wire Wire Line
	9500 5200 9350 5200
Wire Wire Line
	3400 4550 3500 4550
$Comp
L power:+3V3 #PWR032
U 1 1 60A8D007
P 7950 4500
F 0 "#PWR032" H 7950 4350 50  0001 C CNN
F 1 "+3V3" V 7965 4628 50  0000 L CNN
F 2 "" H 7950 4500 50  0001 C CNN
F 3 "" H 7950 4500 50  0001 C CNN
	1    7950 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 4500 7950 4500
Text Label 7950 4900 2    50   ~ 0
SERCOM4[0]
Text Label 7950 5000 2    50   ~ 0
SERCOM4[1]
Wire Wire Line
	7950 5000 8150 5000
Wire Wire Line
	7950 4900 8150 4900
NoConn ~ 1350 6000
Text Label 1450 5900 0    50   ~ 0
v_oct-cv
Wire Wire Line
	1350 5900 1450 5900
Text Label 2450 5900 0    50   ~ 0
pulse-cv
Wire Wire Line
	2350 5900 2450 5900
Text Label 6950 3300 0    50   ~ 0
SERCOM4[0]
Text Label 6950 3400 0    50   ~ 0
SERCOM4[1]
Text Label 6950 3500 0    50   ~ 0
v_oct-cv
Text Label 6950 3700 0    50   ~ 0
pulse-cv
$Comp
L power:GND #PWR034
U 1 1 60AAEFE7
P 2350 6000
F 0 "#PWR034" H 2350 5750 50  0001 C CNN
F 1 "GND" V 2355 5872 50  0000 R CNN
F 2 "" H 2350 6000 50  0001 C CNN
F 3 "" H 2350 6000 50  0001 C CNN
	1    2350 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 3600 6800 3600
Text Label 6950 3600 0    50   ~ 0
v_oct-scaled
Text Label 6950 3800 0    50   ~ 0
pulse-scaled
Text Label 7950 5100 2    50   ~ 0
v_oct-scaled
Text Label 7950 5200 2    50   ~ 0
pulse-scaled
Wire Wire Line
	7950 5100 8150 5100
Wire Wire Line
	7950 5200 8150 5200
Wire Wire Line
	6950 3700 6800 3700
Wire Wire Line
	6950 3800 6800 3800
Wire Wire Line
	5650 3200 5800 3200
Wire Wire Line
	5650 3300 5800 3300
$Comp
L Device:R_POT_US RV2
U 1 1 60AF251D
P 3150 6000
F 0 "RV2" H 3083 6046 50  0000 R CNN
F 1 "PulsePot" H 3083 5955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_TT_P0915N" H 3150 6000 50  0001 C CNN
F 3 "~" H 3150 6000 50  0001 C CNN
	1    3150 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 609CED34
P 3850 5850
F 0 "#PWR028" H 3850 5600 50  0001 C CNN
F 1 "GND" H 3855 5677 50  0000 C CNN
F 2 "" H 3850 5850 50  0001 C CNN
F 3 "" H 3850 5850 50  0001 C CNN
	1    3850 5850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR035
U 1 1 60AF63F6
P 3150 6150
F 0 "#PWR035" H 3150 5900 50  0001 C CNN
F 1 "GND" H 3155 5977 50  0000 C CNN
F 2 "" H 3150 6150 50  0001 C CNN
F 3 "" H 3150 6150 50  0001 C CNN
	1    3150 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR033
U 1 1 60AFA071
P 3150 5850
F 0 "#PWR033" H 3150 5700 50  0001 C CNN
F 1 "+3V3" H 3165 6023 50  0000 C CNN
F 2 "" H 3150 5850 50  0001 C CNN
F 3 "" H 3150 5850 50  0001 C CNN
	1    3150 5850
	1    0    0    -1  
$EndComp
Text Label 3300 6400 3    50   ~ 0
pulse-pot
Wire Wire Line
	3300 6000 3300 6400
Text Label 7950 5300 2    50   ~ 0
pulse-pot
Wire Wire Line
	7950 5300 8150 5300
$Comp
L power:GND #PWR031
U 1 1 60B2BC97
P 5200 2700
F 0 "#PWR031" H 5200 2450 50  0001 C CNN
F 1 "GND" V 5205 2572 50  0000 R CNN
F 2 "" H 5200 2700 50  0001 C CNN
F 3 "" H 5200 2700 50  0001 C CNN
	1    5200 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 2700 5800 2700
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 609D790C
P 6000 3200
F 0 "J4" H 6080 3192 50  0000 L CNN
F 1 "Conn_01x12" H 6080 3101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6000 3200 50  0001 C CNN
F 3 "~" H 6000 3200 50  0001 C CNN
	1    6000 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J7
U 1 1 609E6035
P 6600 3200
F 0 "J7" H 6518 3917 50  0000 C CNN
F 1 "Conn_01x12" H 6518 3826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6600 3200 50  0001 C CNN
F 3 "~" H 6600 3200 50  0001 C CNN
	1    6600 3200
	-1   0    0    -1  
$EndComp
NoConn ~ 6800 3200
NoConn ~ 6800 3100
Wire Wire Line
	5650 3400 5800 3400
Text Notes 6700 7750 0    50   ~ 0
Profane Geometry Jackboard
Text Notes 6300 6950 0    50   ~ 0
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$EndSCHEMATC
