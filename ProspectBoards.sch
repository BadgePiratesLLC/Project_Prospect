EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Prospect Boards"
Date "2021-10-02"
Rev "1.1"
Comp "BadgePirates"
Comment1 "ESP32-S2 WROVER"
Comment2 "Li-Ion Charging"
Comment3 "USB to Serial Connector"
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-S2-WROVER U2
U 1 1 614897E3
P 6000 2900
F 0 "U2" H 6350 4150 50  0000 C CNN
F 1 "ESP32-S2-WROVER" H 6400 4050 50  0000 C CNN
F 2 "BadgePirate:ESP32-S2-WROVER" H 6750 1750 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-s2-wroom_esp32-s2-wroom-i_datasheet_en.pdf" H 5700 2100 50  0001 C CNN
	1    6000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 61490D63
P 650 2000
F 0 "BT1" H 758 2046 50  0000 L CNN
F 1 "Li-Ion" H 758 1955 50  0000 L CNN
F 2 "BadgePirate:Keystone-1042-0" V 650 2060 50  0001 C CNN
F 3 "~" V 650 2060 50  0001 C CNN
	1    650  2000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 61499E8C
P 1450 1000
F 0 "D2" H 1443 1217 50  0000 C CNN
F 1 "Charging LED" H 1443 1126 50  0000 C CNN
F 2 "BadgePirate:R_1206_3216Metric" H 1450 1000 50  0001 C CNN
F 3 "~" H 1450 1000 50  0001 C CNN
	1    1450 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 6149A82D
P 1700 2950
F 0 "D1" H 1693 2695 50  0000 C CNN
F 1 "Pwr" H 1693 2786 50  0000 C BNN
F 2 "BadgePirate:R_1206_3216Metric" H 1700 2950 50  0001 C CNN
F 3 "~" H 1700 2950 50  0001 C CNN
	1    1700 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 614A1EE0
P 950 5900
F 0 "D3" H 943 6117 50  0000 C CNN
F 1 "LED" H 943 6026 50  0000 C CNN
F 2 "BadgePirate:LED_Osram_Lx_P47F_D2mm_ReverseMount_MaskNoHole" H 950 5900 50  0001 C CNN
F 3 "~" H 950 5900 50  0001 C CNN
	1    950  5900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 614A2D93
P 1650 5900
F 0 "D4" H 1643 6117 50  0000 C CNN
F 1 "LED" H 1643 6026 50  0000 C CNN
F 2 "BadgePirate:LED_Osram_Lx_P47F_D2mm_ReverseMount_MaskNoHole" H 1650 5900 50  0001 C CNN
F 3 "~" H 1650 5900 50  0001 C CNN
	1    1650 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 614A30D9
P 2350 5900
F 0 "D5" H 2343 6117 50  0000 C CNN
F 1 "LED" H 2343 6026 50  0000 C CNN
F 2 "BadgePirate:LED_Osram_Lx_P47F_D2mm_ReverseMount_MaskNoHole" H 2350 5900 50  0001 C CNN
F 3 "~" H 2350 5900 50  0001 C CNN
	1    2350 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D6
U 1 1 614A349D
P 3050 5900
F 0 "D6" H 3043 6117 50  0000 C CNN
F 1 "LED" H 3043 6026 50  0000 C CNN
F 2 "BadgePirate:LED_Osram_Lx_P47F_D2mm_ReverseMount_MaskNoHole" H 3050 5900 50  0001 C CNN
F 3 "~" H 3050 5900 50  0001 C CNN
	1    3050 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 614A3D64
P 6000 4000
F 0 "#PWR0101" H 6000 3750 50  0001 C CNN
F 1 "GND" H 6005 3827 50  0000 C CNN
F 2 "" H 6000 4000 50  0001 C CNN
F 3 "" H 6000 4000 50  0001 C CNN
	1    6000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 614A62BE
P 5600 1100
F 0 "C1" H 5692 1146 50  0000 L CNN
F 1 "0.1uF" H 5692 1055 50  0000 L CNN
F 2 "BadgePirate:C_0805_2012Metric" H 5600 1100 50  0001 C CNN
F 3 "~" H 5600 1100 50  0001 C CNN
	1    5600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 614A6CDA
P 5000 1100
F 0 "C2" H 5092 1146 50  0000 L CNN
F 1 "22uF" H 5092 1055 50  0000 L CNN
F 2 "BadgePirate:C_0805_2012Metric" H 5000 1100 50  0001 C CNN
F 3 "~" H 5000 1100 50  0001 C CNN
	1    5000 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 614A7FBF
