EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 6
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
L Amplifier_Operational:TL072 U8
U 2 1 61AE2CC6
P 5800 5650
F 0 "U8" H 5800 5283 50  0000 C CNN
F 1 "TL072" H 5800 5374 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5800 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5800 5650 50  0001 C CNN
F 4 "TL072QDREP" H 5800 5650 50  0001 C CNN "MFG Part No."
	2    5800 5650
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL072 U8
U 3 1 61AE446A
P 1650 7150
F 0 "U8" H 1608 7196 50  0000 L CNN
F 1 "TL072" H 1608 7105 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1650 7150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 1650 7150 50  0001 C CNN
F 4 "TL072QDREP" H 1650 7150 50  0001 C CNN "MFG Part No."
	3    1650 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR063
U 1 1 61AE8264
P 1550 6850
F 0 "#PWR063" H 1550 6700 50  0001 C CNN
F 1 "+12V" H 1565 7023 50  0000 C CNN
F 2 "" H 1550 6850 50  0001 C CNN
F 3 "" H 1550 6850 50  0001 C CNN
	1    1550 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR078
U 1 1 61AE8759
P 1550 7450
F 0 "#PWR078" H 1550 7550 50  0001 C CNN
F 1 "-12V" H 1565 7623 50  0000 C CNN
F 2 "" H 1550 7450 50  0001 C CNN
F 3 "" H 1550 7450 50  0001 C CNN
	1    1550 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C22
U 1 1 61AE91AE
P 1950 7150
F 0 "C22" H 2065 7196 50  0000 L CNN
F 1 "0.1uF" H 2065 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 7000 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 1950 7150 50  0001 C CNN
F 4 "08055C104KAT4A" H 1950 7150 50  0001 C CNN "MFG Part No."
	1    1950 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 61AE9929
P 2400 7150
F 0 "C23" H 2515 7196 50  0000 L CNN
F 1 "0.1uF" H 2515 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2438 7000 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 2400 7150 50  0001 C CNN
F 4 "08055C104KAT4A" H 2400 7150 50  0001 C CNN "MFG Part No."
	1    2400 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 61AEA274
P 1950 7300
F 0 "#PWR072" H 1950 7050 50  0001 C CNN
F 1 "GND" H 1955 7127 50  0000 C CNN
F 2 "" H 1950 7300 50  0001 C CNN
F 3 "" H 1950 7300 50  0001 C CNN
	1    1950 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR066
U 1 1 61AEA74F
P 1950 7000
F 0 "#PWR066" H 1950 6850 50  0001 C CNN
F 1 "+12V" H 1965 7173 50  0000 C CNN
F 2 "" H 1950 7000 50  0001 C CNN
F 3 "" H 1950 7000 50  0001 C CNN
	1    1950 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 61AEAA24
P 2400 7000
F 0 "#PWR067" H 2400 6750 50  0001 C CNN
F 1 "GND" H 2405 6827 50  0000 C CNN
F 2 "" H 2400 7000 50  0001 C CNN
F 3 "" H 2400 7000 50  0001 C CNN
	1    2400 7000
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR073
U 1 1 61AEB0BF
P 2400 7300
F 0 "#PWR073" H 2400 7400 50  0001 C CNN
F 1 "-12V" H 2415 7473 50  0000 C CNN
F 2 "" H 2400 7300 50  0001 C CNN
F 3 "" H 2400 7300 50  0001 C CNN
	1    2400 7300
	-1   0    0    1   
$EndComp
Text HLabel 3050 1600 0    50   Input ~ 0
tri-mix-in
Text HLabel 3050 3300 0    50   Input ~ 0
sq-mix-in
Text HLabel 6400 3950 2    50   Input ~ 0
pl-mix-in
Text HLabel 6400 2250 2    50   Input ~ 0
nt-mix-in
$Comp
L power:GND #PWR062
U 1 1 61AF5BC4
P 5450 5800
F 0 "#PWR062" H 5450 5550 50  0001 C CNN
F 1 "GND" H 5455 5627 50  0000 C CNN
F 2 "" H 5450 5800 50  0001 C CNN
F 3 "" H 5450 5800 50  0001 C CNN
	1    5450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5800 5450 5750
Wire Wire Line
	5450 5750 5500 5750
$Comp
L Device:R_US R60
U 1 1 61B014BC
P 5350 5550
F 0 "R60" V 5145 5550 50  0000 C CNN
F 1 "10k" V 5236 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5390 5540 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 5350 5550 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 5350 5550 50  0001 C CNN "MFG Part No."
	1    5350 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R59
