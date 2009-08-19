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
		Momentary pushbutton input 1:		A2
		Momentary pushbutton input 2:		A3


Parts List / Bill of Materials:
-------------------------------
		

                1 x XBee module (optional) (choose whichever specific kind you like)

                1 x 20x4 alphanumeric LCD display module

                1 x Dallas DS18B20 1-Wire temperature sensor, TO-92 package
                (eg. Digi-Key DS18B20+PAR-ND)

                1 x LD1117V33C 3.3V low-dropout voltage regulator, TO-220 package.
                (eg. Digi-Key 497-1492-5-ND) (optional if XBee is not used.)

                1 x 4094 shift register IC, 16 pin DIP package.
                eg. Digi-Key 568-4484-5-ND; Jaycar ZC4094.

                2 x 5V reed relays, DIP package, eg. Jaycar SY4030, Digi-Key HE100-ND

                1 x light-dependant resistor, eg. Jaycar RD3480

                1 x 100k linear pot, eg. Jaycar RP8518

                1 x 100k linear trimpot, Jaycar RT4366

                1 x 6-pin 2.54 mm Phoenix screw terminal wire-to-board connector
                eg. Digi-Key 277-1277-ND (optional)

                4 x momentary pushbutton switches, eg. Digi-Key EG1861-ND
                (Button/cap to suit above Digi-Key part: Digi-Key EG4364-ND)

                1 x 3 mm through-hole LED, colour to taste.

                2 x 1N4004 diodes, eg. Jaycar ZR1004.

                2 x 100 nF monolithic capacitor, 5.08 mm pitch, through hole.
                eg. Digi-Key 478-3193-ND, Jaycar RC5490 (optional if XBee is not used.)

                Resistors: (all standard 1/4W through-hole resistors):
                        1 x 4k7
                        1 x 69R
                        6 x 100k

                3 x 16 pin IC sockets (optional)
                2 x 16-pin 0.1" female header socket strip, for LCD
                1 x 40-way 0.1" break-away pin header strip
                1 x 28-way 0.1" break-away pin header strip

                2 x 10-pin 2 mm female header sockets, eg. Digi-Key S5751-10-ND
                (optional if XBee is not used.)