P 650 2100
F 0 "#PWR0104" H 650 1850 50  0001 C CNN
F 1 "GND" H 655 1927 50  0000 C CNN
F 2 "" H 650 2100 50  0001 C CNN
F 3 "" H 650 2100 50  0001 C CNN
	1    650  2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 614A83F4
P 8800 1000
F 0 "#PWR0105" H 8800 750 50  0001 C CNN
F 1 "GND" H 8805 827 50  0000 C CNN
F 2 "" H 8800 1000 50  0001 C CNN
F 3 "" H 8800 1000 50  0001 C CNN
	1    8800 1000
	0    1    1    0   
$EndComp
Text Notes 1800 2450 0    79   ~ 0
Charge Curcuit\n
Text GLabel 6600 2100 2    50   Input ~ 0
USB_TX_ESP_RX
Text GLabel 6600 2200 2    50   Input ~ 0
USB_RX_ESP_TX
Text Notes 8150 4400 0    79   ~ 0
Program
Wire Notes Line
	2800 500  2800 1550
Wire Notes Line
	2800 1600 2800 3350
Text Notes 8100 1850 0    79   ~ 0
USB Mini Connector
$Comp
L power:GND #PWR0108
U 1 1 614D67B1
P 5000 1200
F 0 "#PWR0108" H 5000 950 50  0001 C CNN
F 1 "GND" H 5005 1027 50  0000 C CNN
F 2 "" H 5000 1200 50  0001 C CNN
F 3 "" H 5000 1200 50  0001 C CNN
	1    5000 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 614D7423
P 5600 1200
F 0 "#PWR0109" H 5600 950 50  0001 C CNN
F 1 "GND" H 5605 1027 50  0000 C CNN
F 2 "" H 5600 1200 50  0001 C CNN
F 3 "" H 5600 1200 50  0001 C CNN
	1    5600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1000 5600 1000
Wire Wire Line
	6000 1000 6000 1700
Connection ~ 5600 1000
Wire Wire Line
	5600 1000 6000 1000
Wire Wire Line
	5000 1000 5000 800 
Connection ~ 5000 1000
$Comp
L Device:R_Small_US R5
U 1 1 614A5061
P 5250 3900
F 0 "R5" V 5045 3900 50  0000 C CNN
F 1 "10k" V 5136 3900 50  0000 C CNN
F 2 "BadgePirate:R_1206_3216Metric" H 5250 3900 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3800 5250 3800
Wire Wire Line
	5250 4000 5250 4200
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 614DFD7A
P 1950 3900
F 0 "J2" H 1978 3876 50  0000 L CNN
F 1 "JTAG" H 1978 3785 50  0000 L CNN
F 2 "Digi:PinHeader_1x4_P2.54mm_Drill1.02mm" H 1950 3900 50  0001 C CNN
F 3 "~" H 1950 3900 50  0001 C CNN
	1    1950 3900
	1    0    0    -1  
$EndComp
Text GLabel 1000 3800 0    50   Input ~ 0
IO42
Text GLabel 1000 3900 0    50   Input ~ 0
IO41
Text GLabel 1000 4000 0    50   Input ~ 0
IO40
Text GLabel 1000 4100 0    50   Input ~ 0
IO39
Wire Wire Line
	1000 3800 1750 3800
Text Label 1300 3800 0    50   ~ 0
TMS
Wire Wire Line
	1000 3900 1750 3900
Wire Wire Line
	1000 4000 1750 4000
Wire Wire Line
	1000 4100 1750 4100
Text Label 1300 3900 0    50   ~ 0
TDI
Text Label 1300 4000 0    50   ~ 0
TDO
Text Label 1300 4100 0    50   ~ 0
TCK
Text Notes 2500 4300 0    79   ~ 0
JTAG
Wire Notes Line
	500  3400 2800 3400
Wire Notes Line
	2800 4350 500  4350
Text GLabel 6600 2300 2    50   Input ~ 0
IO42
Text GLabel 6600 2400 2    50   Input ~ 0
IO41
Text GLabel 6600 2500 2    50   Input ~ 0
IO40
Text GLabel 6600 2600 2    50   Input ~ 0
IO39
$Comp
L power:GND #PWR0113
U 1 1 614FFF6E
P 1850 2950
F 0 "#PWR0113" H 1850 2700 50  0001 C CNN
F 1 "GND" V 1855 2822 50  0000 R CNN
F 2 "" H 1850 2950 50  0001 C CNN
F 3 "" H 1850 2950 50  0001 C CNN
	1    1850 2950
	0    -1   -1   0   