U 1 1 61B01DDE
P 5800 5200
F 0 "R59" V 5595 5200 50  0000 C CNN
F 1 "10k" V 5686 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5840 5190 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 5800 5200 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 5800 5200 50  0001 C CNN "MFG Part No."
	1    5800 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R61
U 1 1 61B020C7
P 6250 5650
F 0 "R61" V 6045 5650 50  0000 C CNN
F 1 "1k" V 6136 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6290 5640 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6250 5650 50  0001 C CNN
F 4 "RMCF0805FT1K00" H 6250 5650 50  0001 C CNN "MFG Part No."
	1    6250 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 5200 5500 5200
Wire Wire Line
	5500 5200 5500 5550
Connection ~ 5500 5550
Wire Wire Line
	5950 5200 6100 5200
Wire Wire Line
	6100 5200 6100 5650
Connection ~ 6100 5650
Text HLabel 6650 5650 2    50   Output ~ 0
mix-out
Wire Wire Line
	6400 5650 6650 5650
$Comp
L Amplifier_Operational:TL074 U6
U 1 1 609C3D7F
P 2150 1400
F 0 "U6" H 2150 1033 50  0000 C CNN
F 1 "TL074" H 2150 1124 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 2100 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2200 1600 50  0001 C CNN
F 4 "TL074CDBR" H 2150 1400 50  0001 C CNN "MFG Part No."
	1    2150 1400
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U6
U 2 1 609C55B0
P 3550 1500
F 0 "U6" H 3550 1850 50  0000 C CNN
F 1 "TL074" H 3550 1750 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 3500 1600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 1700 50  0001 C CNN
F 4 "TL074CDBR" H 3550 1500 50  0001 C CNN "MFG Part No."
	2    3550 1500
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U6
U 3 1 609C754E
P 3550 3200
F 0 "U6" H 3550 3550 50  0000 C CNN
F 1 "TL074" H 3550 3450 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 3500 3300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3600 3400 50  0001 C CNN
F 4 "TL074CDBR" H 3550 3200 50  0001 C CNN "MFG Part No."
	3    3550 3200
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U6
U 4 1 609C9902
P 2150 3100
F 0 "U6" H 2150 2800 50  0000 C CNN
F 1 "TL074" H 2150 2900 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 2100 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 2200 3300 50  0001 C CNN
F 4 "TL074CDBR" H 2150 3100 50  0001 C CNN "MFG Part No."
	4    2150 3100
	1    0    0    1   
$EndComp
Text HLabel 8100 1950 2    50   Input ~ 0
notch-in
Text HLabel 8100 3650 2    50   Input ~ 0
pulse-in
Text HLabel 1350 3000 0    50   Input ~ 0
square-in
Text HLabel 1350 1300 0    50   Input ~ 0
tri-in
$Comp
L Amplifier_Operational:TL074 U6
U 5 1 60AABE98
P 3200 7150
F 0 "U6" H 3158 7196 50  0000 L CNN
F 1 "TL074" H 3158 7105 50  0000 L CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 3150 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3250 7350 50  0001 C CNN
F 4 "TL074CDBR" H 3200 7150 50  0001 C CNN "MFG Part No."
	5    3200 7150
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR064
U 1 1 60AAF024
P 3100 6850
F 0 "#PWR064" H 3100 6700 50  0001 C CNN
F 1 "+12V" H 3115 7023 50  0000 C CNN
F 2 "" H 3100 6850 50  0001 C CNN
F 3 "" H 3100 6850 50  0001 C CNN
	1    3100 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR079
U 1 1 60AAF3D0
P 3100 7450
F 0 "#PWR079" H 3100 7550 50  0001 C CNN
F 1 "-12V" H 3115 7623 50  0000 C CNN
F 2 "" H 3100 7450 50  0001 C CNN
F 3 "" H 3100 7450 50  0001 C CNN
	1    3100 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C24
U 1 1 60AAF79F
P 3550 7150
F 0 "C24" H 3665 7196 50  0000 L CNN
F 1 "0.1uF" H 3665 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 7000 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 3550 7150 50  0001 C CNN
F 4 "08055C104KAT4A" H 3550 7150 50  0001 C CNN "MFG Part No."
	1    3550 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 60AAFB9F
P 4000 7150
F 0 "C25" H 4115 7196 50  0000 L CNN
F 1 "0.1uF" H 4115 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4038 7000 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 4000 7150 50  0001 C CNN
F 4 "08055C104KAT4A" H 4000 7150 50  0001 C CNN "MFG Part No."
	1    4000 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR074
U 1 1 60AAFFFE
P 3550 7300
F 0 "#PWR074" H 3550 7050 50  0001 C CNN
F 1 "GND" H 3555 7127 50  0000 C CNN
F 2 "" H 3550 7300 50  0001 C CNN
F 3 "" H 3550 7300 50  0001 C CNN
	1    3550 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR068
