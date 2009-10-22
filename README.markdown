General purpose Arduino sensor/LCD shield
-----------------------------------------

This is a moderately simple Arduino (Arduino Duemilanove or similar physical board form factor) shield for general
purpose I/O, including an alphanumeric 16 x 2 LCD display, two pushbutton inputs, a DS18B20 1-wire temperature
sensor, a light-dependant resistor, a potentiometer for analog input, and two reed relays to control external
circuits.

This Arduino shield could be used for many different applications, including simply as an education tool for
learning about controlling several different kinds of common I/O hardware devices with Arduino, with or without
the Aiko software framework.

As another example of a potentially very interesting application, a shield like this could be combined with an
Arduino and an XBee RF communication module, and/or an Arduino ethernet shield, to create a distributed mesh
network of control nodes for a automation system, where, for example, the system can be controlled via input menus
on the LCD display at each node, the temperature at each node can be read off, and the light level at each node
can be read off.

With two reed relays on the board, there is plenty of scope for hacking interfaces to control your lighting,
heating or hot water service, to name just a few possible examples, for a home automation kind of application.

Arduino digital interface pins 8-13 are not connected; and can be used by the Arduino ethernet shield (which uses
the SPI interface) "in parallel" with this shield.

Arduino pin assignments:
------------------------
		
		Digital pins:
		UART RXD from XBee module:		0
		UART TXD to XBee module:		1
		LCD shift register strobe:		2
		LCD shift register data:		3
		LCD shift register clock:		4
		DS18B20 sensor 1-Wire data bus:		5
		Reed relay output 1:			6
		Reed relay output 2:			7
		
		Analog pins:
		LDR analog input:			A0
		Pot analog input:			A1
		Multiplexed (analog) pushbutton input:	A2

Parts List / Bill of Materials:
-------------------------------

1 x Arduino module (Arduino Duemilanove or similar)

Resistors (All resistors standard 1/4 W or 1/2 W through-hole 5% or 1%:)

R1, R3, R6, R8, R9, R10, R11:		100 k x 7

R2:					100 R
R4:					390 k
R5:					220 k
R7:					4.7 k
R12:					69R

IC1:                	4094N shift register IC, 16 pin DIP package.
                	eg. Digi-Key 568-4484-5-ND; or Jaycar ZC4094.

IC2:                	LD1117V33C 3.3V low-dropout voltage regulator, TO-220 package.
                	(eg. Digi-Key 497-1492-5-ND)

IC3:                	XBee module (optional) (choose whichever specific kind you like)

IC4:                	Dallas DS18B20 1-Wire temperature sensor, TO-92 package
                	(eg. Digi-Key DS18B20+PAR-ND)

LCD:                	20x4 alphanumeric LCD display module (Cheap one from Hong Kong eBay seller)

LDR1:                	light-dependent resistor, eg. Jaycar RD3480.

LED1, LED2:             2 x 3 mm through-hole LEDs, colour to taste.

D1, D2:                	2 x 1N4004 diodes, eg. Jaycar ZR1004.

C2:                	100 nF monolithic capacitor, 5.08 mm pitch, through hole, eg. Jaycar RC5490.

C1:			10 uF 16 V tantalum electrolytic capacitor, 5.08mm pitch through hole (eg. Jaycar RZ6648)
		
RY1, RY2:               2 x 5V reed relays, DIP package, eg. Jaycar SY4030, or Digi-Key HE100-ND

VR1:			1 x 100k linear pot, eg. Jaycar RP8518
VR2:        	        1 x 100k linear trimpot, eg. Jaycar RT4366

S1, S2, S3, S4:         4 x momentary pushbutton switches, eg. Digi-Key EG1861-ND
                	(Button/cap to suit above Digi-Key part: Digi-Key EG4364-ND)

			1 x 16 pin IC socket (eg. Jaycar PI6456)
                	2 x 14 pin IC socket (eg. Jaycar PI6454)
			2 x 10-pin 2.0 mm female header sockets, eg. Digi-Key S5751-10-ND
			1 x 6-pin 0.1" Molex KK type locking PCB header (eg. Jaycar HM3416)
			2 x 40-pin 0.1" break-away male pin header strip (eg. Jaycar HM3212)
			1 x 40-pin 0.1" female pin header socket strip (eg. Sparkfun PRT-00115)
			1 x Mini breadboard (Sparkfun PRT-07916) (optional)