$EndComp
Wire Notes Line
	500  5550 4750 5550
Wire Notes Line
	4750 5550 4750 7750
Wire Notes Line
	4750 7750 500  7750
Wire Notes Line
	500  7750 500  5550
Text Notes 4000 7700 0    50   ~ 0
Buttons and LEDs
$Comp
L Device:R_Small_US R1
U 1 1 61525792
P 1450 2950
F 0 "R1" H 1518 2996 50  0000 L CNN
F 1 "R" H 1518 2905 50  0000 L CNN
F 2 "BadgePirate:R_1206_3216Metric" H 1450 2950 50  0001 C CNN
F 3 "~" H 1450 2950 50  0001 C CNN
	1    1450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 61495BF1
P 2300 950
F 0 "C3" H 2392 996 50  0000 L CNN
F 1 "1uF" H 2392 905 50  0000 L CNN
F 2 "BadgePirate:C_0805_2012Metric" H 2300 950 50  0001 C CNN
F 3 "~" H 2300 950 50  0001 C CNN
	1    2300 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 614993DE
P 2300 1100
F 0 "#PWR0102" H 2300 850 50  0001 C CNN
F 1 "GND" H 2305 927 50  0000 C CNN
F 2 "" H 2300 1100 50  0001 C CNN
F 3 "" H 2300 1100 50  0001 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1050 2300 1100
$Comp
L Switch:SW_SPDT SW6
U 1 1 614A1475
P 850 1350
F 0 "SW6" H 850 1635 50  0000 C CNN
F 1 "SW_SPDT" H 850 1544 50  0000 C CNN
F 2 "BadgePirate:SW_SPDT_PCM12" H 850 1350 50  0001 C CNN
F 3 "~" H 850 1350 50  0001 C CNN
	1    850  1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	650  1450 650  1700
$Comp
L power:VBUS #PWR0103
U 1 1 614AC5B1
P 1950 850
F 0 "#PWR0103" H 1950 700 50  0001 C CNN
F 1 "VBUS" V 1965 978 50  0000 L CNN
F 2 "" H 1950 850 50  0001 C CNN
F 3 "" H 1950 850 50  0001 C CNN
	1    1950 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0106
U 1 1 614AD2AD
P 9400 1450
F 0 "#PWR0106" H 9400 1300 50  0001 C CNN
F 1 "VBUS" H 9415 1623 50  0000 C CNN
F 2 "" H 9400 1450 50  0001 C CNN
F 3 "" H 9400 1450 50  0001 C CNN
	1    9400 1450
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0107
U 1 1 614AF067
P 1050 1350
F 0 "#PWR0107" H 1050 1200 50  0001 C CNN
F 1 "VCC" V 1065 1478 50  0000 L CNN
F 2 "" H 1050 1350 50  0001 C CNN
F 3 "" H 1050 1350 50  0001 C CNN
	1    1050 1350
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR0110
U 1 1 614B53FA
P 1350 2950
F 0 "#PWR0110" H 1350 2800 50  0001 C CNN
F 1 "VCC" H 1365 3123 50  0000 C CNN
F 2 "" H 1350 2950 50  0001 C CNN
F 3 "" H 1350 2950 50  0001 C CNN
	1    1350 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0111
U 1 1 614B8B89
P 5000 800
F 0 "#PWR0111" H 5000 650 50  0001 C CNN
F 1 "VCC" H 5015 973 50  0000 C CNN
F 2 "" H 5000 800 50  0001 C CNN
F 3 "" H 5000 800 50  0001 C CNN
	1    5000 800 
	1    0    0    -1  
$EndComp
$Comp
L Battery_Management:LTC4054ES5-4.2 U1
U 1 1 614BB9EB
P 1950 1600
F 0 "U1" H 2394 1596 50  0000 L CNN
F 1 "LTC4054" H 2394 1505 50  0000 L CNN
F 2 "BadgePirate:LTC4054" H 1950 1100 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/405442xf.pdf" H 1950 1500 50  0001 C CNN
	1    1950 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 614C21CA
P 1950 2050
F 0 "#PWR0112" H 1950 1800 50  0001 C CNN
F 1 "GND" H 1955 1877 50  0000 C CNN
F 2 "" H 1950 2050 50  0001 C CNN
F 3 "" H 1950 2050 50  0001 C CNN
	1    1950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1600 2350 2250