U 1 1 60AB03E8
P 3550 7000
F 0 "#PWR068" H 3550 6850 50  0001 C CNN
F 1 "+12V" H 3565 7173 50  0000 C CNN
F 2 "" H 3550 7000 50  0001 C CNN
F 3 "" H 3550 7000 50  0001 C CNN
	1    3550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR069
U 1 1 60AB07FB
P 4000 7000
F 0 "#PWR069" H 4000 6750 50  0001 C CNN
F 1 "GND" H 4005 6827 50  0000 C CNN
F 2 "" H 4000 7000 50  0001 C CNN
F 3 "" H 4000 7000 50  0001 C CNN
	1    4000 7000
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR075
U 1 1 60AB0A33
P 4000 7300
F 0 "#PWR075" H 4000 7400 50  0001 C CNN
F 1 "-12V" H 4015 7473 50  0000 C CNN
F 2 "" H 4000 7300 50  0001 C CNN
F 3 "" H 4000 7300 50  0001 C CNN
	1    4000 7300
	-1   0    0    1   
$EndComp
Text Notes 6300 7000 0    50   ~ 10
(c) 2021 Zach Hart\nLicensed under the CERN-OHL-P v2
$Comp
L Device:R_US R38
U 1 1 6124A5CA
P 1600 1300
F 0 "R38" V 1395 1300 50  0000 C CNN
F 1 "30.1k" V 1486 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1640 1290 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1600 1300 50  0001 C CNN
F 4 "RMCF0805FT30K1" H 1600 1300 50  0001 C CNN "MFG Part No."
	1    1600 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R35
U 1 1 6124C257
P 2150 900
F 0 "R35" V 1945 900 50  0000 C CNN
F 1 "10k" V 2036 900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2190 890 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2150 900 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 2150 900 50  0001 C CNN "MFG Part No."
	1    2150 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 1300 1450 1300
Wire Wire Line
	1750 1300 1850 1300
Wire Wire Line
	1850 900  2000 900 
Wire Wire Line
	1850 900  1850 1300
Connection ~ 1850 1300
$Comp
L power:GND #PWR054
U 1 1 61256DD6
P 1750 1600
F 0 "#PWR054" H 1750 1350 50  0001 C CNN
F 1 "GND" H 1755 1427 50  0000 C CNN
F 2 "" H 1750 1600 50  0001 C CNN
F 3 "" H 1750 1600 50  0001 C CNN
	1    1750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1500 1750 1500
Wire Wire Line
	1750 1500 1750 1600
Text HLabel 2550 1400 2    50   Output ~ 0
tri-pre-mix
$Comp
L Device:R_US R36
U 1 1 61276900
P 2800 1250
F 0 "R36" V 2595 1250 50  0000 C CNN
F 1 "2.2M" V 2686 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2840 1240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2800 1250 50  0001 C CNN
F 4 "RMCF0805FT2M20" H 2800 1250 50  0001 C CNN "MFG Part No."
	1    2800 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R37
U 1 1 61284D7C
P 3550 1250
F 0 "R37" V 3345 1250 50  0000 C CNN
F 1 "47k" V 3436 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 1240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 3550 1250 50  0001 C CNN
F 4 "RMCF0805FT47K0" H 3550 1250 50  0001 C CNN "MFG Part No."
	1    3550 1250
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R41
U 1 1 612858EF
P 3150 1850
F 0 "R41" H 3082 1804 50  0000 R CNN
F 1 "22k" H 3082 1895 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3190 1840 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 3150 1850 50  0001 C CNN
F 4 "RMCF0805FT22K0" H 3150 1850 50  0001 C CNN "MFG Part No."
	1    3150 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR055
U 1 1 612898CB
P 3150 2000
F 0 "#PWR055" H 3150 1750 50  0001 C CNN
F 1 "GND" H 3155 1827 50  0000 C CNN
F 2 "" H 3150 2000 50  0001 C CNN
F 3 "" H 3150 2000 50  0001 C CNN
	1    3150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 6128B74E
P 3550 900
F 0 "C18" V 3298 900 50  0000 C CNN
F 1 "47pF" V 3389 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 750 50  0001 C CNN
F 3 "https://datasheets.avx.com/C0GNP0-Dielectric.pdf" H 3550 900 50  0001 C CNN
F 4 "08055A470KAT4A" H 3550 900 50  0001 C CNN "MFG Part No."
	1    3550 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1250 3850 1250
Wire Wire Line
	3850 1250 3850 1500
Wire Wire Line
	3700 900  3850 900 
