
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
		UART RXD from XBee module:	0
		UART TXD to XBee module:	1
		LCD shift register strobe:	2
		LCD shift register data:	3
		LCD shift register clock:	4
		DS18B20 sensor 1-Wire data bus:	5
		Reed relay output 1:		6
		Reed relay output 2:		7
		
		Analog pins:
		LDR analog input:		A0
		Pot analog input:		A1
		Momentary pushbutton input 1:	A2
		Momentary pushbutton input 2:	A3


Parts List / Bill of Materials:
-------------------------------
		
		R1-R5: 	6 x 100 k, SMD 0805.
		R6:	    4.7 k, SMD 0805.
		R7:	     69 R, SMD 0805.
		
		VR1: 100 k linear pot, 9 mm metric, PCB mounting; eg. 		      Jaycar RP-8518. 
		VR2: 100 k linear pot, Spectrol 25-turn 0.1" pitch PCB mount; eg.     Jaycar RT-4656.
		
		C1-C2: 2 x 100 nF SMD 0805.
		
		LCD1: 16x2 alphanumeric LCD module; Jaycar Electronics QP-5516 is suitable.
		LED1: 3 mm through-hole LED, green (or whatever colour you like); eg. Jaycar ZD-0120. 
		LDR1: Cadmium sulfide light-dependent resistor; eg. 		      Jaycar RD-3480.
		
		IC1: 4094 shift register; SMD SOIC package; eg.  Rockby Electronics Stock no. 34707.
		IC2: DS18B20 1-Wire temperature sensor, TO-92 package; eg. 	      Digi-Key DS18B20+-ND.
		IC3: LM1117-3.3 3.3 V voltage regulator, SOT-223 SMD package; eg.     Digi-Key LM1117MP-3.3CT-ND.
		IC4: XBee RF communication module (choose whichever specific type you like)
		
		RY1-RY2: 2 x reed relay, 5 V coil, DIP 0.3" package; eg. 		  Jaycar SY-4030.
		S1-S2: 2 x normally-open momentary pushbutton switch, 4 pins; eg.         Jaycar SP-0720.
		       
		       (Choose whatever colour you like. Personally, I don't like the "feel" of the
		       Jaycar SP-0720 style switches; they seem a bit "sticky". I personally prefer to
		       use something like the (Jaycar) SP-0600 style of switch, as they seem to have a
		       better tactile response which isn't "sticky". But then again, they are not big and
		       round and brightly coloured.)
		
		14-pin DIL (2 x 7) 0.1" female header socket strip; for mounting LCD; eg. Digi-Key S7075-ND.
		2 x 10 pin, 2 mm female SIL header sockets to suit XBee module; eg. 	  Digi-Key S5751-10-ND. 
		4-pin 0.1" Phoenix PCB-mount screw-down terminal block; eg. 		  Digi-Key 277-1275-ND.
		28-way male 0.1" break-away pin header or wire-wrap socket strip; eg. 	  Jaycar PI-6472.
		14-pin DIL (2 x 7) 0.1" break-away pin header strip for mounting LCD; eg. Jaycar HM-3250.
		Solid-core wire (eg. 0.7 mm tinned copper wire) for making wire links on PCB.
		