Wire Wire Line
	1200 2250 1200 1700
Wire Wire Line
	1200 1700 650  1700
Connection ~ 650  1700
Wire Wire Line
	650  1700 650  1800
$Comp
L Device:R_Small_US R3
U 1 1 614D4007
P 1450 1300
F 0 "R3" H 1518 1346 50  0000 L CNN
F 1 "330" H 1518 1255 50  0000 L CNN
F 2 "BadgePirate:R_1206_3216Metric" H 1450 1300 50  0001 C CNN
F 3 "~" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 850  1950 850 
Wire Wire Line
	1950 850  1950 1300
Wire Wire Line
	1450 1150 1450 1200
Wire Wire Line
	1450 1400 1450 1600
Wire Wire Line
	1450 1600 1550 1600
$Comp
L Device:R_Small_US R2
U 1 1 614DA4F0
P 1400 1950
F 0 "R2" H 1468 1996 50  0000 L CNN
F 1 "2k" H 1468 1905 50  0000 L CNN
F 2 "BadgePirate:R_1206_3216Metric" H 1400 1950 50  0001 C CNN
F 3 "~" H 1400 1950 50  0001 C CNN
	1    1400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1700 1400 1700
Wire Wire Line
	1400 1700 1400 1850
Wire Wire Line
	1950 2000 1950 2050
Wire Wire Line
	1400 2050 1950 2050
Connection ~ 1950 2050
$Comp
L power:VCC #PWR0114
U 1 1 614E0E6A
P 5250 4200
F 0 "#PWR0114" H 5250 4050 50  0001 C CNN
F 1 "VCC" V 5265 4327 50  0000 L CNN
F 2 "" H 5250 4200 50  0001 C CNN
F 3 "" H 5250 4200 50  0001 C CNN
	1    5250 4200
	-1   0    0    1   
$EndComp
Connection ~ 1950 850 
Wire Wire Line
	1950 850  2300 850 
$Comp
L Device:R_Small_US R4
U 1 1 61502717
P 1600 4900
F 0 "R4" H 1668 4946 50  0000 L CNN
F 1 "1k" H 1668 4855 50  0000 L CNN
F 2 "BadgePirate:R_1206_3216Metric" H 1600 4900 50  0001 C CNN
F 3 "~" H 1600 4900 50  0001 C CNN
	1    1600 4900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0119
U 1 1 615039AC
P 1600 4800
F 0 "#PWR0119" H 1600 4650 50  0001 C CNN
F 1 "VCC" H 1615 4973 50  0000 C CNN
F 2 "" H 1600 4800 50  0001 C CNN
F 3 "" H 1600 4800 50  0001 C CNN
	1    1600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5000 1600 5000
Connection ~ 1600 5000
Text GLabel 800  7300 3    50   Input ~ 0
IO06
Text GLabel 1550 7300 3    50   Input ~ 0
IO07
Text GLabel 2250 7300 3    50   Input ~ 0
IO03
Text GLabel 2900 7300 3    50   Input ~ 0
IO04
Text GLabel 3500 7300 3    50   Input ~ 0
IO05
$Comp
L power:GND #PWR0121
U 1 1 61497851
P 1900 6250
F 0 "#PWR0121" H 1900 6000 50  0001 C CNN
F 1 "GND" H 1905 6077 50  0000 C CNN
F 2 "" H 1900 6250 50  0001 C CNN
F 3 "" H 1900 6250 50  0001 C CNN
	1    1900 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  5900 800  6250
Wire Wire Line
	800  6250 1500 6250
Wire Wire Line
	2900 6250 2900 5900
Connection ~ 1900 6250
Wire Wire Line
	1900 6250 2200 6250
Wire Wire Line
	2200 5900 2200 6250
Connection ~ 2200 6250
Wire Wire Line
	2200 6250 2900 6250
Wire Wire Line
	1500 5900 1500 6250
Connection ~ 1500 6250
Wire Wire Line
	1500 6250 1900 6250