Wire Wire Line
	3850 900  3850 1250
Connection ~ 3850 1250
$Comp
L Device:R_US R48
U 1 1 612C5628
P 2800 2950
F 0 "R48" V 2595 2950 50  0000 C CNN
F 1 "2.2M" V 2686 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2840 2940 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2800 2950 50  0001 C CNN
F 4 "RMCF0805FT2M20" H 2800 2950 50  0001 C CNN "MFG Part No."
	1    2800 2950
	0    1    1    0   
$EndComp
Text HLabel 2550 3100 2    50   Output ~ 0
sq-pre-mix
$Comp
L power:GND #PWR058
U 1 1 612C9DC5
P 1750 3300
F 0 "#PWR058" H 1750 3050 50  0001 C CNN
F 1 "GND" H 1755 3127 50  0000 C CNN
F 2 "" H 1750 3300 50  0001 C CNN
F 3 "" H 1750 3300 50  0001 C CNN
	1    1750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3200 1750 3200
Wire Wire Line
	1750 3200 1750 3300
Wire Wire Line
	1750 3000 1850 3000
Wire Wire Line
	1450 3000 1350 3000
Wire Wire Line
	2300 2600 2450 2600
Wire Wire Line
	2450 2600 2450 2950
$Comp
L Device:C C20
U 1 1 612DA6CC
P 3550 2600
F 0 "C20" V 3298 2600 50  0000 C CNN
F 1 "47pF" V 3389 2600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3588 2450 50  0001 C CNN
F 3 "https://datasheets.avx.com/C0GNP0-Dielectric.pdf" H 3550 2600 50  0001 C CNN
F 4 "08055A470KAT4A" H 3550 2600 50  0001 C CNN "MFG Part No."
	1    3550 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR059
U 1 1 612DB408
P 3150 3700
F 0 "#PWR059" H 3150 3450 50  0001 C CNN
F 1 "GND" H 3155 3527 50  0000 C CNN
F 2 "" H 3150 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0001 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2600 3850 2600
Wire Wire Line
	3700 2950 3850 2950
Wire Wire Line
	3250 1400 3150 1400
Wire Wire Line
	3150 1400 3150 1250
Wire Wire Line
	3150 1250 3400 1250
Wire Wire Line
	3150 1250 3150 900 
Connection ~ 3150 1250
Wire Wire Line
	3150 900  3400 900 
Wire Wire Line
	2300 900  2450 900 
Wire Wire Line
	2450 1400 2550 1400
Wire Wire Line
	2450 1400 2450 1250
Connection ~ 2450 1400
Wire Wire Line
	3150 1400 3150 1700
Connection ~ 3150 1400
Wire Wire Line
	2450 1250 2650 1250
Connection ~ 2450 1250
Wire Wire Line
	2450 1250 2450 900 
Wire Wire Line
	2950 1250 3150 1250
Wire Wire Line
	3050 1600 3250 1600
Wire Wire Line
	2450 3100 2550 3100
Wire Wire Line
	3050 3300 3250 3300
Wire Wire Line
	3150 3400 3150 3100
Wire Wire Line
	3150 3100 3250 3100
Wire Wire Line
	3400 2950 3150 2950
Wire Wire Line
	3150 2950 3150 3100
Connection ~ 3150 3100
Wire Wire Line
	3400 2600 3150 2600
Wire Wire Line
	3150 2600 3150 2950
Connection ~ 3150 2950
Wire Wire Line
	3850 3200 3850 2950
Wire Wire Line
	3850 2950 3850 2600
Connection ~ 3850 2950
Wire Wire Line
	3150 2950 2950 2950
Wire Wire Line
	2650 2950 2450 2950
Connection ~ 2450 2950
Wire Wire Line
	2450 2950 2450 3100
Wire Wire Line
	1850 3000 1850 2600
Wire Wire Line
	1850 2600 2000 2600
$Comp
L Amplifier_Operational:TL074 U7
U 1 1 61364E10
P 7300 2050
F 0 "U7" H 7300 1683 50  0000 C CNN
F 1 "TL074" H 7300 1774 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 7250 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7350 2250 50  0001 C CNN
F 4 "TL074CDBR" H 7300 2050 50  0001 C CNN "MFG Part No."
	1    7300 2050
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U7
U 2 1 61366264
P 5900 2150
F 0 "U7" H 5900 2500 50  0000 C CNN
F 1 "TL074" H 5900 2400 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 5850 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5950 2350 50  0001 C CNN
F 4 "TL074CDBR" H 5900 2150 50  0001 C CNN "MFG Part No."
	2    5900 2150
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U7
U 4 1 6136838B
P 7300 3750
F 0 "U7" H 7300 3450 50  0000 C CNN
F 1 "TL074" H 7300 3550 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 7250 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 7350 3950 50  0001 C CNN
F 4 "TL074CDBR" H 7300 3750 50  0001 C CNN "MFG Part No."
	4    7300 3750
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U7
U 3 1 6136722E
P 5900 3850
F 0 "U7" H 5900 4200 50  0000 C CNN
F 1 "TL074" H 5900 4100 50  0000 C CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 5850 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 5950 4050 50  0001 C CNN
F 4 "TL074CDBR" H 5900 3850 50  0001 C CNN "MFG Part No."
	3    5900 3850
	-1   0    0    1   
