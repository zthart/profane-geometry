EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L Analog_DAC:MCP4728 U10
U 1 1 60A4236C
P 4200 5750
F 0 "U10" H 4550 6100 50  0000 C CNN
F 1 "MCP4728" H 4550 6000 50  0000 C CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 4200 5150 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22187E.pdf" H 4200 6000 50  0001 C CNN
F 4 "MCP4728-E/UN" H 4200 5750 50  0001 C CNN "MFG Part No."
	1    4200 5750
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U9
U 1 1 60A4418E
P 2500 1850
F 0 "U9" H 2500 2217 50  0000 C CNN
F 1 "MCP6002-xSN" H 2500 2126 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 1850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 2500 1850 50  0001 C CNN
F 4 "MCP6002-I/SN" H 2500 1850 50  0001 C CNN "MFG Part No."
	1    2500 1850
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U9
U 2 1 60A4884D
P 2500 3350
F 0 "U9" H 2500 3717 50  0000 C CNN
F 1 "MCP6002-xSN" H 2500 3626 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2500 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 2500 3350 50  0001 C CNN
F 4 "MCP6002-I/SN" H 2500 3350 50  0001 C CNN "MFG Part No."
	2    2500 3350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U9
U 3 1 60A49FC8
P 1200 7050
F 0 "U9" H 1158 7096 50  0000 L CNN
F 1 "MCP6002-xSN" H 1158 7005 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1200 7050 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 1200 7050 50  0001 C CNN
F 4 "MCP6002-I/SN" H 1200 7050 50  0001 C CNN "MFG Part No."
	3    1200 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR095
U 1 1 60A4F91F
P 1100 7350
F 0 "#PWR095" H 1100 7100 50  0001 C CNN
F 1 "GND" H 1105 7177 50  0000 C CNN
F 2 "" H 1100 7350 50  0001 C CNN
F 3 "" H 1100 7350 50  0001 C CNN
	1    1100 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR090
U 1 1 60A501DD
P 1100 6750
F 0 "#PWR090" H 1100 6600 50  0001 C CNN
F 1 "+3.3VA" H 1115 6923 50  0000 C CNN
F 2 "" H 1100 6750 50  0001 C CNN
F 3 "" H 1100 6750 50  0001 C CNN
	1    1100 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 60A547CA
P 3600 5850
F 0 "#PWR088" H 3600 5600 50  0001 C CNN
F 1 "GND" V 3605 5722 50  0000 R CNN
F 2 "" H 3600 5850 50  0001 C CNN
F 3 "" H 3600 5850 50  0001 C CNN
	1    3600 5850
	0    1    1    0   
$EndComp
NoConn ~ 3600 5950
$Comp
L power:GND #PWR089
U 1 1 60A551B7
P 4200 6150
F 0 "#PWR089" H 4200 5900 50  0001 C CNN
F 1 "GND" H 4205 5977 50  0000 C CNN
F 2 "" H 4200 6150 50  0001 C CNN
F 3 "" H 4200 6150 50  0001 C CNN
	1    4200 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R68
U 1 1 60A5645E
P 2350 5750
F 0 "R68" H 2418 5796 50  0000 L CNN
F 1 "4.7k" H 2418 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2390 5740 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2350 5750 50  0001 C CNN
F 4 "RMCF0805FT4K70" H 2350 5750 50  0001 C CNN "MFG Part No."
	1    2350 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R69
U 1 1 60A571A5
P 2800 5750
F 0 "R69" H 2868 5796 50  0000 L CNN
F 1 "4.7k" H 2868 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2840 5740 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2800 5750 50  0001 C CNN
F 4 "RMCF0805FT4K70" H 2800 5750 50  0001 C CNN "MFG Part No."
	1    2800 5750
	1    0    0    -1  
$EndComp
Text HLabel 1250 5750 0    50   Input ~ 0
dac-sda
Text HLabel 1250 5900 0    50   Input ~ 0
dac-scl
Text Label 1400 5900 0    50   ~ 0
SCL
Wire Wire Line
	1250 5900 1400 5900
Wire Wire Line
	1250 5750 1400 5750
$Comp
L power:-12V #PWR082
U 1 1 60A5E984
P 1400 2300
F 0 "#PWR082" H 1400 2400 50  0001 C CNN
F 1 "-12V" H 1415 2473 50  0000 C CNN
F 2 "" H 1400 2300 50  0001 C CNN
F 3 "" H 1400 2300 50  0001 C CNN
	1    1400 2300
	-1   0    0    1   
$EndComp
Text HLabel 1300 3450 0    50   Input ~ 0
v_oct-cv
Text HLabel 1300 1950 0    50   Input ~ 0
pulse-cv
$Comp
L Device:R_US R62
U 1 1 60A5F2F9
P 1600 1950
F 0 "R62" V 1395 1950 50  0000 C CNN
F 1 "100k" V 1486 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1640 1940 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1600 1950 50  0001 C CNN
F 4 "RMCF0805FT100K" H 1600 1950 50  0001 C CNN "MFG Part No."
	1    1600 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R63