Text GLabel 1100 5900 2    50   Input ~ 0
IO10
Text GLabel 1800 5900 2    50   Input ~ 0
IO11
Text GLabel 2500 5900 2    50   Input ~ 0
IO12
Text GLabel 3200 5900 2    50   Input ~ 0
IO13
NoConn ~ 9000 1300
NoConn ~ 8800 900 
Text GLabel 5400 2100 0    50   Input ~ 0
IO01
Text GLabel 5400 2200 0    50   Input ~ 0
IO02
Text GLabel 5400 2300 0    50   Input ~ 0
IO03
Text GLabel 5400 2400 0    50   Input ~ 0
IO04
Text GLabel 5400 2500 0    50   Input ~ 0
IO05
Text GLabel 5400 2600 0    50   Input ~ 0
IO06
Text GLabel 5400 2700 0    50   Input ~ 0
IO07
Text GLabel 5400 2800 0    50   Input ~ 0
IO08
Text GLabel 5400 2900 0    50   Input ~ 0
IO09
Text GLabel 5400 3000 0    50   Input ~ 0
IO10
Text GLabel 5400 3200 0    50   Input ~ 0
IO12
Text GLabel 5400 3100 0    50   Input ~ 0
IO11
Text GLabel 5400 3300 0    50   Input ~ 0
IO13
Text GLabel 5400 3400 0    50   Input ~ 0
IO14
$Comp
L Interface_USB:CH330N U3
U 1 1 615912EF
P 9450 2550
F 0 "U3" H 9150 2100 50  0000 C CNN
F 1 "CH330N" H 9150 2200 50  0000 C CNN
F 2 "BadgePirate:SOIC-8-1EP_W3.9mm" H 9300 3300 50  0001 C CNN
F 3 "http://www.wch.cn/downloads/file/240.html" H 9350 2750 50  0001 C CNN
	1    9450 2550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:TLV1117-33 U4
U 1 1 61591FD7
P 9450 3900
F 0 "U4" H 9450 4142 50  0000 C CNN
F 1 "TLV1117-33" H 9450 4051 50  0000 C CNN
F 2 "BadgePirate:SOT-223" H 9450 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv1117.pdf" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
Text GLabel 9200 1450 3    50   Input ~ 0
D+
Text GLabel 9100 1450 3    50   Input ~ 0
D-
$Comp
L Connector:USB_B_Mini J3
U 1 1 615A9312
P 9200 1000
F 0 "J3" V 9211 1330 50  0000 L CNN
F 1 "USB_B_Mini" V 9302 1330 50  0000 L CNN
F 2 "BadgePirate:USB_Micro-B_Wuerth_629105150521" H 9350 950 50  0001 C CNN
F 3 "~" H 9350 950 50  0001 C CNN
	1    9200 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1300 9200 1450
Wire Wire Line
	9100 1300 9100 1450
Wire Wire Line
	9400 1300 9400 1450
Text GLabel 9050 2650 0    50   Input ~ 0
D+
Text GLabel 9050 2750 0    50   Input ~ 0
D-
$Comp
L power:GND #PWR0115
U 1 1 615A26BF
P 9450 2950
F 0 "#PWR0115" H 9450 2700 50  0001 C CNN
F 1 "GND" H 9455 2777 50  0000 C CNN
F 2 "" H 9450 2950 50  0001 C CNN
F 3 "" H 9450 2950 50  0001 C CNN
	1    9450 2950
	1    0    0    -1  
$EndComp
NoConn ~ 6600 3500
NoConn ~ 6600 3600
Text GLabel 9850 2450 2    50   Input ~ 0
USB_TX_ESP_RX
Text GLabel 9850 2550 2    50   Input ~ 0
USB_RX_ESP_TX
$Comp
L power:GND #PWR0116
U 1 1 615A651C
P 9450 4200
F 0 "#PWR0116" H 9450 3950 50  0001 C CNN
F 1 "GND" H 9455 4027 50  0000 C CNN
F 2 "" H 9450 4200 50  0001 C CNN
F 3 "" H 9450 4200 50  0001 C CNN
	1    9450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2450 8650 2450
Wire Wire Line
	8650 2450 8650 3450
$Comp
L Device:C_Small C5
U 1 1 615A82C0
P 8550 2450
F 0 "C5" V 8298 2450 50  0000 C CNN
F 1 ".1uF" V 8389 2450 50  0000 C CNN
F 2 "BadgePirate:C_0805_2012Metric" H 8550 2450 50  0001 C CNN
F 3 "~" H 8550 2450 50  0001 C CNN
	1    8550 2450
	0    1    1    0   