$EndComp
$Comp
L Amplifier_Operational:TL074 U7
U 5 1 61380236
P 4650 7150
F 0 "U7" H 4608 7196 50  0000 L CNN
F 1 "TL074" H 4608 7105 50  0000 L CNN
F 2 "Package_SO:SSOP-14_5.3x6.2mm_P0.65mm" H 4600 7250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 4700 7350 50  0001 C CNN
F 4 "TL074CDBR" H 4650 7150 50  0001 C CNN "MFG Part No."
	5    4650 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 61384010
P 5000 7150
F 0 "C26" H 5115 7196 50  0000 L CNN
F 1 "0.1uF" H 5115 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5038 7000 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 5000 7150 50  0001 C CNN
F 4 "08055C104KAT4A" H 5000 7150 50  0001 C CNN "MFG Part No."
	1    5000 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C27
U 1 1 61384016
P 5450 7150
F 0 "C27" H 5565 7196 50  0000 L CNN
F 1 "0.1uF" H 5565 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5488 7000 50  0001 C CNN
F 3 "https://datasheets.avx.com/X7RDielectric.pdf" H 5450 7150 50  0001 C CNN
F 4 "08055C104KAT4A" H 5450 7150 50  0001 C CNN "MFG Part No."
	1    5450 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR076
U 1 1 6138401C
P 5000 7300
F 0 "#PWR076" H 5000 7050 50  0001 C CNN
F 1 "GND" H 5005 7127 50  0000 C CNN
F 2 "" H 5000 7300 50  0001 C CNN
F 3 "" H 5000 7300 50  0001 C CNN
	1    5000 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR070
U 1 1 61384022
P 5000 7000
F 0 "#PWR070" H 5000 6850 50  0001 C CNN
F 1 "+12V" H 5015 7173 50  0000 C CNN
F 2 "" H 5000 7000 50  0001 C CNN
F 3 "" H 5000 7000 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR071
U 1 1 61384028
P 5450 7000
F 0 "#PWR071" H 5450 6750 50  0001 C CNN
F 1 "GND" H 5455 6827 50  0000 C CNN
F 2 "" H 5450 7000 50  0001 C CNN
F 3 "" H 5450 7000 50  0001 C CNN
	1    5450 7000
	-1   0    0    1   
$EndComp
$Comp
L power:-12V #PWR077
U 1 1 6138402E
P 5450 7300
F 0 "#PWR077" H 5450 7400 50  0001 C CNN
F 1 "-12V" H 5465 7473 50  0000 C CNN
F 2 "" H 5450 7300 50  0001 C CNN
F 3 "" H 5450 7300 50  0001 C CNN
	1    5450 7300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR065
U 1 1 61385759
P 4550 6850
F 0 "#PWR065" H 4550 6700 50  0001 C CNN
F 1 "+12V" H 4565 7023 50  0000 C CNN
F 2 "" H 4550 6850 50  0001 C CNN
F 3 "" H 4550 6850 50  0001 C CNN
	1    4550 6850
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR080
U 1 1 61385B15
P 4550 7450
F 0 "#PWR080" H 4550 7550 50  0001 C CNN
F 1 "-12V" H 4565 7623 50  0000 C CNN
F 2 "" H 4550 7450 50  0001 C CNN
F 3 "" H 4550 7450 50  0001 C CNN
	1    4550 7450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR056
U 1 1 6138AEF6
P 7700 2250
F 0 "#PWR056" H 7700 2000 50  0001 C CNN
F 1 "GND" H 7705 2077 50  0000 C CNN
F 2 "" H 7700 2250 50  0001 C CNN
F 3 "" H 7700 2250 50  0001 C CNN
	1    7700 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 1950 8000 1950
Wire Wire Line
	7700 1950 7600 1950
Wire Wire Line
	7700 2250 7700 2150
Wire Wire Line
	7700 2150 7600 2150
Wire Wire Line
	7600 1950 7600 1550
Wire Wire Line
	7600 1550 7450 1550