U 1 1 60A5FD7F
P 1600 2250
F 0 "R63" V 1805 2250 50  0000 C CNN
F 1 "240k" V 1714 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1640 2240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1600 2250 50  0001 C CNN
F 4 "RMCF0805FT240K" H 1600 2250 50  0001 C CNN "MFG Part No."
	1    1600 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR081
U 1 1 60A6500F
P 2200 1750
F 0 "#PWR081" H 2200 1500 50  0001 C CNN
F 1 "GND" V 2205 1622 50  0000 R CNN
F 2 "" H 2200 1750 50  0001 C CNN
F 3 "" H 2200 1750 50  0001 C CNN
	1    2200 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R64
U 1 1 60A67924
P 2500 2250
F 0 "R64" V 2705 2250 50  0000 C CNN
F 1 "64.9k" V 2614 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2540 2240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2500 2250 50  0001 C CNN
F 4 "RMCF0805FT64K9" H 2500 2250 50  0001 C CNN "MFG Part No."
	1    2500 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C28
U 1 1 60A6834E
P 2500 2600
F 0 "C28" V 2248 2600 50  0000 C CNN
F 1 "4.7nF" V 2339 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 2450 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2500 2600 50  0001 C CNN
F 4 "08055C472KAT2A" H 2500 2600 50  0001 C CNN "MFG Part No."
	1    2500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 1950 1950 1950
Wire Wire Line
	1750 2250 1950 2250
Wire Wire Line
	1950 2250 1950 1950
Connection ~ 1950 1950
Wire Wire Line
	1950 1950 2200 1950
Wire Wire Line
	1450 1950 1300 1950
Wire Wire Line
	1450 2250 1400 2250
Wire Wire Line
	1400 2250 1400 2300
Wire Wire Line
	2200 1950 2200 2250
Wire Wire Line
	2200 2250 2350 2250
Connection ~ 2200 1950
Wire Wire Line
	2650 2250 2800 2250
Wire Wire Line
	2800 2250 2800 1850
Wire Wire Line
	2200 2250 2200 2600
Wire Wire Line
	2200 2600 2350 2600
Connection ~ 2200 2250
Wire Wire Line
	2650 2600 2800 2600
Wire Wire Line
	2800 2600 2800 2250
Connection ~ 2800 2250
Wire Wire Line
	2800 1850 3100 1850
Connection ~ 2800 1850
$Comp
L Device:R_US R65
U 1 1 60A6B47F
P 1600 3450
F 0 "R65" V 1395 3450 50  0000 C CNN
F 1 "100k" V 1486 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1640 3440 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1600 3450 50  0001 C CNN
F 4 "RMCF0805FT100K" H 1600 3450 50  0001 C CNN "MFG Part No."
	1    1600 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R66
U 1 1 60A6BC3A
P 1600 3750
F 0 "R66" V 1805 3750 50  0000 C CNN
F 1 "240k" V 1714 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1640 3740 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1600 3750 50  0001 C CNN
F 4 "RMCF0805FT240K" H 1600 3750 50  0001 C CNN "MFG Part No."
	1    1600 3750
	0    -1   -1   0   
$EndComp
$Comp
L power:-12V #PWR084
U 1 1 60A6D532
P 1400 3800
F 0 "#PWR084" H 1400 3900 50  0001 C CNN
F 1 "-12V" H 1415 3973 50  0000 C CNN
F 2 "" H 1400 3800 50  0001 C CNN
F 3 "" H 1400 3800 50  0001 C CNN
	1    1400 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1400 3800 1400 3750
Wire Wire Line
	1400 3750 1450 3750
Wire Wire Line
	1450 3450 1300 3450
Wire Wire Line
	1750 3450 1950 3450
Wire Wire Line
	1750 3750 1950 3750
Wire Wire Line
	1950 3750 1950 3450
Connection ~ 1950 3450
Wire Wire Line
	1950 3450 2200 3450
$Comp
L power:GND #PWR083
U 1 1 60A6EEE1
P 2200 3250
F 0 "#PWR083" H 2200 3000 50  0001 C CNN
F 1 "GND" V 2205 3122 50  0000 R CNN
F 2 "" H 2200 3250 50  0001 C CNN
F 3 "" H 2200 3250 50  0001 C CNN
	1    2200 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R67
U 1 1 60A6F35B
P 2500 3750
F 0 "R67" V 2705 3750 50  0000 C CNN
F 1 "56k" V 2614 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2540 3740 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2500 3750 50  0001 C CNN
F 4 "RMCF0805FT56K0" H 2500 3750 50  0001 C CNN "MFG Part No."
	1    2500 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 3450 2200 3750
Wire Wire Line
	2200 3750 2350 3750
