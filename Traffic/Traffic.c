void main() {
 TRISB = 0;

 while(1){
 PORTB.RB0 = 0;
 PORTB.RB1 = 0;
 PORTB.RB2 = 1;
 PORTB.RB3 = 0;
 PORTB.RB4 = 0;
 PORTB.RB5 = 1;

 DELAY_MS(300);

 PORTB.RB0 = 0;
 PORTB.RB1 = 1;
 PORTB.RB2 = 1;
 PORTB.RB3 = 0;
 PORTB.RB4 = 1;
 PORTB.RB5 = 0;

 DELAY_MS(150);

 PORTB.RB0 = 1;
 PORTB.RB1 = 0;
 PORTB.RB2 = 0;
 PORTB.RB3 = 1;
 PORTB.RB4 = 0;
 PORTB.RB5 = 0;

 DELAY_MS(300);

 PORTB.RB0 = 0;
 PORTB.RB1 = 1;
 PORTB.RB2 = 0;
 PORTB.RB3 = 1;
 PORTB.RB4 = 1;
 PORTB.RB5 = 0;

 DELAY_MS(150);
 }
}