Connection ~ 7600 1950
Wire Wire Line
	7150 1550 7000 1550
Wire Wire Line
	7000 1550 7000 1900
Text HLabel 6900 3750 0    50   Output ~ 0
pl-pre-mix
Wire Wire Line
	7000 2050 6900 2050
Connection ~ 7000 2050
$Comp
L Device:R_US R43
U 1 1 6139F5E0
P 6650 1900
F 0 "R43" V 6445 1900 50  0000 C CNN
F 1 "2.2M" V 6536 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6690 1890 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6650 1900 50  0001 C CNN
F 4 "RMCF0805FT2M20" H 6650 1900 50  0001 C CNN "MFG Part No."
	1    6650 1900
	0    -1   1    0   
$EndComp
Wire Wire Line
	6400 2250 6200 2250
$Comp
L power:GND #PWR057
U 1 1 613A486F
P 6300 2650
F 0 "#PWR057" H 6300 2400 50  0001 C CNN
F 1 "GND" H 6305 2477 50  0000 C CNN
F 2 "" H 6300 2650 50  0001 C CNN
F 3 "" H 6300 2650 50  0001 C CNN
	1    6300 2650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 2350 6300 2050
Wire Wire Line
	6300 2050 6200 2050
$Comp
L Device:C C19
U 1 1 613A789A
P 5900 1550
F 0 "C19" V 5648 1550 50  0000 C CNN
F 1 "47pF" V 5739 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 1400 50  0001 C CNN
F 3 "https://datasheets.avx.com/C0GNP0-Dielectric.pdf" H 5900 1550 50  0001 C CNN
F 4 "08055A470KAT4A" H 5900 1550 50  0001 C CNN "MFG Part No."
	1    5900 1550
	0    -1   1    0   
$EndComp
Wire Wire Line
	6300 2050 6300 1900
Wire Wire Line
	6300 1900 6050 1900
Connection ~ 6300 2050
Wire Wire Line
	6300 1900 6300 1550
Wire Wire Line
	6300 1550 6050 1550
Connection ~ 6300 1900
Wire Wire Line
	5750 1900 5600 1900
Wire Wire Line
	5600 1900 5600 2150
Wire Wire Line
	5750 1550 5600 1550
Wire Wire Line
	5600 1550 5600 1900
Connection ~ 5600 1900
Wire Wire Line
	6300 1900 6500 1900
Wire Wire Line
	6800 1900 7000 1900
Connection ~ 7000 1900
Wire Wire Line
	7000 1900 7000 2050
Text HLabel 6900 2050 0    50   Output ~ 0
nt-pre-mix
Wire Wire Line
	7000 3750 6900 3750
Wire Wire Line
	6400 3950 6200 3950
$Comp
L power:GND #PWR060
U 1 1 613C3390
P 7700 3950
F 0 "#PWR060" H 7700 3700 50  0001 C CNN
F 1 "GND" H 7705 3777 50  0000 C CNN
F 2 "" H 7700 3950 50  0001 C CNN
F 3 "" H 7700 3950 50  0001 C CNN
	1    7700 3950
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R55
U 1 1 613C3BF8
P 6650 3600
F 0 "R55" V 6445 3600 50  0000 C CNN
F 1 "2.2M" V 6536 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6690 3590 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6650 3600 50  0001 C CNN
F 4 "RMCF0805FT2M20" H 6650 3600 50  0001 C CNN "MFG Part No."
	1    6650 3600
	0    -1   1    0   
$EndComp
$Comp
L Device:C C21
U 1 1 613C491E
P 5900 3250
F 0 "C21" V 5648 3250 50  0000 C CNN
F 1 "47pF" V 5739 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 3100 50  0001 C CNN
F 3 "https://datasheets.avx.com/C0GNP0-Dielectric.pdf" H 5900 3250 50  0001 C CNN
F 4 "08055A470KAT4A" H 5900 3250 50  0001 C CNN "MFG Part No."
	1    5900 3250
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR061
U 1 1 613C5FF0
P 6300 4350
F 0 "#PWR061" H 6300 4100 50  0001 C CNN
F 1 "GND" H 6305 4177 50  0000 C CNN
F 2 "" H 6300 4350 50  0001 C CNN
F 3 "" H 6300 4350 50  0001 C CNN
	1    6300 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 4050 6300 3750
Wire Wire Line
	6300 3750 6200 3750
Wire Wire Line
	6300 3750 6300 3600
Wire Wire Line
	6300 3600 6050 3600
Connection ~ 6300 3750
Wire Wire Line
	6300 3600 6300 3250
Wire Wire Line
	6300 3250 6050 3250
