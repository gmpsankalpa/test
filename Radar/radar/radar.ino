#include <Servo.h>
#include<LiquidCrystal.h>

LiquidCrystal lcd(13,12,11,10,9,8);
Servo test_1;

void setup() {
test_1.attach(3);
pinMode(5,INPUT);
lcd.begin(16, 2);
}

void loop() {
  int x=digitalRead(5);

  if(x==0){
    lcd.setCursor(0, 0);
    lcd.print("detect");
    delay(50);
    }
  else{
    lcd.print("detecting");
    delay(50);
  }

  for (int i=0;i<181;i++){
    test_1.write(i);
    // delay(20);
  }

  for(int i=180;i>0;i--){
    test_1.write(i);
    // delay(20);
  }
  lcd.clear();
  
}