$EndComp
Connection ~ 8650 2450
$Comp
L power:GND #PWR0117
U 1 1 615A9311
P 8450 2450
F 0 "#PWR0117" H 8450 2200 50  0001 C CNN
F 1 "GND" V 8455 2322 50  0000 R CNN
F 2 "" H 8450 2450 50  0001 C CNN
F 3 "" H 8450 2450 50  0001 C CNN
	1    8450 2450
	0    1    1    0   
$EndComp
NoConn ~ 9850 2750
$Comp
L power:VCC #PWR0120
U 1 1 615AF2C2
P 9850 3900
F 0 "#PWR0120" H 9850 3750 50  0001 C CNN
F 1 "VCC" V 9865 4028 50  0000 L CNN
F 2 "" H 9850 3900 50  0001 C CNN
F 3 "" H 9850 3900 50  0001 C CNN
	1    9850 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 615B2AE5
P 1050 5000
F 0 "#PWR0122" H 1050 4750 50  0001 C CNN
F 1 "GND" V 1055 4872 50  0000 R CNN
F 2 "" H 1050 5000 50  0001 C CNN
F 3 "" H 1050 5000 50  0001 C CNN
	1    1050 5000
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push_Dual_x2 SW_Reset1
U 1 1 615B1B47
P 1250 5000
F 0 "SW_Reset1" H 1250 5285 50  0000 C CNN
F 1 "Reset_Btn" H 1250 5194 50  0000 C CNN
F 2 "BadgePirate:Switch_Tactile_SMD_B3U-1000P-BPVersion" H 1250 5200 50  0001 C CNN
F 3 "~" H 1250 5200 50  0001 C CNN
	1    1250 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5000 2250 5000
Wire Wire Line
	8650 3450 9850 3450
Wire Wire Line
	9850 3450 9850 3900
Wire Wire Line
	9750 3900 9850 3900
Connection ~ 9850 3900
$Comp
L power:VCC #PWR0118
U 1 1 615F0A46
P 9450 2250
F 0 "#PWR0118" H 9450 2100 50  0001 C CNN
F 1 "VCC" H 9450 2400 50  0000 C CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
Wire Notes Line
	10500 4450 8050 4450
Wire Notes Line
	10500 500  10500 4450
Wire Notes Line
	8050 500  10500 500 
Wire Notes Line
	8050 1850 10500 1850
Wire Notes Line
	2800 2500 500  2500
Text Notes 2100 3300 0    79   ~ 0
Power LED
Text GLabel 2250 5000 2    50   Input ~ 0
RESET
Text GLabel 5400 1900 0    50   Input ~ 0
RESET
Text Notes 1950 5500 0    79   ~ 0
Reset Button\n
Wire Notes Line
	2800 3400 2800 5550
Wire Wire Line
	2350 2250 1200 2250
$Comp
L Connector:TestPoint TP1
U 1 1 616A16BF
P 800 7300
F 0 "TP1" H 858 7418 50  0000 L CNN
F 1 "CT_Center" H 858 7327 50  0000 L CNN
F 2 "BadgePirate:TouchPad_10x10mm" H 1000 7300 50  0001 C CNN
F 3 "~" H 1000 7300 50  0001 C CNN
	1    800  7300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 616AAF73
P 1550 7300
F 0 "TP2" H 1608 7418 50  0000 L CNN
F 1 "CT_Up" H 1608 7327 50  0000 L CNN
F 2 "BadgePirate:TouchPad_10x10mm" H 1750 7300 50  0001 C CNN
F 3 "~" H 1750 7300 50  0001 C CNN
	1    1550 7300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 616AB991
P 2250 7300
F 0 "TP3" H 2308 7418 50  0000 L CNN
F 1 "CT_Down" H 2308 7327 50  0000 L CNN
F 2 "BadgePirate:TouchPad_10x10mm" H 2450 7300 50  0001 C CNN
F 3 "~" H 2450 7300 50  0001 C CNN
	1    2250 7300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 616AC50F
P 2900 7300
F 0 "TP4" H 2958 7418 50  0000 L CNN
F 1 "CT_Left" H 2958 7327 50  0000 L CNN
F 2 "BadgePirate:TouchPad_10x10mm" H 3100 7300 50  0001 C CNN
F 3 "~" H 3100 7300 50  0001 C CNN
	1    2900 7300
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 616AD2D5
P 3500 7300
F 0 "TP5" H 3558 7418 50  0000 L CNN
F 1 "CT_Right" H 3558 7327 50  0000 L CNN
F 2 "BadgePirate:TouchPad_10x10mm" H 3700 7300 50  0001 C CNN
F 3 "~" H 3700 7300 50  0001 C CNN
	1    3500 7300
	1    0    0    -1  