Connection ~ 6300 3600
Wire Wire Line
	5750 3600 5600 3600
Wire Wire Line
	5600 3600 5600 3850
Wire Wire Line
	5750 3250 5600 3250
Wire Wire Line
	5600 3250 5600 3600
Wire Wire Line
	6300 3600 6500 3600
Connection ~ 5600 3600
Wire Wire Line
	7000 3750 7000 3600
Wire Wire Line
	7000 3250 7150 3250
Connection ~ 7000 3750
Wire Wire Line
	7000 3600 6800 3600
Connection ~ 7000 3600
Wire Wire Line
	7000 3600 7000 3250
Wire Wire Line
	7450 3250 7600 3250
Wire Wire Line
	7600 3250 7600 3650
Wire Wire Line
	7600 3650 7700 3650
Connection ~ 7600 3650
Wire Wire Line
	7600 3850 7700 3850
Wire Wire Line
	7700 3850 7700 3950
Wire Wire Line
	8000 3650 8100 3650
$Comp
L Device:R_US R47
U 1 1 61401B3F
P 2150 2600
F 0 "R47" V 1945 2600 50  0000 C CNN
F 1 "10k" V 2036 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2190 2590 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 2150 2600 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 2150 2600 50  0001 C CNN "MFG Part No."
	1    2150 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R50
U 1 1 61402116
P 1600 3000
F 0 "R50" V 1395 3000 50  0000 C CNN
F 1 "30.1k" V 1486 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1640 2990 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 1600 3000 50  0001 C CNN
F 4 "RMCF0805FT30K1" H 1600 3000 50  0001 C CNN "MFG Part No."
	1    1600 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R49
U 1 1 61402FDC
P 3550 2950
F 0 "R49" V 3345 2950 50  0000 C CNN
F 1 "47k" V 3436 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3590 2940 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 3550 2950 50  0001 C CNN
F 4 "RMCF0805FT47K0" H 3550 2950 50  0001 C CNN "MFG Part No."
	1    3550 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R53
U 1 1 61403452
P 3150 3550
F 0 "R53" H 3082 3504 50  0000 R CNN
F 1 "22k" H 3082 3595 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3190 3540 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 3150 3550 50  0001 C CNN
F 4 "RMCF0805FT22K0" H 3150 3550 50  0001 C CNN "MFG Part No."
	1    3150 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R40
U 1 1 614039E1
P 7300 1550
F 0 "R40" V 7095 1550 50  0000 C CNN
F 1 "10k" V 7186 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7340 1540 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 7300 1550 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 7300 1550 50  0001 C CNN "MFG Part No."
	1    7300 1550
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R44
U 1 1 61404068
P 7850 1950
F 0 "R44" V 7645 1950 50  0000 C CNN
F 1 "30.1k" V 7736 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7890 1940 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 7850 1950 50  0001 C CNN
F 4 "RMCF0805FT30K1" H 7850 1950 50  0001 C CNN "MFG Part No."
	1    7850 1950
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R42
U 1 1 61404413
P 5900 1900
F 0 "R42" V 5695 1900 50  0000 C CNN
F 1 "47k" V 5786 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5940 1890 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 5900 1900 50  0001 C CNN
F 4 "RMCF0805FT47K0" H 5900 1900 50  0001 C CNN "MFG Part No."
	1    5900 1900
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R46
U 1 1 614049A2
P 6300 2500
F 0 "R46" H 6232 2454 50  0000 R CNN
F 1 "22k" H 6232 2545 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6340 2490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6300 2500 50  0001 C CNN
F 4 "RMCF0805FT22K0" H 6300 2500 50  0001 C CNN "MFG Part No."
	1    6300 2500
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R58
U 1 1 61404F3E
P 6300 4200
F 0 "R58" H 6232 4154 50  0000 R CNN
F 1 "22k" H 6232 4245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6340 4190 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 6300 4200 50  0001 C CNN
F 4 "RMCF0805FT22K0" H 6300 4200 50  0001 C CNN "MFG Part No."
	1    6300 4200
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R54
U 1 1 614054EE
P 5900 3600
F 0 "R54" V 5695 3600 50  0000 C CNN
F 1 "47k" V 5786 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5940 3590 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 5900 3600 50  0001 C CNN
F 4 "RMCF0805FT47K0" H 5900 3600 50  0001 C CNN "MFG Part No."
	1    5900 3600
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R52
U 1 1 61405908
P 7300 3250
F 0 "R52" V 7095 3250 50  0000 C CNN
F 1 "10k" V 7186 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7340 3240 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 7300 3250 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 7300 3250 50  0001 C CNN "MFG Part No."
	1    7300 3250
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R56
U 1 1 61405C25
P 7850 3650
F 0 "R56" V 7645 3650 50  0000 C CNN
F 1 "30.1k" V 7736 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7890 3640 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 7850 3650 50  0001 C CNN
F 4 "RMCF0805FT30K1" H 7850 3650 50  0001 C CNN "MFG Part No."
	1    7850 3650
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R39
U 1 1 61489EDD
P 4100 1500
F 0 "R39" V 3895 1500 50  0000 C CNN
F 1 "10k" V 3986 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4140 1490 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 4100 1500 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 4100 1500 50  0001 C CNN "MFG Part No."
	1    4100 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R45