Connection ~ 2200 3450
Wire Wire Line
	2650 3750 2800 3750
Wire Wire Line
	2800 3750 2800 3350
$Comp
L Device:C C29
U 1 1 60A70688
P 2500 4100
F 0 "C29" V 2248 4100 50  0000 C CNN
F 1 "2.2nF" V 2339 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 3950 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2500 4100 50  0001 C CNN
F 4 "08055C222KAT2A" H 2500 4100 50  0001 C CNN "MFG Part No."
	1    2500 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 4100 2200 4100
Wire Wire Line
	2200 4100 2200 3750
Connection ~ 2200 3750
Wire Wire Line
	2650 4100 2800 4100
Wire Wire Line
	2800 4100 2800 3750
Connection ~ 2800 3750
Wire Wire Line
	2800 3350 3100 3350
Connection ~ 2800 3350
Text HLabel 3100 1850 2    50   Output ~ 0
pulse-scaled
Text HLabel 3100 3350 2    50   Output ~ 0
v_oct-scaled
Text HLabel 4800 5650 2    50   Output ~ 0
coarse-pitch-cv
Text HLabel 4800 5750 2    50   Output ~ 0
fine-pitch-cv
Text HLabel 4800 5850 2    50   Output ~ 0
duty-cv
NoConn ~ 4800 5950
$Comp
L Device:C C30
U 1 1 60A74934
P 1950 7050
F 0 "C30" H 1835 7004 50  0000 R CNN
F 1 "0.1uF" H 1835 7095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 6900 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 1950 7050 50  0001 C CNN
F 4 "08055C104KAT4A" H 1950 7050 50  0001 C CNN "MFG Part No."
	1    1950 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR093
U 1 1 60A751A1
P 1950 7200
F 0 "#PWR093" H 1950 6950 50  0001 C CNN
F 1 "GND" H 1955 7027 50  0000 C CNN
F 2 "" H 1950 7200 50  0001 C CNN
F 3 "" H 1950 7200 50  0001 C CNN
	1    1950 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR091
U 1 1 60A756D3
P 1950 6900
F 0 "#PWR091" H 1950 6750 50  0001 C CNN
F 1 "+3.3VA" H 1965 7073 50  0000 C CNN
F 2 "" H 1950 6900 50  0001 C CNN
F 3 "" H 1950 6900 50  0001 C CNN
	1    1950 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C31
U 1 1 60A7637C
P 2650 7050
F 0 "C31" H 2535 7004 50  0000 R CNN
F 1 "0.1uF" H 2535 7095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2688 6900 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2650 7050 50  0001 C CNN
F 4 "08055C104KAT4A" H 2650 7050 50  0001 C CNN "MFG Part No."
	1    2650 7050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR094
U 1 1 60A76A34
P 2650 7200
F 0 "#PWR094" H 2650 6950 50  0001 C CNN
F 1 "GND" H 2655 7027 50  0000 C CNN
F 2 "" H 2650 7200 50  0001 C CNN
F 3 "" H 2650 7200 50  0001 C CNN
	1    2650 7200
	1    0    0    -1  
$EndComp
Text Notes 7000 6800 0    50   ~ 10
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$Comp
L power:+5V #PWR092
U 1 1 61124A9E
P 2650 6900
F 0 "#PWR092" H 2650 6750 50  0001 C CNN
F 1 "+5V" H 2665 7073 50  0000 C CNN
F 2 "" H 2650 6900 50  0001 C CNN
F 3 "" H 2650 6900 50  0001 C CNN
	1    2650 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR085
U 1 1 61124F6B
P 4200 5450
F 0 "#PWR085" H 4200 5300 50  0001 C CNN
F 1 "+5V" H 4215 5623 50  0000 C CNN
F 2 "" H 4200 5450 50  0001 C CNN
F 3 "" H 4200 5450 50  0001 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR086
U 1 1 61126661
P 2350 5600
F 0 "#PWR086" H 2350 5450 50  0001 C CNN
F 1 "+3V3" H 2365 5773 50  0000 C CNN
F 2 "" H 2350 5600 50  0001 C CNN
F 3 "" H 2350 5600 50  0001 C CNN
	1    2350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR087
U 1 1 61126AB1
P 2800 5600
F 0 "#PWR087" H 2800 5450 50  0001 C CNN
F 1 "+3V3" H 2815 5773 50  0000 C CNN
F 2 "" H 2800 5600 50  0001 C CNN
F 3 "" H 2800 5600 50  0001 C CNN
	1    2800 5600
	1    0    0    -1  
$EndComp
Text Label 1400 5750 0    50   ~ 0
SDA
Text Label 2350 5900 3    50   ~ 0
SDA
Text Label 2800 5900 3    50   ~ 0
SCL
Text Label 3600 5750 2    50   ~ 0
SDA
Text Label 3600 5650 2    50   ~ 0
SCL
$EndSCHEMATC
