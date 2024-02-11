
_main:

;Traffic.c,1 :: 		void main() {
;Traffic.c,2 :: 		TRISB = 0;
	CLRF       TRISB+0
;Traffic.c,4 :: 		while(1){
L_main0:
;Traffic.c,5 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Traffic.c,6 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Traffic.c,7 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Traffic.c,8 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Traffic.c,9 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Traffic.c,10 :: 		PORTB.RB5 = 1;
	BSF        PORTB+0, 5
;Traffic.c,12 :: 		DELAY_MS(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Traffic.c,14 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Traffic.c,15 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Traffic.c,16 :: 		PORTB.RB2 = 1;
	BSF        PORTB+0, 2
;Traffic.c,17 :: 		PORTB.RB3 = 0;
	BCF        PORTB+0, 3
;Traffic.c,18 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Traffic.c,19 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Traffic.c,21 :: 		DELAY_MS(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Traffic.c,23 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;Traffic.c,24 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;Traffic.c,25 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Traffic.c,26 :: 		PORTB.RB3 = 1;
	BSF        PORTB+0, 3
;Traffic.c,27 :: 		PORTB.RB4 = 0;
	BCF        PORTB+0, 4
;Traffic.c,28 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Traffic.c,30 :: 		DELAY_MS(300);
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Traffic.c,32 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;Traffic.c,33 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;Traffic.c,34 :: 		PORTB.RB2 = 0;
	BCF        PORTB+0, 2
;Traffic.c,35 :: 		PORTB.RB3 = 1;
	BSF        PORTB+0, 3
;Traffic.c,36 :: 		PORTB.RB4 = 1;
	BSF        PORTB+0, 4
;Traffic.c,37 :: 		PORTB.RB5 = 0;
	BCF        PORTB+0, 5
;Traffic.c,39 :: 		DELAY_MS(150);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;Traffic.c,40 :: 		}
	GOTO       L_main0
;Traffic.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