U 1 1 6148A62A
P 5350 2150
F 0 "R45" V 5145 2150 50  0000 C CNN
F 1 "10k" V 5236 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5390 2140 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 5350 2150 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 5350 2150 50  0001 C CNN "MFG Part No."
	1    5350 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R51
U 1 1 6149A13E
P 4100 3200
F 0 "R51" V 3895 3200 50  0000 C CNN
F 1 "10k" V 3986 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4140 3190 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 4100 3200 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 4100 3200 50  0001 C CNN "MFG Part No."
	1    4100 3200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R57
U 1 1 6149A7D4
P 5350 3850
F 0 "R57" V 5145 3850 50  0000 C CNN
F 1 "10k" V 5236 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5390 3840 50  0001 C CNN
F 3 "https://www.seielect.com/catalog/sei-rmcf_rmcp.pdf" H 5350 3850 50  0001 C CNN
F 4 "RMCF0805FT10K0" H 5350 3850 50  0001 C CNN "MFG Part No."
	1    5350 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3850 5500 3850
Connection ~ 5600 3850
Wire Wire Line
	3850 3200 3950 3200
Connection ~ 3850 3200
Wire Wire Line
	3950 1500 3850 1500
Connection ~ 3850 1500
Wire Wire Line
	5500 2150 5600 2150
Connection ~ 5600 2150
Entry Wire Line
	4600 1500 4700 1600
Entry Wire Line
	4800 2150 4700 2250
Entry Wire Line
	4600 3200 4700 3300
Entry Wire Line
	4700 3950 4800 3850
Entry Wire Line
	4700 5000 4800 5100
Wire Notes Line
	1000 550  1000 2250
Wire Notes Line
	1000 2250 4350 2250
Wire Notes Line
	4350 2250 4350 550 
Wire Notes Line
	4350 550  1000 550 
Text Notes 4400 950  0    50   ~ 0
Individual channel level\nEach channel out goes through an inverting amp with a gain of -0.333\nbefore being sent out to the slide pots on the jackboard, the large resistor\nand following non-inverting amp (with a gain of approx +3) are to \nimpove the offness of the slide pots, since they're low-cost non-inifinity-off components
Wire Notes Line
	2500 1350 3100 1350
Wire Notes Line
	3100 1350 3100 1650
Wire Notes Line
	3100 1650 2500 1650
Wire Notes Line
	2500 1650 2500 1350
Text Notes 2150 1750 0    50   ~ 0
Top / wiper of slide pot
Connection ~ 1850 3000
Connection ~ 2450 3100
Entry Wire Line
	4800 5400 4700 5300
Entry Wire Line
	4800 5250 4700 5150
Entry Wire Line
	4800 5550 4700 5450
Text Label 4600 1500 2    50   ~ 0
tri-ch
Text Label 4800 3850 0    50   ~ 0
pulse-ch
Text Label 4600 3200 2    50   ~ 0
square-ch
Text Label 4800 2150 0    50   ~ 0
notch-ch
Wire Wire Line
	4800 3850 5200 3850
Wire Wire Line
	4800 2150 5200 2150
Wire Wire Line
	4250 1500 4600 1500
Wire Wire Line
	4250 3200 4600 3200
Text Label 4800 5100 0    50   ~ 0
tri-ch
Text Label 4800 5250 0    50   ~ 0
square-ch
Text Label 4800 5400 0    50   ~ 0
pulse-ch
Text Label 4800 5550 0    50   ~ 0
notch-ch
Wire Wire Line
	4800 5100 5200 5100
Wire Wire Line
	5200 5100 5200 5250
Wire Wire Line
	4800 5250 5200 5250
Connection ~ 5200 5250
Wire Wire Line
	5200 5250 5200 5400
Wire Wire Line
	4800 5400 5200 5400
Connection ~ 5200 5400
Wire Wire Line
	5200 5400 5200 5550
Wire Wire Line
	4800 5550 5200 5550
Connection ~ 5200 5550
Wire Bus Line
	4700 1600 4700 5450
$EndSCHEMATC
