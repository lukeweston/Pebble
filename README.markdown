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
                                                                     
                                                                     
                                                                     
                                             
-------------------------------------------------------------------------------------------------------
The following is a bill-of-materials for the 'Pebble', all sourced from Digi-Key. Prices in USD.
Does NOT INCLUDE LCD.

Item					Digikey no.	Unit price				Subtotal	
--------------------------------------------------------------------------------------------------------
5 x 10 k resistors			10KQBK-ND		0.064 (minimum quantity 5)	0.320
2 x 100 R resistors			100QBK-ND		0.064 (minimum quantity 5)	0.128
2 x 100 k resistors			100KQBK-ND		0.064 (minimum quantity 5)	0.128
1 x 39 k resistor			39KQBK-ND		0.064 (minimum quantity 5)	0.064
1 x 22 k resistor			22KQBK-ND		0.064 (minimum quantity 5)	0.064
1 x 4.7 k resistor			4.7KQBK-ND		0.064 (minimum quantity 5)	0.064

1 x 10 k trimpot			D4AA14-ND		0.36				0.36
1 x 10 k pot				3310C-001-103L-ND	2.56				2.56

2 x 100 nF capacitor			399-4151-ND		0.16				0.32
1 x 10 uF electrolytic			493-1144-ND		0.24				0.24

1 x LDR					PDV-P8001-ND		2.14				2.14
1 x DS18B20				DS18B20+PAR-ND		5.04				5.04
1 x LD1117V33				497-1491-5-ND		0.78				0.78
1 x 4094				497-1373-5-ND		0.53				0.53

2 x 1N5819				1N5819FSCT-ND		0.37				0.74
1 x 3 mm red LED			160-1708-ND		0.09				0.09
1 x 3 mm green LED			160-1710-ND		0.09				0.09	

4 x tactile pushbutton switches		CKN9074-ND		0.13				0.52
2 x 14-pin IC socket (optional)		3M5462-ND		0.18				0.36
1 x 16-pin IC socket			3M5463-ND		0.18				0.18
2 x 10-pin 2 mm female headers		S5751-10-ND		1.05				2.10
2 x 16-pin 0.1" female headers		S7049-ND		0.92				1.84
2 x 30-pin breakaway header pin strip	S1212E-30-ND		1.45				2.90
1 x 6-pin 0.1" right-angle header	S5481-ND		0.74				0.74
2 x 5 v reed relays			HE100-ND		1.50				3.00
-------------------------------------------------------------------------------------------------------
									Total Price (per unit) 25.30

