
#include <LCD3Wire.h> 
#include <DallasTemperature.h>
#include <stdio.h>

#define LCD_LINES 2
#define DOUT_PIN 3
#define STR_PIN 2
#define CLK_PIN 4
#define ONEWIRE 5
#define RELAY_A 6
#define RELAY_B 7

#define LDR 0
#define POT 1
#define RIGHT_BUTTON 2
#define LEFT_BUTTON 3

  LCD3Wire lcd = LCD3Wire(LCD_LINES, DOUT_PIN, STR_PIN, CLK_PIN);
  DallasTemperature tempSensor;
  
  char buf[8]="0";
      
void setup()
  { 
    lcd.init();
    tempSensor.begin(ONEWIRE);
    pinMode(RELAY_A, OUTPUT);
    pinMode(RELAY_B, OUTPUT);
  }

void loop()
  {  
    //lcd.clear();
    lcd.cursorTo(1,0);
    lcd.printIn(itoa(analogRead(POT), buf, 10));
      
    sprintf(buf, "%.2f", (tempSensor.getTemperature()));
    lcd.cursorTo(1,6);
    lcd.printIn(buf);
    
    lcd.cursorTo(1,12);
    lcd.printIn(itoa(analogRead(LDR), buf, 10));
    lcd.cursorTo(2,0);
    lcd.printIn(itoa((analogRead(LEFT_BUTTON) / 1023), buf, 10));
    lcd.cursorTo(2,12);
    lcd.printIn(itoa((analogRead(RIGHT_BUTTON) / 1023), buf, 10));
    
    digitalWrite(RELAY_A, HIGH);
    digitalWrite(RELAY_B, LOW);
    delay(50);
    
    digitalWrite(RELAY_A, LOW);
    digitalWrite(RELAY_B, HIGH);  
}