$EndComp
$Comp
L ProspectBoards-rescue:Badgelife_sao_connector_v169bis-ShittyAddOn X1
U 1 1 616E1F0A
P 8550 5500
F 0 "X1" H 8878 5546 50  0000 L CNN
F 1 "Badgelife_sao_connector_v169bis" H 8878 5455 50  0000 L CNN
F 2 "BadgePirate:Badgelife-SAOv169-BADGE-2x3_Back" H 8550 5700 50  0001 C CNN
F 3 "" H 8550 5700 50  0001 C CNN
	1    8550 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 616E2C5C
P 8350 6050
F 0 "#PWR0123" H 8350 5800 50  0001 C CNN
F 1 "GND" H 8355 5877 50  0000 C CNN
F 2 "" H 8350 6050 50  0001 C CNN
F 3 "" H 8350 6050 50  0001 C CNN
	1    8350 6050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0124
U 1 1 616E3A54
P 8350 4950
F 0 "#PWR0124" H 8350 4800 50  0001 C CNN
F 1 "VCC" H 8365 5123 50  0000 C CNN
F 2 "" H 8350 4950 50  0001 C CNN
F 3 "" H 8350 4950 50  0001 C CNN
	1    8350 4950
	1    0    0    -1  
$EndComp
Text GLabel 8750 4950 1    79   Input Italic 0
IO01
Text GLabel 8750 6050 3    79   Input Italic 0
IO02
Text GLabel 8550 4950 1    79   Input Italic 0
IO08
Text GLabel 8550 6050 3    79   Input Italic 0
IO09
Wire Notes Line
	10550 6500 8050 6500
Wire Notes Line
	8050 500  8050 6500
Text Notes 8050 6500 0    79   Italic 0
SAO
$Comp
L Device:C_Small C4
U 1 1 615B5F31
P 9150 4000
F 0 "C4" V 8921 4000 50  0000 C CNN
F 1 ".1uF" V 9012 4000 50  0000 C CNN
F 2 "BadgePirate:C_0805_2012Metric" H 9150 4000 50  0001 C CNN
F 3 "~" H 9150 4000 50  0001 C CNN
	1    9150 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 615BD53B
P 9150 4100
F 0 "#PWR0125" H 9150 3850 50  0001 C CNN
F 1 "GND" H 9155 3927 50  0000 C CNN
F 2 "" H 9150 4100 50  0001 C CNN
F 3 "" H 9150 4100 50  0001 C CNN
	1    9150 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 61899D35
P 3550 1200
F 0 "J1" H 3578 1176 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3578 1085 50  0000 L CNN
F 2 "BadgePirate:PinHeader_1x02_P2.54mm_Vertical" H 3550 1200 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
Text GLabel 5400 2000 0    50   Input ~ 0
Boot
Text GLabel 3350 1300 0    50   Input ~ 0
Boot
$Comp
L power:GND #PWR0126
U 1 1 6189D949
P 3350 1200
F 0 "#PWR0126" H 3350 950 50  0001 C CNN
F 1 "GND" V 3355 1072 50  0000 R CNN
F 2 "" H 3350 1200 50  0001 C CNN
F 3 "" H 3350 1200 50  0001 C CNN
	1    3350 1200
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 61A2D453
P 8300 1550
F 0 "J4" H 8192 1225 50  0000 C CNN
F 1 "Conn_01x02_Female" H 8192 1316 50  0000 C CNN
F 2 "BadgePiratesFootprints:PinHeader_1x02_P2.54mm_Vertical" H 8300 1550 50  0001 C CNN
F 3 "~" H 8300 1550 50  0001 C CNN
	1    8300 1550
	-1   0    0    1   
$EndComp
Text GLabel 8500 1450 2    50   Input ~ 0
D+
Text GLabel 8500 1550 2    50   Input ~ 0
D-
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 61A342B1
P 10250 1250
F 0 "J5" H 10278 1226 50  0000 L CNN
F 1 "Conn_01x02_Female" H 10278 1135 50  0000 L CNN
F 2 "BadgePiratesFootprints:PinHeader_1x02_P2.54mm_Vertical" H 10250 1250 50  0001 C CNN
F 3 "~" H 10250 1250 50  0001 C CNN
	1    10250 1250
	0    -1   -1   0   
