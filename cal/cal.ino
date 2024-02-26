#include <Keypad.h>
#include <LiquidCrystal.h>

LiquidCrystal lcd(13, 12, 11, 10, 9, 8);

const byte ROWS = 4; //four rows
const byte COLS = 4; //four columns

//define the cymbols on the buttons of the keypads
char hexaKeys[ROWS][COLS] = {
  {'7','8','9','/'},
  {'4','5','6','*'},
  {'1','2','3','-'},
  {'C','0','=','+'}
};
byte rowPins[ROWS] ={7, 6, 5, 4}; //connect to the row pinouts of the keypad
byte colPins[COLS] ={3, 2, 1, 0}; //connect to the column pinouts of the keypad

//initialize an instance of class NewKeypad
Keypad cKeypad = Keypad( makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS); 

void setup(){
  lcd.begin(16, 2); // Initialize the LCD
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Press a key:");
  delay(200);
  lcd.clear();
}

String input1 = "";
String input2 = "";
float num1 = 0;
float num2 = 0;
char op = ' ';
float result;

void loop() {
  char key = cKeypad.getKey();
  if (key) {

    if(key !='\0' && key !='='){
      if(isdigit(key)){

          if(op == ' '){
              input1 += key;
              lcd.setCursor(12 , 0);
              lcd.print(input1);
          }else{
              input2 += key;
              lcd.setCursor(12 , 1);
              lcd.print(input2);
          }
    }else{
      op=key;
      lcd.setCursor(0 , 1);
      lcd.print(op);

    }
  }else if (key == '='){
      num1=input1.toFloat();
      num2=input2.toFloat();
        switch (op) {
          case '+':
            result = num1 + num2;
            break;
          case '-':
            result = num1 - num2;
            break;
          case '*':
            result = num1 * num2;
            break;
          case '/': 
              result = num1 / num2;
            break;
        }        
        
        lcd.clear();
        lcd.print("Result:");
        lcd.setCursor(0, 1);
        lcd.print(result);
        input1 = "";
    } 
    
    if (key == 'C') {
      input1 = "";
      input2 = "";
      num1 = 0;
      num2 = 0;
      op = ' ';
      lcd.clear();
      lcd.print("Calculator:");
      }
}
}