$EndComp
$Comp
L power:VBUS #PWR0127
U 1 1 61A37937
P 10250 1450
F 0 "#PWR0127" H 10250 1300 50  0001 C CNN
F 1 "VBUS" H 10265 1623 50  0000 C CNN
F 2 "" H 10250 1450 50  0001 C CNN
F 3 "" H 10250 1450 50  0001 C CNN
	1    10250 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 61A3893D
P 10350 1450
F 0 "#PWR0128" H 10350 1200 50  0001 C CNN
F 1 "GND" H 10355 1277 50  0000 C CNN
F 2 "" H 10350 1450 50  0001 C CNN
F 3 "" H 10350 1450 50  0001 C CNN
	1    10350 1450
	1    0    0    -1  
$EndComp
NoConn ~ 650  1250
Connection ~ 9150 3900
NoConn ~ 6600 1900
NoConn ~ 6600 2000
NoConn ~ 6600 2700
NoConn ~ 6600 2800
NoConn ~ 6600 2900
NoConn ~ 6600 3000
NoConn ~ 6600 3100
NoConn ~ 6600 3200
NoConn ~ 6600 3300
NoConn ~ 6600 3400
NoConn ~ 5400 3500
NoConn ~ 5400 3600
NoConn ~ 5400 3700
$Comp
L power:VBUS #PWR0131
U 1 1 61CEA256
P 9150 3900
F 0 "#PWR0131" H 9150 3750 50  0001 C CNN
F 1 "VBUS" V 9165 4028 50  0000 L CNN
F 2 "" H 9150 3900 50  0001 C CNN
F 3 "" H 9150 3900 50  0001 C CNN
	1    9150 3900
	1    0    0    -1  
$EndComp
$Comp
L RGBLED:COM-11821 D7
U 1 1 61D3919C
P 3850 6600
F 0 "D7" H 3850 7165 50  0000 C CNN
F 1 "COM-11821" H 3850 7074 50  0000 C CNN
F 2 "BadgePirate:LED_COM-11821" H 3850 6600 50  0001 L BNN
F 3 "" H 3850 6600 50  0001 L BNN
F 4 "Sparkfun" H 3850 6600 50  0001 L BNN "MANUFACTURER"
F 5 "Manufacturer recommendations" H 3850 6600 50  0001 L BNN "STANDARD"
F 6 "" H 3850 6600 50  0001 L BNN "PARTREV"
F 7 "" H 3850 6600 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
	1    3850 6600
	1    0    0    -1  
$EndComp
Text GLabel 3250 6600 0    50   Input ~ 0
IO14
$Comp
L power:GND #PWR0129
U 1 1 61D3F72B
P 4450 6800
F 0 "#PWR0129" H 4450 6550 50  0001 C CNN
F 1 "GND" V 4455 6672 50  0000 R CNN
F 2 "" H 4450 6800 50  0001 C CNN
F 3 "" H 4450 6800 50  0001 C CNN
	1    4450 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 61D3FB7D
P 4450 6300
F 0 "#PWR0130" H 4450 6150 50  0001 C CNN
F 1 "VCC" H 4465 6473 50  0000 C CNN
F 2 "" H 4450 6300 50  0001 C CNN
F 3 "" H 4450 6300 50  0001 C CNN
	1    4450 6300
	1    0    0    -1  
$EndComp
NoConn ~ 4450 6400
NoConn ~ 4450 6600
NoConn ~ 9050 -2050
Wire Notes Line
	4650 500  4650 1800
Wire Notes Line
	4650 1800 2800 1800
Text Notes 3950 1750 0    79   ~ 0
Boot Mode
$Comp
L Switch:SW_SPST SW1
U 1 1 61CEEAAB
P 3500 900
F 0 "SW1" H 3500 1135 50  0000 C CNN
F 1 "SW_SPST" H 3500 1044 50  0000 C CNN
F 2 "BadgePirate:Switch_Tactile_SMD_B3U-1000P-BPVersion" H 3500 900 50  0001 C CNN
F 3 "~" H 3500 900 50  0001 C CNN
	1    3500 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 61CEF3FA
P 3700 900
F 0 "#PWR0132" H 3700 650 50  0001 C CNN
F 1 "GND" V 3705 772 50  0000 R CNN
F 2 "" H 3700 900 50  0001 C CNN
F 3 "" H 3700 900 50  0001 C CNN
	1    3700 900 
	0    -1   -1   0   
$EndComp
Text GLabel 3300 900  0    50   Input ~ 0
Boot
$EndSCHEMATC
