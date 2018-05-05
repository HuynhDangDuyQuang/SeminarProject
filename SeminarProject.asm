
_LED_OUT:

;SeminarProject.c,43 :: 		void LED_OUT(unsigned char X)
;SeminarProject.c,47 :: 		for(i=8;i>=1;i--)
	MOVLW       8
	MOVWF       R1 
L_LED_OUT0:
	MOVLW       1
	SUBWF       R1, 0 
	BTFSS       STATUS+0, 0 
	GOTO        L_LED_OUT1
;SeminarProject.c,49 :: 		if (X&0x80) DIO=1; else DIO=0;
	BTFSS       FARG_LED_OUT_X+0, 7 
	GOTO        L_LED_OUT3
	BSF         PORTA+0, 0 
	GOTO        L_LED_OUT4
L_LED_OUT3:
	BCF         PORTA+0, 0 
L_LED_OUT4:
;SeminarProject.c,50 :: 		X<<=1;
	RLCF        FARG_LED_OUT_X+0, 1 
	BCF         FARG_LED_OUT_X+0, 0 
;SeminarProject.c,51 :: 		SCLK = 0;
	BCF         PORTA+0, 2 
;SeminarProject.c,52 :: 		SCLK = 1;
	BSF         PORTA+0, 2 
;SeminarProject.c,47 :: 		for(i=8;i>=1;i--)
	DECF        R1, 1 
;SeminarProject.c,53 :: 		}
	GOTO        L_LED_OUT0
L_LED_OUT1:
;SeminarProject.c,54 :: 		}
L_end_LED_OUT:
	RETURN      0
; end of _LED_OUT

_LED_Display:

;SeminarProject.c,56 :: 		void LED_Display ()
;SeminarProject.c,59 :: 		LED_OUT(LED_0F[8]);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,60 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,62 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,63 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,66 :: 		LED_OUT(LED_0F[8]);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,67 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,69 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,70 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,72 :: 		LED_OUT(LED_0F[8]);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,73 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,75 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,76 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,78 :: 		LED_OUT(LED_0F[4]);
	MOVLW       153
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,79 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,81 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,82 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,84 :: 		LED_OUT(LED_0F[5]);
	MOVLW       146
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,85 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,87 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,88 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,90 :: 		LED_OUT(LED_0F[6]);
	MOVLW       130
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,91 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,93 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,94 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,96 :: 		LED_OUT(LED_0F[7]);
	MOVLW       248
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,97 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,99 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,100 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,102 :: 		LED_OUT(LED_0F[8]);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,103 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,105 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,106 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,107 :: 		}
L_end_LED_Display:
	RETURN      0
; end of _LED_Display

_DisplayClock:

;SeminarProject.c,109 :: 		void DisplayClock(int th,int tm,int ts)
;SeminarProject.c,111 :: 		if(th>=0 && th<24 && tm>=0 && tm<60 && ts>=0 && ts<60)
	MOVLW       128
	XORWF       FARG_DisplayClock_th+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock211
	MOVLW       0
	SUBWF       FARG_DisplayClock_th+0, 0 
L__DisplayClock211:
	BTFSS       STATUS+0, 0 
	GOTO        L_DisplayClock7
	MOVLW       128
	XORWF       FARG_DisplayClock_th+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock212
	MOVLW       24
	SUBWF       FARG_DisplayClock_th+0, 0 
L__DisplayClock212:
	BTFSC       STATUS+0, 0 
	GOTO        L_DisplayClock7
	MOVLW       128
	XORWF       FARG_DisplayClock_tm+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock213
	MOVLW       0
	SUBWF       FARG_DisplayClock_tm+0, 0 
L__DisplayClock213:
	BTFSS       STATUS+0, 0 
	GOTO        L_DisplayClock7
	MOVLW       128
	XORWF       FARG_DisplayClock_tm+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock214
	MOVLW       60
	SUBWF       FARG_DisplayClock_tm+0, 0 
L__DisplayClock214:
	BTFSC       STATUS+0, 0 
	GOTO        L_DisplayClock7
	MOVLW       128
	XORWF       FARG_DisplayClock_ts+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock215
	MOVLW       0
	SUBWF       FARG_DisplayClock_ts+0, 0 
L__DisplayClock215:
	BTFSS       STATUS+0, 0 
	GOTO        L_DisplayClock7
	MOVLW       128
	XORWF       FARG_DisplayClock_ts+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock216
	MOVLW       60
	SUBWF       FARG_DisplayClock_ts+0, 0 
L__DisplayClock216:
	BTFSC       STATUS+0, 0 
	GOTO        L_DisplayClock7
L__DisplayClock189:
;SeminarProject.c,113 :: 		LED_OUT(LED_0F[th/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_th+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_th+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,114 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,115 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,116 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,117 :: 		LED_OUT(LED_0F[th%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_th+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_th+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,118 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,119 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,120 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,122 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,123 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,124 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,125 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,127 :: 		LED_OUT(LED_0F[tm/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_tm+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_tm+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,128 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,129 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,130 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,131 :: 		LED_OUT(LED_0F[tm%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_tm+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_tm+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,132 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,133 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,134 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,136 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,137 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,138 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,139 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,141 :: 		LED_OUT(LED_0F[ts/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_ts+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_ts+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,142 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,143 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,144 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,145 :: 		LED_OUT(LED_0F[ts%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_ts+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_ts+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,146 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,147 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,148 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,149 :: 		}
	GOTO        L_DisplayClock8
L_DisplayClock7:
;SeminarProject.c,152 :: 		if(th>=24||th<0)
	MOVLW       128
	XORWF       FARG_DisplayClock_th+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock217
	MOVLW       24
	SUBWF       FARG_DisplayClock_th+0, 0 
L__DisplayClock217:
	BTFSC       STATUS+0, 0 
	GOTO        L__DisplayClock188
	MOVLW       128
	XORWF       FARG_DisplayClock_th+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock218
	MOVLW       0
	SUBWF       FARG_DisplayClock_th+0, 0 
L__DisplayClock218:
	BTFSS       STATUS+0, 0 
	GOTO        L__DisplayClock188
	GOTO        L_DisplayClock11
L__DisplayClock188:
;SeminarProject.c,154 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,155 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,156 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,157 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,158 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,159 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,160 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,161 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,163 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,164 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,165 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,166 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,168 :: 		LED_OUT(LED_0F[tm/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_tm+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_tm+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,169 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,170 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,171 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,172 :: 		LED_OUT(LED_0F[tm%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_tm+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_tm+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,173 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,174 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,175 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,177 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,178 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,179 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,180 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,182 :: 		LED_OUT(LED_0F[ts/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_ts+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_ts+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,183 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,184 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,185 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,186 :: 		LED_OUT(LED_0F[ts%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_ts+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_ts+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,187 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,188 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,189 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,191 :: 		}
	GOTO        L_DisplayClock12
L_DisplayClock11:
;SeminarProject.c,192 :: 		else if(tm>=60||tm<0)
	MOVLW       128
	XORWF       FARG_DisplayClock_tm+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock219
	MOVLW       60
	SUBWF       FARG_DisplayClock_tm+0, 0 
L__DisplayClock219:
	BTFSC       STATUS+0, 0 
	GOTO        L__DisplayClock187
	MOVLW       128
	XORWF       FARG_DisplayClock_tm+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock220
	MOVLW       0
	SUBWF       FARG_DisplayClock_tm+0, 0 
L__DisplayClock220:
	BTFSS       STATUS+0, 0 
	GOTO        L__DisplayClock187
	GOTO        L_DisplayClock15
L__DisplayClock187:
;SeminarProject.c,194 :: 		LED_OUT(LED_0F[th/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_th+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_th+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,195 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,196 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,197 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,198 :: 		LED_OUT(LED_0F[th%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_th+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_th+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,199 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,200 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,201 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,203 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,204 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,205 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,206 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,208 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,209 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,210 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,211 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,212 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,213 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,214 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,215 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,217 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,218 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,219 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,220 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,222 :: 		LED_OUT(LED_0F[ts/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_ts+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_ts+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,223 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,224 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,225 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,226 :: 		LED_OUT(LED_0F[ts%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_ts+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_ts+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,227 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,228 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,229 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,230 :: 		}
	GOTO        L_DisplayClock16
L_DisplayClock15:
;SeminarProject.c,231 :: 		else if(ts>=60||ts<0)
	MOVLW       128
	XORWF       FARG_DisplayClock_ts+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock221
	MOVLW       60
	SUBWF       FARG_DisplayClock_ts+0, 0 
L__DisplayClock221:
	BTFSC       STATUS+0, 0 
	GOTO        L__DisplayClock186
	MOVLW       128
	XORWF       FARG_DisplayClock_ts+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayClock222
	MOVLW       0
	SUBWF       FARG_DisplayClock_ts+0, 0 
L__DisplayClock222:
	BTFSS       STATUS+0, 0 
	GOTO        L__DisplayClock186
	GOTO        L_DisplayClock19
L__DisplayClock186:
;SeminarProject.c,233 :: 		LED_OUT(LED_0F[th/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_th+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_th+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,234 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,235 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,236 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,237 :: 		LED_OUT(LED_0F[th%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_th+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_th+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,238 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,239 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,240 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,242 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,243 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,244 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,245 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,247 :: 		LED_OUT(LED_0F[tm/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_tm+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_tm+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,248 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,249 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,250 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,251 :: 		LED_OUT(LED_0F[tm%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayClock_tm+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayClock_tm+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,252 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,253 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,254 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,256 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,257 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,258 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,259 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,261 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,262 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,263 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,264 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,265 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,266 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,267 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,268 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,269 :: 		}
L_DisplayClock19:
L_DisplayClock16:
L_DisplayClock12:
;SeminarProject.c,270 :: 		}
L_DisplayClock8:
;SeminarProject.c,271 :: 		}
L_end_DisplayClock:
	RETURN      0
; end of _DisplayClock

_DisplayCalendar:

;SeminarProject.c,273 :: 		void DisplayCalendar(int tyear,int tmonth,int tday)
;SeminarProject.c,275 :: 		if(tyear>=0 && tmonth>0 && tmonth<=12 && tday>0 &&tday<=31)
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar224
	MOVLW       0
	SUBWF       FARG_DisplayCalendar_tyear+0, 0 
L__DisplayCalendar224:
	BTFSS       STATUS+0, 0 
	GOTO        L_DisplayCalendar22
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tmonth+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar225
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	SUBLW       0
L__DisplayCalendar225:
	BTFSC       STATUS+0, 0 
	GOTO        L_DisplayCalendar22
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tmonth+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar226
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	SUBLW       12
L__DisplayCalendar226:
	BTFSS       STATUS+0, 0 
	GOTO        L_DisplayCalendar22
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tday+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar227
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	SUBLW       0
L__DisplayCalendar227:
	BTFSC       STATUS+0, 0 
	GOTO        L_DisplayCalendar22
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tday+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar228
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	SUBLW       31
L__DisplayCalendar228:
	BTFSS       STATUS+0, 0 
	GOTO        L_DisplayCalendar22
L__DisplayCalendar192:
;SeminarProject.c,277 :: 		LED_OUT(LED_0F[tday/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tday+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,278 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,279 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,280 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,281 :: 		LED_OUT(LED_0F[tday%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tday+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,282 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,283 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,284 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,286 :: 		LED_OUT(LED_0F[tmonth/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tmonth+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,287 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,288 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,289 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,290 :: 		LED_OUT(LED_0F[tmonth%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tmonth+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,291 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,292 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,293 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,295 :: 		LED_OUT(LED_0F[tyear/1000]);
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,296 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,297 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,298 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,299 :: 		LED_OUT(LED_0F[(tyear/100)%10]);
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,300 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,301 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,302 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,304 :: 		LED_OUT(LED_0F[(tyear/10)%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,305 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,306 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,307 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,308 :: 		LED_OUT(LED_0F[tyear%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,309 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,310 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,311 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,312 :: 		}
	GOTO        L_DisplayCalendar23
L_DisplayCalendar22:
;SeminarProject.c,315 :: 		if(tday<=0 || tday>31)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tday+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar229
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	SUBLW       0
L__DisplayCalendar229:
	BTFSC       STATUS+0, 0 
	GOTO        L__DisplayCalendar191
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tday+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar230
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	SUBLW       31
L__DisplayCalendar230:
	BTFSS       STATUS+0, 0 
	GOTO        L__DisplayCalendar191
	GOTO        L_DisplayCalendar26
L__DisplayCalendar191:
;SeminarProject.c,317 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,318 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,319 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,320 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,321 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,322 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,323 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,324 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,326 :: 		LED_OUT(LED_0F[tmonth/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tmonth+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,327 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,328 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,329 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,330 :: 		LED_OUT(LED_0F[tmonth%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tmonth+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,331 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,332 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,333 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,335 :: 		LED_OUT(LED_0F[tyear/1000]);
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,336 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,337 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,338 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,339 :: 		LED_OUT(LED_0F[(tyear/100)%10]);
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,340 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,341 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,342 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,344 :: 		LED_OUT(LED_0F[(tyear/10)%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,345 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,346 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,347 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,348 :: 		LED_OUT(LED_0F[tyear%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,349 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,350 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,351 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,352 :: 		}
	GOTO        L_DisplayCalendar27
L_DisplayCalendar26:
;SeminarProject.c,353 :: 		else if(tmonth<=0 || tmonth>12)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tmonth+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar231
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	SUBLW       0
L__DisplayCalendar231:
	BTFSC       STATUS+0, 0 
	GOTO        L__DisplayCalendar190
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tmonth+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar232
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	SUBLW       12
L__DisplayCalendar232:
	BTFSS       STATUS+0, 0 
	GOTO        L__DisplayCalendar190
	GOTO        L_DisplayCalendar30
L__DisplayCalendar190:
;SeminarProject.c,355 :: 		LED_OUT(LED_0F[tday/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tday+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,356 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,357 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,358 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,359 :: 		LED_OUT(LED_0F[tday%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tday+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,360 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,361 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,362 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,364 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,365 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,366 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,367 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,368 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,369 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,370 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,371 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,373 :: 		LED_OUT(LED_0F[tyear/1000]);
	MOVLW       232
	MOVWF       R4 
	MOVLW       3
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,374 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,375 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,376 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,377 :: 		LED_OUT(LED_0F[(tyear/100)%10]);
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,378 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,379 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,380 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,382 :: 		LED_OUT(LED_0F[(tyear/10)%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,383 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,384 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,385 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,386 :: 		LED_OUT(LED_0F[tyear%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tyear+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,387 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,388 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,389 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,390 :: 		}
	GOTO        L_DisplayCalendar31
L_DisplayCalendar30:
;SeminarProject.c,391 :: 		else if(tyear<0)
	MOVLW       128
	XORWF       FARG_DisplayCalendar_tyear+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DisplayCalendar233
	MOVLW       0
	SUBWF       FARG_DisplayCalendar_tyear+0, 0 
L__DisplayCalendar233:
	BTFSC       STATUS+0, 0 
	GOTO        L_DisplayCalendar32
;SeminarProject.c,393 :: 		LED_OUT(LED_0F[tday/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tday+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,394 :: 		LED_OUT(0x80);
	MOVLW       128
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,395 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,396 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,397 :: 		LED_OUT(LED_0F[tday%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tday+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tday+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,398 :: 		LED_OUT(0x40);
	MOVLW       64
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,399 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,400 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,402 :: 		LED_OUT(LED_0F[tmonth/10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tmonth+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,403 :: 		LED_OUT(0x20);
	MOVLW       32
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,404 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,405 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,406 :: 		LED_OUT(LED_0F[tmonth%10]);
	MOVLW       10
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DisplayCalendar_tmonth+0, 0 
	MOVWF       R0 
	MOVF        FARG_DisplayCalendar_tmonth+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       _LED_0F+0
	ADDWF       R0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_LED_0F+0)
	ADDWFC      R1, 0 
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(_LED_0F+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	BTFSC       R1, 7 
	MOVLW       255
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_LED_OUT_X+0
	CALL        _LED_OUT+0, 0
;SeminarProject.c,407 :: 		LED_OUT(0x10);
	MOVLW       16
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,408 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,409 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,411 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,412 :: 		LED_OUT(0x08);
	MOVLW       8
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,413 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,414 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,415 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,416 :: 		LED_OUT(0x04);
	MOVLW       4
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,417 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,418 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,420 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,421 :: 		LED_OUT(0x02);
	MOVLW       2
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,422 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,423 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,424 :: 		LED_OUT(LED_0F[10]);
	MOVLW       255
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,425 :: 		LED_OUT(0x01);
	MOVLW       1
	MOVWF       FARG_LED_OUT_X+0 
	CALL        _LED_OUT+0, 0
;SeminarProject.c,426 :: 		RCLK = 0;
	BCF         PORTA+0, 1 
;SeminarProject.c,427 :: 		RCLK = 1;
	BSF         PORTA+0, 1 
;SeminarProject.c,428 :: 		}
L_DisplayCalendar32:
L_DisplayCalendar31:
L_DisplayCalendar27:
;SeminarProject.c,429 :: 		}
L_DisplayCalendar23:
;SeminarProject.c,430 :: 		}
L_end_DisplayCalendar:
	RETURN      0
; end of _DisplayCalendar

_DayMax:

;SeminarProject.c,435 :: 		int DayMax(int yr,int mth)
;SeminarProject.c,437 :: 		if(mth==1||mth==3||mth==5||mth==7||
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax235
	MOVLW       1
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax235:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax236
	MOVLW       3
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax236:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax237
	MOVLW       5
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax237:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax238
	MOVLW       7
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax238:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
;SeminarProject.c,438 :: 		mth==8||mth==10||mth==12)
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax239
	MOVLW       8
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax239:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax240
	MOVLW       10
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax240:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax241
	MOVLW       12
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax241:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax197
	GOTO        L_DayMax35
L__DayMax197:
;SeminarProject.c,439 :: 		return 31;
	MOVLW       31
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_DayMax
L_DayMax35:
;SeminarProject.c,440 :: 		if(mth==4||mth==6||mth==9||mth==11)
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax242
	MOVLW       4
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax242:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax196
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax243
	MOVLW       6
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax243:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax196
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax244
	MOVLW       9
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax244:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax196
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax245
	MOVLW       11
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax245:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax196
	GOTO        L_DayMax38
L__DayMax196:
;SeminarProject.c,441 :: 		return 30;
	MOVLW       30
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_DayMax
L_DayMax38:
;SeminarProject.c,442 :: 		if(mth==2&&((yr%4==0&&yr%100!=0)||yr%400==0))
	MOVLW       0
	XORWF       FARG_DayMax_mth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax246
	MOVLW       2
	XORWF       FARG_DayMax_mth+0, 0 
L__DayMax246:
	BTFSS       STATUS+0, 2 
	GOTO        L_DayMax45
	MOVLW       4
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DayMax_yr+0, 0 
	MOVWF       R0 
	MOVF        FARG_DayMax_yr+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax247
	MOVLW       0
	XORWF       R0, 0 
L__DayMax247:
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax195
	MOVLW       100
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        FARG_DayMax_yr+0, 0 
	MOVWF       R0 
	MOVF        FARG_DayMax_yr+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax248
	MOVLW       0
	XORWF       R0, 0 
L__DayMax248:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax195
	GOTO        L__DayMax194
L__DayMax195:
	MOVLW       144
	MOVWF       R4 
	MOVLW       1
	MOVWF       R5 
	MOVF        FARG_DayMax_yr+0, 0 
	MOVWF       R0 
	MOVF        FARG_DayMax_yr+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVLW       0
	XORWF       R1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__DayMax249
	MOVLW       0
	XORWF       R0, 0 
L__DayMax249:
	BTFSC       STATUS+0, 2 
	GOTO        L__DayMax194
	GOTO        L_DayMax45
L__DayMax194:
L__DayMax193:
;SeminarProject.c,443 :: 		return 29;
	MOVLW       29
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_DayMax
L_DayMax45:
;SeminarProject.c,444 :: 		else return 28;
	MOVLW       28
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
;SeminarProject.c,445 :: 		}
L_end_DayMax:
	RETURN      0
; end of _DayMax

_Timming:

;SeminarProject.c,447 :: 		void Timming(void)
;SeminarProject.c,449 :: 		second=second+1;
	INFSNZ      _second+0, 1 
	INCF        _second+1, 1 
;SeminarProject.c,450 :: 		if(second==60)
	MOVLW       0
	XORWF       _second+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Timming251
	MOVLW       60
	XORWF       _second+0, 0 
L__Timming251:
	BTFSS       STATUS+0, 2 
	GOTO        L_Timming47
;SeminarProject.c,452 :: 		second=0;
	CLRF        _second+0 
	CLRF        _second+1 
;SeminarProject.c,453 :: 		minute=minute+1;
	INFSNZ      _minute+0, 1 
	INCF        _minute+1, 1 
;SeminarProject.c,454 :: 		if(minute==60)
	MOVLW       0
	XORWF       _minute+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Timming252
	MOVLW       60
	XORWF       _minute+0, 0 
L__Timming252:
	BTFSS       STATUS+0, 2 
	GOTO        L_Timming48
;SeminarProject.c,456 :: 		minute=0;
	CLRF        _minute+0 
	CLRF        _minute+1 
;SeminarProject.c,457 :: 		hour=hour+1;
	INFSNZ      _hour+0, 1 
	INCF        _hour+1, 1 
;SeminarProject.c,458 :: 		if(hour==24)
	MOVLW       0
	XORWF       _hour+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Timming253
	MOVLW       24
	XORWF       _hour+0, 0 
L__Timming253:
	BTFSS       STATUS+0, 2 
	GOTO        L_Timming49
;SeminarProject.c,460 :: 		hour=0;
	CLRF        _hour+0 
	CLRF        _hour+1 
;SeminarProject.c,461 :: 		day=day+1;
	INFSNZ      _day+0, 1 
	INCF        _day+1, 1 
;SeminarProject.c,462 :: 		if(day==(DayMax(year,month)+1))
	MOVF        _year+0, 0 
	MOVWF       FARG_DayMax_yr+0 
	MOVF        _year+1, 0 
	MOVWF       FARG_DayMax_yr+1 
	MOVF        _month+0, 0 
	MOVWF       FARG_DayMax_mth+0 
	MOVF        _month+1, 0 
	MOVWF       FARG_DayMax_mth+1 
	CALL        _DayMax+0, 0
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVF        _day+1, 0 
	XORWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Timming254
	MOVF        R2, 0 
	XORWF       _day+0, 0 
L__Timming254:
	BTFSS       STATUS+0, 2 
	GOTO        L_Timming50
;SeminarProject.c,464 :: 		day=1;
	MOVLW       1
	MOVWF       _day+0 
	MOVLW       0
	MOVWF       _day+1 
;SeminarProject.c,465 :: 		month=month+1;
	INFSNZ      _month+0, 1 
	INCF        _month+1, 1 
;SeminarProject.c,466 :: 		if(month==13)
	MOVLW       0
	XORWF       _month+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Timming255
	MOVLW       13
	XORWF       _month+0, 0 
L__Timming255:
	BTFSS       STATUS+0, 2 
	GOTO        L_Timming51
;SeminarProject.c,468 :: 		month=1;
	MOVLW       1
	MOVWF       _month+0 
	MOVLW       0
	MOVWF       _month+1 
;SeminarProject.c,469 :: 		year=year+1;
	INFSNZ      _year+0, 1 
	INCF        _year+1, 1 
;SeminarProject.c,470 :: 		}
L_Timming51:
;SeminarProject.c,471 :: 		}
L_Timming50:
;SeminarProject.c,472 :: 		}
L_Timming49:
;SeminarProject.c,473 :: 		}
L_Timming48:
;SeminarProject.c,474 :: 		}
L_Timming47:
;SeminarProject.c,475 :: 		}
L_end_Timming:
	RETURN      0
; end of _Timming

_TimeTracking:

;SeminarProject.c,477 :: 		void TimeTracking(void)
;SeminarProject.c,479 :: 		if(cTime<=0)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cTime+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__TimeTracking257
	MOVF        _cTime+0, 0 
	SUBLW       0
L__TimeTracking257:
	BTFSS       STATUS+0, 0 
	GOTO        L_TimeTracking52
;SeminarProject.c,481 :: 		cTime=SECOND1;
	MOVLW       200
	MOVWF       _cTime+0 
	MOVLW       0
	MOVWF       _cTime+1 
;SeminarProject.c,482 :: 		Timming();
	CALL        _Timming+0, 0
;SeminarProject.c,483 :: 		}
L_TimeTracking52:
;SeminarProject.c,484 :: 		if(setmode==OFF)
	MOVLW       0
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__TimeTracking258
	MOVLW       0
	XORWF       _setmode+0, 0 
L__TimeTracking258:
	BTFSS       STATUS+0, 2 
	GOTO        L_TimeTracking53
;SeminarProject.c,486 :: 		if(mode==CLOCK) DisplayClock(hour,minute,second);
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__TimeTracking259
	MOVLW       0
	XORWF       _mode+0, 0 
L__TimeTracking259:
	BTFSS       STATUS+0, 2 
	GOTO        L_TimeTracking54
	MOVF        _hour+0, 0 
	MOVWF       FARG_DisplayClock_th+0 
	MOVF        _hour+1, 0 
	MOVWF       FARG_DisplayClock_th+1 
	MOVF        _minute+0, 0 
	MOVWF       FARG_DisplayClock_tm+0 
	MOVF        _minute+1, 0 
	MOVWF       FARG_DisplayClock_tm+1 
	MOVF        _second+0, 0 
	MOVWF       FARG_DisplayClock_ts+0 
	MOVF        _second+1, 0 
	MOVWF       FARG_DisplayClock_ts+1 
	CALL        _DisplayClock+0, 0
	GOTO        L_TimeTracking55
L_TimeTracking54:
;SeminarProject.c,487 :: 		else DisplayCalendar(year,month,day);
	MOVF        _year+0, 0 
	MOVWF       FARG_DisplayCalendar_tyear+0 
	MOVF        _year+1, 0 
	MOVWF       FARG_DisplayCalendar_tyear+1 
	MOVF        _month+0, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+0 
	MOVF        _month+1, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+1 
	MOVF        _day+0, 0 
	MOVWF       FARG_DisplayCalendar_tday+0 
	MOVF        _day+1, 0 
	MOVWF       FARG_DisplayCalendar_tday+1 
	CALL        _DisplayCalendar+0, 0
L_TimeTracking55:
;SeminarProject.c,488 :: 		}
L_TimeTracking53:
;SeminarProject.c,489 :: 		}
L_end_TimeTracking:
	RETURN      0
; end of _TimeTracking

_BlinkCreate:

;SeminarProject.c,491 :: 		void BlinkCreate(void)
;SeminarProject.c,493 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate261
	MOVLW       0
	XORWF       _mode+0, 0 
L__BlinkCreate261:
	BTFSS       STATUS+0, 2 
	GOTO        L_BlinkCreate56
;SeminarProject.c,495 :: 		if(cBlink<=HALFSECOND)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cBlink+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate262
	MOVF        _cBlink+0, 0 
	SUBLW       100
L__BlinkCreate262:
	BTFSS       STATUS+0, 0 
	GOTO        L_BlinkCreate57
;SeminarProject.c,497 :: 		switch(pos)
	GOTO        L_BlinkCreate58
;SeminarProject.c,499 :: 		case 0:{ DisplayClock(-1,temm,tems); break; }
L_BlinkCreate60:
	MOVLW       255
	MOVWF       FARG_DisplayClock_th+0 
	MOVLW       255
	MOVWF       FARG_DisplayClock_th+1 
	MOVF        _temm+0, 0 
	MOVWF       FARG_DisplayClock_tm+0 
	MOVF        _temm+1, 0 
	MOVWF       FARG_DisplayClock_tm+1 
	MOVF        _tems+0, 0 
	MOVWF       FARG_DisplayClock_ts+0 
	MOVF        _tems+1, 0 
	MOVWF       FARG_DisplayClock_ts+1 
	CALL        _DisplayClock+0, 0
	GOTO        L_BlinkCreate59
;SeminarProject.c,500 :: 		case 1:{ DisplayClock(temh,-1,tems); break; }
L_BlinkCreate61:
	MOVF        _temh+0, 0 
	MOVWF       FARG_DisplayClock_th+0 
	MOVF        _temh+1, 0 
	MOVWF       FARG_DisplayClock_th+1 
	MOVLW       255
	MOVWF       FARG_DisplayClock_tm+0 
	MOVLW       255
	MOVWF       FARG_DisplayClock_tm+1 
	MOVF        _tems+0, 0 
	MOVWF       FARG_DisplayClock_ts+0 
	MOVF        _tems+1, 0 
	MOVWF       FARG_DisplayClock_ts+1 
	CALL        _DisplayClock+0, 0
	GOTO        L_BlinkCreate59
;SeminarProject.c,501 :: 		case 2:{ DisplayClock(temh,temm,-1); break; }
L_BlinkCreate62:
	MOVF        _temh+0, 0 
	MOVWF       FARG_DisplayClock_th+0 
	MOVF        _temh+1, 0 
	MOVWF       FARG_DisplayClock_th+1 
	MOVF        _temm+0, 0 
	MOVWF       FARG_DisplayClock_tm+0 
	MOVF        _temm+1, 0 
	MOVWF       FARG_DisplayClock_tm+1 
	MOVLW       255
	MOVWF       FARG_DisplayClock_ts+0 
	MOVLW       255
	MOVWF       FARG_DisplayClock_ts+1 
	CALL        _DisplayClock+0, 0
	GOTO        L_BlinkCreate59
;SeminarProject.c,502 :: 		default: break;
L_BlinkCreate63:
	GOTO        L_BlinkCreate59
;SeminarProject.c,503 :: 		}
L_BlinkCreate58:
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate263
	MOVLW       0
	XORWF       _pos+0, 0 
L__BlinkCreate263:
	BTFSC       STATUS+0, 2 
	GOTO        L_BlinkCreate60
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate264
	MOVLW       1
	XORWF       _pos+0, 0 
L__BlinkCreate264:
	BTFSC       STATUS+0, 2 
	GOTO        L_BlinkCreate61
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate265
	MOVLW       2
	XORWF       _pos+0, 0 
L__BlinkCreate265:
	BTFSC       STATUS+0, 2 
	GOTO        L_BlinkCreate62
	GOTO        L_BlinkCreate63
L_BlinkCreate59:
;SeminarProject.c,504 :: 		if(cBlink<=0)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cBlink+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate266
	MOVF        _cBlink+0, 0 
	SUBLW       0
L__BlinkCreate266:
	BTFSS       STATUS+0, 0 
	GOTO        L_BlinkCreate64
;SeminarProject.c,505 :: 		cBlink=SECOND1;
	MOVLW       200
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
L_BlinkCreate64:
;SeminarProject.c,506 :: 		}
	GOTO        L_BlinkCreate65
L_BlinkCreate57:
;SeminarProject.c,507 :: 		else DisplayClock(temh,temm,tems);
	MOVF        _temh+0, 0 
	MOVWF       FARG_DisplayClock_th+0 
	MOVF        _temh+1, 0 
	MOVWF       FARG_DisplayClock_th+1 
	MOVF        _temm+0, 0 
	MOVWF       FARG_DisplayClock_tm+0 
	MOVF        _temm+1, 0 
	MOVWF       FARG_DisplayClock_tm+1 
	MOVF        _tems+0, 0 
	MOVWF       FARG_DisplayClock_ts+0 
	MOVF        _tems+1, 0 
	MOVWF       FARG_DisplayClock_ts+1 
	CALL        _DisplayClock+0, 0
L_BlinkCreate65:
;SeminarProject.c,508 :: 		}
	GOTO        L_BlinkCreate66
L_BlinkCreate56:
;SeminarProject.c,511 :: 		if(cBlink<=HALFSECOND)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cBlink+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate267
	MOVF        _cBlink+0, 0 
	SUBLW       100
L__BlinkCreate267:
	BTFSS       STATUS+0, 0 
	GOTO        L_BlinkCreate67
;SeminarProject.c,513 :: 		switch(pos)
	GOTO        L_BlinkCreate68
;SeminarProject.c,515 :: 		case 0:{ DisplayCalendar(temyear,temmonth,-1); break; }
L_BlinkCreate70:
	MOVF        _temyear+0, 0 
	MOVWF       FARG_DisplayCalendar_tyear+0 
	MOVF        _temyear+1, 0 
	MOVWF       FARG_DisplayCalendar_tyear+1 
	MOVF        _temmonth+0, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+0 
	MOVF        _temmonth+1, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+1 
	MOVLW       255
	MOVWF       FARG_DisplayCalendar_tday+0 
	MOVLW       255
	MOVWF       FARG_DisplayCalendar_tday+1 
	CALL        _DisplayCalendar+0, 0
	GOTO        L_BlinkCreate69
;SeminarProject.c,516 :: 		case 1:{ DisplayCalendar(temyear,-1,temday); break; }
L_BlinkCreate71:
	MOVF        _temyear+0, 0 
	MOVWF       FARG_DisplayCalendar_tyear+0 
	MOVF        _temyear+1, 0 
	MOVWF       FARG_DisplayCalendar_tyear+1 
	MOVLW       255
	MOVWF       FARG_DisplayCalendar_tmonth+0 
	MOVLW       255
	MOVWF       FARG_DisplayCalendar_tmonth+1 
	MOVF        _temday+0, 0 
	MOVWF       FARG_DisplayCalendar_tday+0 
	MOVF        _temday+1, 0 
	MOVWF       FARG_DisplayCalendar_tday+1 
	CALL        _DisplayCalendar+0, 0
	GOTO        L_BlinkCreate69
;SeminarProject.c,517 :: 		case 2:{ DisplayCalendar(-1,temmonth,temday); break; }
L_BlinkCreate72:
	MOVLW       255
	MOVWF       FARG_DisplayCalendar_tyear+0 
	MOVLW       255
	MOVWF       FARG_DisplayCalendar_tyear+1 
	MOVF        _temmonth+0, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+0 
	MOVF        _temmonth+1, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+1 
	MOVF        _temday+0, 0 
	MOVWF       FARG_DisplayCalendar_tday+0 
	MOVF        _temday+1, 0 
	MOVWF       FARG_DisplayCalendar_tday+1 
	CALL        _DisplayCalendar+0, 0
	GOTO        L_BlinkCreate69
;SeminarProject.c,518 :: 		default: break;
L_BlinkCreate73:
	GOTO        L_BlinkCreate69
;SeminarProject.c,519 :: 		}
L_BlinkCreate68:
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate268
	MOVLW       0
	XORWF       _pos+0, 0 
L__BlinkCreate268:
	BTFSC       STATUS+0, 2 
	GOTO        L_BlinkCreate70
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate269
	MOVLW       1
	XORWF       _pos+0, 0 
L__BlinkCreate269:
	BTFSC       STATUS+0, 2 
	GOTO        L_BlinkCreate71
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate270
	MOVLW       2
	XORWF       _pos+0, 0 
L__BlinkCreate270:
	BTFSC       STATUS+0, 2 
	GOTO        L_BlinkCreate72
	GOTO        L_BlinkCreate73
L_BlinkCreate69:
;SeminarProject.c,520 :: 		if(cBlink<=0)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cBlink+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__BlinkCreate271
	MOVF        _cBlink+0, 0 
	SUBLW       0
L__BlinkCreate271:
	BTFSS       STATUS+0, 0 
	GOTO        L_BlinkCreate74
;SeminarProject.c,521 :: 		cBlink=SECOND1;
	MOVLW       200
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
L_BlinkCreate74:
;SeminarProject.c,522 :: 		}
	GOTO        L_BlinkCreate75
L_BlinkCreate67:
;SeminarProject.c,523 :: 		else DisplayCalendar(temyear,temmonth,temday);
	MOVF        _temyear+0, 0 
	MOVWF       FARG_DisplayCalendar_tyear+0 
	MOVF        _temyear+1, 0 
	MOVWF       FARG_DisplayCalendar_tyear+1 
	MOVF        _temmonth+0, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+0 
	MOVF        _temmonth+1, 0 
	MOVWF       FARG_DisplayCalendar_tmonth+1 
	MOVF        _temday+0, 0 
	MOVWF       FARG_DisplayCalendar_tday+0 
	MOVF        _temday+1, 0 
	MOVWF       FARG_DisplayCalendar_tday+1 
	CALL        _DisplayCalendar+0, 0
L_BlinkCreate75:
;SeminarProject.c,524 :: 		}
L_BlinkCreate66:
;SeminarProject.c,525 :: 		}
L_end_BlinkCreate:
	RETURN      0
; end of _BlinkCreate

_power:

;SeminarProject.c,527 :: 		int power(int a, int n)
;SeminarProject.c,529 :: 		if(n==0) return 1;
	MOVLW       0
	XORWF       FARG_power_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__power273
	MOVLW       0
	XORWF       FARG_power_n+0, 0 
L__power273:
	BTFSS       STATUS+0, 2 
	GOTO        L_power76
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_end_power
L_power76:
;SeminarProject.c,530 :: 		else if(n==1) return a;
	MOVLW       0
	XORWF       FARG_power_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__power274
	MOVLW       1
	XORWF       FARG_power_n+0, 0 
L__power274:
	BTFSS       STATUS+0, 2 
	GOTO        L_power78
	MOVF        FARG_power_a+0, 0 
	MOVWF       R0 
	MOVF        FARG_power_a+1, 0 
	MOVWF       R1 
	GOTO        L_end_power
L_power78:
;SeminarProject.c,531 :: 		else if(n==2) return a*a;
	MOVLW       0
	XORWF       FARG_power_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__power275
	MOVLW       2
	XORWF       FARG_power_n+0, 0 
L__power275:
	BTFSS       STATUS+0, 2 
	GOTO        L_power80
	MOVF        FARG_power_a+0, 0 
	MOVWF       R0 
	MOVF        FARG_power_a+1, 0 
	MOVWF       R1 
	MOVF        FARG_power_a+0, 0 
	MOVWF       R4 
	MOVF        FARG_power_a+1, 0 
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	GOTO        L_end_power
L_power80:
;SeminarProject.c,532 :: 		else if(n==3) return a*a*a;
	MOVLW       0
	XORWF       FARG_power_n+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__power276
	MOVLW       3
	XORWF       FARG_power_n+0, 0 
L__power276:
	BTFSS       STATUS+0, 2 
	GOTO        L_power82
	MOVF        FARG_power_a+0, 0 
	MOVWF       R0 
	MOVF        FARG_power_a+1, 0 
	MOVWF       R1 
	MOVF        FARG_power_a+0, 0 
	MOVWF       R4 
	MOVF        FARG_power_a+1, 0 
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVF        FARG_power_a+0, 0 
	MOVWF       R4 
	MOVF        FARG_power_a+1, 0 
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	GOTO        L_end_power
L_power82:
;SeminarProject.c,533 :: 		else return 0;
	CLRF        R0 
	CLRF        R1 
;SeminarProject.c,534 :: 		}
L_end_power:
	RETURN      0
; end of _power

_CheckKey:

;SeminarProject.c,540 :: 		void CheckKey(void)
;SeminarProject.c,542 :: 		PortValue=PORTB;
	MOVF        PORTB+0, 0 
	MOVWF       _PortValue+0 
	MOVLW       0
	MOVWF       _PortValue+1 
;SeminarProject.c,543 :: 		if(PortValue!=0xef&&PortValue!=0xfb&&PortValue!=0xbf&&PortValue!=0x7f&&PortValue!=0xff) //Press key together ?
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey278
	MOVLW       239
	XORWF       _PortValue+0, 0 
L__CheckKey278:
	BTFSC       STATUS+0, 2 
	GOTO        L_CheckKey86
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey279
	MOVLW       251
	XORWF       _PortValue+0, 0 
L__CheckKey279:
	BTFSC       STATUS+0, 2 
	GOTO        L_CheckKey86
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey280
	MOVLW       191
	XORWF       _PortValue+0, 0 
L__CheckKey280:
	BTFSC       STATUS+0, 2 
	GOTO        L_CheckKey86
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey281
	MOVLW       127
	XORWF       _PortValue+0, 0 
L__CheckKey281:
	BTFSC       STATUS+0, 2 
	GOTO        L_CheckKey86
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey282
	MOVLW       255
	XORWF       _PortValue+0, 0 
L__CheckKey282:
	BTFSC       STATUS+0, 2 
	GOTO        L_CheckKey86
L__CheckKey206:
;SeminarProject.c,545 :: 		cMode=HALFSECOND;cSet=SECOND2;cUp=HALFSECOND;cDown=HALFSECOND;
	MOVLW       100
	MOVWF       _cMode+0 
	MOVLW       0
	MOVWF       _cMode+1 
	MOVLW       144
	MOVWF       _cSet+0 
	MOVLW       1
	MOVWF       _cSet+1 
	MOVLW       100
	MOVWF       _cUp+0 
	MOVLW       0
	MOVWF       _cUp+1 
	MOVLW       100
	MOVWF       _cDown+0 
	MOVLW       0
	MOVWF       _cDown+1 
;SeminarProject.c,546 :: 		fMode=fSet=fUp=fDown=CANCEL;
	CLRF        _fDown+0 
	CLRF        _fDown+1 
	MOVF        _fDown+0, 0 
	MOVWF       _fUp+0 
	MOVF        _fDown+1, 0 
	MOVWF       _fUp+1 
	MOVF        _fUp+0, 0 
	MOVWF       _fSet+0 
	MOVF        _fUp+1, 0 
	MOVWF       _fSet+1 
	MOVF        _fSet+0, 0 
	MOVWF       _fMode+0 
	MOVF        _fSet+1, 0 
	MOVWF       _fMode+1 
;SeminarProject.c,547 :: 		return;
	GOTO        L_end_CheckKey
;SeminarProject.c,548 :: 		}
L_CheckKey86:
;SeminarProject.c,549 :: 		if(PortValue==0xef) cMode--; //Press button mode
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey283
	MOVLW       239
	XORWF       _PortValue+0, 0 
L__CheckKey283:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey87
	MOVLW       1
	SUBWF       _cMode+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _cMode+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _cMode+0 
	MOVF        R1, 0 
	MOVWF       _cMode+1 
L_CheckKey87:
;SeminarProject.c,550 :: 		if(PortValue==0xfb) cSet--; // Press button set
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey284
	MOVLW       251
	XORWF       _PortValue+0, 0 
L__CheckKey284:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey88
	MOVLW       1
	SUBWF       _cSet+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _cSet+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _cSet+0 
	MOVF        R1, 0 
	MOVWF       _cSet+1 
L_CheckKey88:
;SeminarProject.c,551 :: 		if(PortValue==0xbf&&setmode==ON) // Press button up
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey285
	MOVLW       191
	XORWF       _PortValue+0, 0 
L__CheckKey285:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey91
	MOVLW       255
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey286
	MOVLW       255
	XORWF       _setmode+0, 0 
L__CheckKey286:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey91
L__CheckKey205:
;SeminarProject.c,553 :: 		if(--cUp<=0) fUp=SLOWACC;
	MOVLW       1
	SUBWF       _cUp+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _cUp+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _cUp+0 
	MOVF        R1, 0 
	MOVWF       _cUp+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cUp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey287
	MOVF        _cUp+0, 0 
	SUBLW       0
L__CheckKey287:
	BTFSS       STATUS+0, 0 
	GOTO        L_CheckKey92
	MOVLW       2
	MOVWF       _fUp+0 
	MOVLW       0
	MOVWF       _fUp+1 
L_CheckKey92:
;SeminarProject.c,554 :: 		}
L_CheckKey91:
;SeminarProject.c,555 :: 		if(PortValue==0x7f&&setmode==ON) //Press button down
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey288
	MOVLW       127
	XORWF       _PortValue+0, 0 
L__CheckKey288:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey95
	MOVLW       255
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey289
	MOVLW       255
	XORWF       _setmode+0, 0 
L__CheckKey289:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey95
L__CheckKey204:
;SeminarProject.c,557 :: 		if(--cDown<=0) fDown=SLOWACC;
	MOVLW       1
	SUBWF       _cDown+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _cDown+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _cDown+0 
	MOVF        R1, 0 
	MOVWF       _cDown+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cDown+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey290
	MOVF        _cDown+0, 0 
	SUBLW       0
L__CheckKey290:
	BTFSS       STATUS+0, 0 
	GOTO        L_CheckKey96
	MOVLW       2
	MOVWF       _fDown+0 
	MOVLW       0
	MOVWF       _fDown+1 
L_CheckKey96:
;SeminarProject.c,558 :: 		}
L_CheckKey95:
;SeminarProject.c,559 :: 		if((cMode!=HALFSECOND||cSet!=SECOND2||cUp!=HALFSECOND||cDown!=HALFSECOND)&&PortValue==0xff) //No key pressed and not default value
	MOVLW       0
	XORWF       _cMode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey291
	MOVLW       100
	XORWF       _cMode+0, 0 
L__CheckKey291:
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey203
	MOVF        _cSet+1, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey292
	MOVLW       144
	XORWF       _cSet+0, 0 
L__CheckKey292:
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey203
	MOVLW       0
	XORWF       _cUp+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey293
	MOVLW       100
	XORWF       _cUp+0, 0 
L__CheckKey293:
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey203
	MOVLW       0
	XORWF       _cDown+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey294
	MOVLW       100
	XORWF       _cDown+0, 0 
L__CheckKey294:
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey203
	GOTO        L_CheckKey101
L__CheckKey203:
	MOVLW       0
	XORWF       _PortValue+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey295
	MOVLW       255
	XORWF       _PortValue+0, 0 
L__CheckKey295:
	BTFSS       STATUS+0, 2 
	GOTO        L_CheckKey101
L__CheckKey202:
;SeminarProject.c,561 :: 		if(cMode>0&&cMode<=HALFSECOND - PIECEOFTIME) fMode=ACCESS;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cMode+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey296
	MOVF        _cMode+0, 0 
	SUBLW       0
L__CheckKey296:
	BTFSC       STATUS+0, 0 
	GOTO        L_CheckKey104
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cMode+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey297
	MOVF        _cMode+0, 0 
	SUBLW       80
L__CheckKey297:
	BTFSS       STATUS+0, 0 
	GOTO        L_CheckKey104
L__CheckKey201:
	MOVLW       1
	MOVWF       _fMode+0 
	MOVLW       0
	MOVWF       _fMode+1 
L_CheckKey104:
;SeminarProject.c,562 :: 		if(cSet>0&&cSet<=SECOND2 - PIECEOFTIME) fSet=ACCESS;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cSet+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey298
	MOVF        _cSet+0, 0 
	SUBLW       0
L__CheckKey298:
	BTFSC       STATUS+0, 0 
	GOTO        L_CheckKey107
	MOVLW       128
	XORLW       1
	MOVWF       R0 
	MOVLW       128
	XORWF       _cSet+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey299
	MOVF        _cSet+0, 0 
	SUBLW       124
L__CheckKey299:
	BTFSS       STATUS+0, 0 
	GOTO        L_CheckKey107
L__CheckKey200:
	MOVLW       1
	MOVWF       _fSet+0 
	MOVLW       0
	MOVWF       _fSet+1 
L_CheckKey107:
;SeminarProject.c,563 :: 		if(cUp>0&&cUp<=HALFSECOND - PIECEOFTIME) fUp=FASTACC;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cUp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey300
	MOVF        _cUp+0, 0 
	SUBLW       0
L__CheckKey300:
	BTFSC       STATUS+0, 0 
	GOTO        L_CheckKey110
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cUp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey301
	MOVF        _cUp+0, 0 
	SUBLW       80
L__CheckKey301:
	BTFSS       STATUS+0, 0 
	GOTO        L_CheckKey110
L__CheckKey199:
	MOVLW       1
	MOVWF       _fUp+0 
	MOVLW       0
	MOVWF       _fUp+1 
	GOTO        L_CheckKey111
L_CheckKey110:
;SeminarProject.c,564 :: 		else fUp=CANCEL;
	CLRF        _fUp+0 
	CLRF        _fUp+1 
L_CheckKey111:
;SeminarProject.c,565 :: 		if(cDown>0&&cDown<=HALFSECOND - PIECEOFTIME) fDown=FASTACC;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cDown+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey302
	MOVF        _cDown+0, 0 
	SUBLW       0
L__CheckKey302:
	BTFSC       STATUS+0, 0 
	GOTO        L_CheckKey114
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _cDown+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__CheckKey303
	MOVF        _cDown+0, 0 
	SUBLW       80
L__CheckKey303:
	BTFSS       STATUS+0, 0 
	GOTO        L_CheckKey114
L__CheckKey198:
	MOVLW       1
	MOVWF       _fDown+0 
	MOVLW       0
	MOVWF       _fDown+1 
	GOTO        L_CheckKey115
L_CheckKey114:
;SeminarProject.c,566 :: 		else fDown=CANCEL;
	CLRF        _fDown+0 
	CLRF        _fDown+1 
L_CheckKey115:
;SeminarProject.c,567 :: 		cMode=HALFSECOND;cSet=SECOND2;cUp=HALFSECOND;cDown=HALFSECOND;
	MOVLW       100
	MOVWF       _cMode+0 
	MOVLW       0
	MOVWF       _cMode+1 
	MOVLW       144
	MOVWF       _cSet+0 
	MOVLW       1
	MOVWF       _cSet+1 
	MOVLW       100
	MOVWF       _cUp+0 
	MOVLW       0
	MOVWF       _cUp+1 
	MOVLW       100
	MOVWF       _cDown+0 
	MOVLW       0
	MOVWF       _cDown+1 
;SeminarProject.c,568 :: 		}
L_CheckKey101:
;SeminarProject.c,569 :: 		}
L_end_CheckKey:
	RETURN      0
; end of _CheckKey

_KeyMode:

;SeminarProject.c,571 :: 		void KeyMode(void)
;SeminarProject.c,573 :: 		fMode=CANCEL;
	CLRF        _fMode+0 
	CLRF        _fMode+1 
;SeminarProject.c,574 :: 		if(setmode==OFF) mode=~mode;
	MOVLW       0
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyMode305
	MOVLW       0
	XORWF       _setmode+0, 0 
L__KeyMode305:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyMode116
	COMF        _mode+0, 1 
	COMF        _mode+1, 1 
	GOTO        L_KeyMode117
L_KeyMode116:
;SeminarProject.c,577 :: 		pos=0;
	CLRF        _pos+0 
	CLRF        _pos+1 
;SeminarProject.c,578 :: 		cBlink=SECOND1;
	MOVLW       200
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
;SeminarProject.c,579 :: 		setmode=OFF;  // cancel setmode
	CLRF        _setmode+0 
	CLRF        _setmode+1 
;SeminarProject.c,580 :: 		}
L_KeyMode117:
;SeminarProject.c,581 :: 		}
L_end_KeyMode:
	RETURN      0
; end of _KeyMode

_KeySet:

;SeminarProject.c,583 :: 		void KeySet(void)
;SeminarProject.c,585 :: 		fSet=CANCEL;
	CLRF        _fSet+0 
	CLRF        _fSet+1 
;SeminarProject.c,586 :: 		if(setmode==OFF)
	MOVLW       0
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeySet307
	MOVLW       0
	XORWF       _setmode+0, 0 
L__KeySet307:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeySet118
;SeminarProject.c,588 :: 		cBlink=HALFSECOND;
	MOVLW       100
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
;SeminarProject.c,589 :: 		setmode=ON;
	MOVLW       255
	MOVWF       _setmode+0 
	MOVLW       255
	MOVWF       _setmode+1 
;SeminarProject.c,590 :: 		if(mode==CLOCK) {tems=second;temm=minute;temh=hour;}
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeySet308
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeySet308:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeySet119
	MOVF        _second+0, 0 
	MOVWF       _tems+0 
	MOVF        _second+1, 0 
	MOVWF       _tems+1 
	MOVF        _minute+0, 0 
	MOVWF       _temm+0 
	MOVF        _minute+1, 0 
	MOVWF       _temm+1 
	MOVF        _hour+0, 0 
	MOVWF       _temh+0 
	MOVF        _hour+1, 0 
	MOVWF       _temh+1 
	GOTO        L_KeySet120
L_KeySet119:
;SeminarProject.c,591 :: 		else {temday=day;temmonth=month;temyear=year;}
	MOVF        _day+0, 0 
	MOVWF       _temday+0 
	MOVF        _day+1, 0 
	MOVWF       _temday+1 
	MOVF        _month+0, 0 
	MOVWF       _temmonth+0 
	MOVF        _month+1, 0 
	MOVWF       _temmonth+1 
	MOVF        _year+0, 0 
	MOVWF       _temyear+0 
	MOVF        _year+1, 0 
	MOVWF       _temyear+1 
L_KeySet120:
;SeminarProject.c,593 :: 		}
	GOTO        L_KeySet121
L_KeySet118:
;SeminarProject.c,596 :: 		cBlink=HALFSECOND;
	MOVLW       100
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
;SeminarProject.c,597 :: 		pos++;
	MOVLW       1
	ADDWF       _pos+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _pos+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _pos+0 
	MOVF        R1, 0 
	MOVWF       _pos+1 
;SeminarProject.c,598 :: 		if(pos>=3)
	MOVLW       128
	XORWF       _pos+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeySet309
	MOVLW       3
	SUBWF       _pos+0, 0 
L__KeySet309:
	BTFSS       STATUS+0, 0 
	GOTO        L_KeySet122
;SeminarProject.c,600 :: 		pos=0;
	CLRF        _pos+0 
	CLRF        _pos+1 
;SeminarProject.c,601 :: 		cBlink=SECOND1;
	MOVLW       200
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
;SeminarProject.c,602 :: 		if(mode == CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeySet310
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeySet310:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeySet123
;SeminarProject.c,604 :: 		second=tems;minute=temm;hour=temh; //save new data
	MOVF        _tems+0, 0 
	MOVWF       _second+0 
	MOVF        _tems+1, 0 
	MOVWF       _second+1 
	MOVF        _temm+0, 0 
	MOVWF       _minute+0 
	MOVF        _temm+1, 0 
	MOVWF       _minute+1 
	MOVF        _temh+0, 0 
	MOVWF       _hour+0 
	MOVF        _temh+1, 0 
	MOVWF       _hour+1 
;SeminarProject.c,605 :: 		}
	GOTO        L_KeySet124
L_KeySet123:
;SeminarProject.c,608 :: 		day=temday;month=temmonth;year=temyear; //save new data
	MOVF        _temday+0, 0 
	MOVWF       _day+0 
	MOVF        _temday+1, 0 
	MOVWF       _day+1 
	MOVF        _temmonth+0, 0 
	MOVWF       _month+0 
	MOVF        _temmonth+1, 0 
	MOVWF       _month+1 
	MOVF        _temyear+0, 0 
	MOVWF       _year+0 
	MOVF        _temyear+1, 0 
	MOVWF       _year+1 
;SeminarProject.c,609 :: 		}
L_KeySet124:
;SeminarProject.c,610 :: 		setmode=OFF;
	CLRF        _setmode+0 
	CLRF        _setmode+1 
;SeminarProject.c,611 :: 		}
L_KeySet122:
;SeminarProject.c,612 :: 		}
L_KeySet121:
;SeminarProject.c,613 :: 		}
L_end_KeySet:
	RETURN      0
; end of _KeySet

_KeyUp:

;SeminarProject.c,615 :: 		void KeyUp(void)
;SeminarProject.c,617 :: 		if(fUp==SLOWACC)
	MOVLW       0
	XORWF       _fUp+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp312
	MOVLW       2
	XORWF       _fUp+0, 0 
L__KeyUp312:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp125
;SeminarProject.c,619 :: 		if(cUp<=(0-PIECEOFTIME)) cUp=0;
	MOVLW       127
	MOVWF       R0 
	MOVLW       128
	XORWF       _cUp+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp313
	MOVF        _cUp+0, 0 
	SUBLW       236
L__KeyUp313:
	BTFSS       STATUS+0, 0 
	GOTO        L_KeyUp126
	CLRF        _cUp+0 
	CLRF        _cUp+1 
	GOTO        L_KeyUp127
L_KeyUp126:
;SeminarProject.c,620 :: 		else return;
	GOTO        L_end_KeyUp
L_KeyUp127:
;SeminarProject.c,621 :: 		}
L_KeyUp125:
;SeminarProject.c,622 :: 		switch(pos)
	GOTO        L_KeyUp128
;SeminarProject.c,624 :: 		case 0:
L_KeyUp130:
;SeminarProject.c,626 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp314
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeyUp314:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp131
;SeminarProject.c,628 :: 		if(++(temh)==24) temh=0;
	MOVLW       1
	ADDWF       _temh+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _temh+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temh+0 
	MOVF        R1, 0 
	MOVWF       _temh+1 
	MOVLW       0
	XORWF       _temh+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp315
	MOVLW       24
	XORWF       _temh+0, 0 
L__KeyUp315:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp132
	CLRF        _temh+0 
	CLRF        _temh+1 
L_KeyUp132:
;SeminarProject.c,629 :: 		}
	GOTO        L_KeyUp133
L_KeyUp131:
;SeminarProject.c,631 :: 		if(++(temday)==DayMax(temyear,temmonth)+1) temday=1;
	MOVLW       1
	ADDWF       _temday+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _temday+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temday+0 
	MOVF        R1, 0 
	MOVWF       _temday+1 
	MOVF        _temyear+0, 0 
	MOVWF       FARG_DayMax_yr+0 
	MOVF        _temyear+1, 0 
	MOVWF       FARG_DayMax_yr+1 
	MOVF        _temmonth+0, 0 
	MOVWF       FARG_DayMax_mth+0 
	MOVF        _temmonth+1, 0 
	MOVWF       FARG_DayMax_mth+1 
	CALL        _DayMax+0, 0
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVF        _temday+1, 0 
	XORWF       R3, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp316
	MOVF        R2, 0 
	XORWF       _temday+0, 0 
L__KeyUp316:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp134
	MOVLW       1
	MOVWF       _temday+0 
	MOVLW       0
	MOVWF       _temday+1 
L_KeyUp134:
L_KeyUp133:
;SeminarProject.c,632 :: 		break;
	GOTO        L_KeyUp129
;SeminarProject.c,634 :: 		case 1:
L_KeyUp135:
;SeminarProject.c,636 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp317
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeyUp317:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp136
;SeminarProject.c,638 :: 		if(++(temm)==60) temm=0;
	MOVLW       1
	ADDWF       _temm+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _temm+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temm+0 
	MOVF        R1, 0 
	MOVWF       _temm+1 
	MOVLW       0
	XORWF       _temm+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp318
	MOVLW       60
	XORWF       _temm+0, 0 
L__KeyUp318:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp137
	CLRF        _temm+0 
	CLRF        _temm+1 
L_KeyUp137:
;SeminarProject.c,639 :: 		}
	GOTO        L_KeyUp138
L_KeyUp136:
;SeminarProject.c,641 :: 		if(++(temmonth)==13) temmonth=1;
	MOVLW       1
	ADDWF       _temmonth+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _temmonth+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temmonth+0 
	MOVF        R1, 0 
	MOVWF       _temmonth+1 
	MOVLW       0
	XORWF       _temmonth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp319
	MOVLW       13
	XORWF       _temmonth+0, 0 
L__KeyUp319:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp139
	MOVLW       1
	MOVWF       _temmonth+0 
	MOVLW       0
	MOVWF       _temmonth+1 
L_KeyUp139:
L_KeyUp138:
;SeminarProject.c,642 :: 		break;
	GOTO        L_KeyUp129
;SeminarProject.c,644 :: 		case 2:
L_KeyUp140:
;SeminarProject.c,646 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp320
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeyUp320:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp141
;SeminarProject.c,648 :: 		if(++(tems)==60) tems=0;
	MOVLW       1
	ADDWF       _tems+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _tems+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _tems+0 
	MOVF        R1, 0 
	MOVWF       _tems+1 
	MOVLW       0
	XORWF       _tems+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp321
	MOVLW       60
	XORWF       _tems+0, 0 
L__KeyUp321:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyUp142
	CLRF        _tems+0 
	CLRF        _tems+1 
L_KeyUp142:
;SeminarProject.c,649 :: 		}
	GOTO        L_KeyUp143
L_KeyUp141:
;SeminarProject.c,650 :: 		else temyear++;
	MOVLW       1
	ADDWF       _temyear+0, 0 
	MOVWF       R0 
	MOVLW       0
	ADDWFC      _temyear+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temyear+0 
	MOVF        R1, 0 
	MOVWF       _temyear+1 
L_KeyUp143:
;SeminarProject.c,652 :: 		break;
	GOTO        L_KeyUp129
;SeminarProject.c,654 :: 		default:break;
L_KeyUp144:
	GOTO        L_KeyUp129
;SeminarProject.c,655 :: 		}
L_KeyUp128:
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp322
	MOVLW       0
	XORWF       _pos+0, 0 
L__KeyUp322:
	BTFSC       STATUS+0, 2 
	GOTO        L_KeyUp130
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp323
	MOVLW       1
	XORWF       _pos+0, 0 
L__KeyUp323:
	BTFSC       STATUS+0, 2 
	GOTO        L_KeyUp135
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyUp324
	MOVLW       2
	XORWF       _pos+0, 0 
L__KeyUp324:
	BTFSC       STATUS+0, 2 
	GOTO        L_KeyUp140
	GOTO        L_KeyUp144
L_KeyUp129:
;SeminarProject.c,656 :: 		cBlink=SECOND1;
	MOVLW       200
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
;SeminarProject.c,657 :: 		fUp=CANCEL;
	CLRF        _fUp+0 
	CLRF        _fUp+1 
;SeminarProject.c,658 :: 		}
L_end_KeyUp:
	RETURN      0
; end of _KeyUp

_KeyDown:

;SeminarProject.c,660 :: 		void KeyDown(void)
;SeminarProject.c,662 :: 		if(fDown==SLOWACC)
	MOVLW       0
	XORWF       _fDown+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown326
	MOVLW       2
	XORWF       _fDown+0, 0 
L__KeyDown326:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown145
;SeminarProject.c,664 :: 		if(cDown==-20) cDown=0;
	MOVLW       255
	XORWF       _cDown+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown327
	MOVLW       236
	XORWF       _cDown+0, 0 
L__KeyDown327:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown146
	CLRF        _cDown+0 
	CLRF        _cDown+1 
	GOTO        L_KeyDown147
L_KeyDown146:
;SeminarProject.c,665 :: 		else return;
	GOTO        L_end_KeyDown
L_KeyDown147:
;SeminarProject.c,666 :: 		}
L_KeyDown145:
;SeminarProject.c,667 :: 		switch(pos)
	GOTO        L_KeyDown148
;SeminarProject.c,669 :: 		case 0:
L_KeyDown150:
;SeminarProject.c,671 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown328
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeyDown328:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown151
;SeminarProject.c,673 :: 		if(--(temh)==-1) temh=23;
	MOVLW       1
	SUBWF       _temh+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _temh+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temh+0 
	MOVF        R1, 0 
	MOVWF       _temh+1 
	MOVLW       255
	XORWF       _temh+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown329
	MOVLW       255
	XORWF       _temh+0, 0 
L__KeyDown329:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown152
	MOVLW       23
	MOVWF       _temh+0 
	MOVLW       0
	MOVWF       _temh+1 
L_KeyDown152:
;SeminarProject.c,674 :: 		}
	GOTO        L_KeyDown153
L_KeyDown151:
;SeminarProject.c,676 :: 		if(--(temday)==0) temday=DayMax(temyear,temmonth);
	MOVLW       1
	SUBWF       _temday+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _temday+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temday+0 
	MOVF        R1, 0 
	MOVWF       _temday+1 
	MOVLW       0
	XORWF       _temday+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown330
	MOVLW       0
	XORWF       _temday+0, 0 
L__KeyDown330:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown154
	MOVF        _temyear+0, 0 
	MOVWF       FARG_DayMax_yr+0 
	MOVF        _temyear+1, 0 
	MOVWF       FARG_DayMax_yr+1 
	MOVF        _temmonth+0, 0 
	MOVWF       FARG_DayMax_mth+0 
	MOVF        _temmonth+1, 0 
	MOVWF       FARG_DayMax_mth+1 
	CALL        _DayMax+0, 0
	MOVF        R0, 0 
	MOVWF       _temday+0 
	MOVF        R1, 0 
	MOVWF       _temday+1 
L_KeyDown154:
L_KeyDown153:
;SeminarProject.c,677 :: 		break;
	GOTO        L_KeyDown149
;SeminarProject.c,679 :: 		case 1:
L_KeyDown155:
;SeminarProject.c,681 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown331
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeyDown331:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown156
;SeminarProject.c,683 :: 		if(--(temm)==-1) temm=59;
	MOVLW       1
	SUBWF       _temm+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _temm+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temm+0 
	MOVF        R1, 0 
	MOVWF       _temm+1 
	MOVLW       255
	XORWF       _temm+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown332
	MOVLW       255
	XORWF       _temm+0, 0 
L__KeyDown332:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown157
	MOVLW       59
	MOVWF       _temm+0 
	MOVLW       0
	MOVWF       _temm+1 
L_KeyDown157:
;SeminarProject.c,684 :: 		}
	GOTO        L_KeyDown158
L_KeyDown156:
;SeminarProject.c,686 :: 		if(--(temmonth)==0) temmonth=12;
	MOVLW       1
	SUBWF       _temmonth+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _temmonth+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temmonth+0 
	MOVF        R1, 0 
	MOVWF       _temmonth+1 
	MOVLW       0
	XORWF       _temmonth+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown333
	MOVLW       0
	XORWF       _temmonth+0, 0 
L__KeyDown333:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown159
	MOVLW       12
	MOVWF       _temmonth+0 
	MOVLW       0
	MOVWF       _temmonth+1 
L_KeyDown159:
L_KeyDown158:
;SeminarProject.c,687 :: 		break;
	GOTO        L_KeyDown149
;SeminarProject.c,689 :: 		case 2:
L_KeyDown160:
;SeminarProject.c,691 :: 		if(mode==CLOCK)
	MOVLW       0
	XORWF       _mode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown334
	MOVLW       0
	XORWF       _mode+0, 0 
L__KeyDown334:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown161
;SeminarProject.c,693 :: 		if(--(tems)==-1) tems=59;
	MOVLW       1
	SUBWF       _tems+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _tems+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _tems+0 
	MOVF        R1, 0 
	MOVWF       _tems+1 
	MOVLW       255
	XORWF       _tems+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown335
	MOVLW       255
	XORWF       _tems+0, 0 
L__KeyDown335:
	BTFSS       STATUS+0, 2 
	GOTO        L_KeyDown162
	MOVLW       59
	MOVWF       _tems+0 
	MOVLW       0
	MOVWF       _tems+1 
L_KeyDown162:
;SeminarProject.c,694 :: 		}
	GOTO        L_KeyDown163
L_KeyDown161:
;SeminarProject.c,695 :: 		else temyear--;
	MOVLW       1
	SUBWF       _temyear+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _temyear+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _temyear+0 
	MOVF        R1, 0 
	MOVWF       _temyear+1 
L_KeyDown163:
;SeminarProject.c,696 :: 		break;
	GOTO        L_KeyDown149
;SeminarProject.c,698 :: 		default:break;
L_KeyDown164:
	GOTO        L_KeyDown149
;SeminarProject.c,699 :: 		}
L_KeyDown148:
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown336
	MOVLW       0
	XORWF       _pos+0, 0 
L__KeyDown336:
	BTFSC       STATUS+0, 2 
	GOTO        L_KeyDown150
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown337
	MOVLW       1
	XORWF       _pos+0, 0 
L__KeyDown337:
	BTFSC       STATUS+0, 2 
	GOTO        L_KeyDown155
	MOVLW       0
	XORWF       _pos+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__KeyDown338
	MOVLW       2
	XORWF       _pos+0, 0 
L__KeyDown338:
	BTFSC       STATUS+0, 2 
	GOTO        L_KeyDown160
	GOTO        L_KeyDown164
L_KeyDown149:
;SeminarProject.c,700 :: 		cBlink=SECOND1;
	MOVLW       200
	MOVWF       _cBlink+0 
	MOVLW       0
	MOVWF       _cBlink+1 
;SeminarProject.c,701 :: 		fDown=CANCEL;
	CLRF        _fDown+0 
	CLRF        _fDown+1 
;SeminarProject.c,702 :: 		}
L_end_KeyDown:
	RETURN      0
; end of _KeyDown

_timer0_init:

;SeminarProject.c,707 :: 		void timer0_init() // normal mode
;SeminarProject.c,709 :: 		INTCON.GIE=1;
	BSF         INTCON+0, 7 
;SeminarProject.c,710 :: 		INTCON.TMR0IE=1;
	BSF         INTCON+0, 5 
;SeminarProject.c,711 :: 		INTCON.TMR0IF=0;
	BCF         INTCON+0, 2 
;SeminarProject.c,713 :: 		T0CON=0x02; //-> Prescale: 5Mhz / 8 = 625000 Hz
	MOVLW       2
	MOVWF       T0CON+0 
;SeminarProject.c,714 :: 		TMR0L=0xca;
	MOVLW       202
	MOVWF       TMR0L+0 
;SeminarProject.c,715 :: 		TMR0H=0xf3; // -> Counter: 0xf3ca = 62410 -> 0xffff=65535 : 65535 - 62410 = 3125 count
	MOVLW       243
	MOVWF       TMR0H+0 
;SeminarProject.c,717 :: 		cTime=SECOND1; //-> 1 second = 200 interrupt
	MOVLW       200
	MOVWF       _cTime+0 
	MOVLW       0
	MOVWF       _cTime+1 
;SeminarProject.c,718 :: 		}
L_end_timer0_init:
	RETURN      0
; end of _timer0_init

_interrupt:

;SeminarProject.c,720 :: 		void interrupt()
;SeminarProject.c,722 :: 		if(INTCON.TMR0IF)
	BTFSS       INTCON+0, 2 
	GOTO        L_interrupt165
;SeminarProject.c,724 :: 		INTCON.TMR0IF=0; //clear interrupt flag
	BCF         INTCON+0, 2 
;SeminarProject.c,725 :: 		TMR0L=0xca;
	MOVLW       202
	MOVWF       TMR0L+0 
;SeminarProject.c,726 :: 		TMR0H=0xf3;
	MOVLW       243
	MOVWF       TMR0H+0 
;SeminarProject.c,727 :: 		cTime--;
	MOVLW       1
	SUBWF       _cTime+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _cTime+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _cTime+0 
	MOVF        R1, 0 
	MOVWF       _cTime+1 
;SeminarProject.c,728 :: 		CheckKey();
	CALL        _CheckKey+0, 0
;SeminarProject.c,729 :: 		if(setmode==ON) cBlink--;
	MOVLW       255
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__interrupt342
	MOVLW       255
	XORWF       _setmode+0, 0 
L__interrupt342:
	BTFSS       STATUS+0, 2 
	GOTO        L_interrupt166
	MOVLW       1
	SUBWF       _cBlink+0, 0 
	MOVWF       R0 
	MOVLW       0
	SUBWFB      _cBlink+1, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       _cBlink+0 
	MOVF        R1, 0 
	MOVWF       _cBlink+1 
L_interrupt166:
;SeminarProject.c,731 :: 		}
L_interrupt165:
;SeminarProject.c,732 :: 		}
L_end_interrupt:
L__interrupt341:
	RETFIE      1
; end of _interrupt

_main:

;SeminarProject.c,737 :: 		void main (void)
;SeminarProject.c,739 :: 		INTCON2.RBPU=0;
	BCF         INTCON2+0, 7 
;SeminarProject.c,740 :: 		TRISB=0xff;
	MOVLW       255
	MOVWF       TRISB+0 
;SeminarProject.c,741 :: 		TRISA=0x00;
	CLRF        TRISA+0 
;SeminarProject.c,742 :: 		PORTA=0;
	CLRF        PORTA+0 
;SeminarProject.c,743 :: 		ADCON1=0x0F;
	MOVLW       15
	MOVWF       ADCON1+0 
;SeminarProject.c,745 :: 		cMode=HALFSECOND;cSet=SECOND2;cUp=HALFSECOND;cDown=HALFSECOND;
	MOVLW       100
	MOVWF       _cMode+0 
	MOVLW       0
	MOVWF       _cMode+1 
	MOVLW       144
	MOVWF       _cSet+0 
	MOVLW       1
	MOVWF       _cSet+1 
	MOVLW       100
	MOVWF       _cUp+0 
	MOVLW       0
	MOVWF       _cUp+1 
	MOVLW       100
	MOVWF       _cDown+0 
	MOVLW       0
	MOVWF       _cDown+1 
;SeminarProject.c,746 :: 		hour=0;minute=0;second=0;                      //default hour,minute,second
	CLRF        _hour+0 
	CLRF        _hour+1 
	CLRF        _minute+0 
	CLRF        _minute+1 
	CLRF        _second+0 
	CLRF        _second+1 
;SeminarProject.c,747 :: 		year=2000;month=1;day=1;          //default year,month,day
	MOVLW       208
	MOVWF       _year+0 
	MOVLW       7
	MOVWF       _year+1 
	MOVLW       1
	MOVWF       _month+0 
	MOVLW       0
	MOVWF       _month+1 
	MOVLW       1
	MOVWF       _day+0 
	MOVLW       0
	MOVWF       _day+1 
;SeminarProject.c,748 :: 		pos=0;                    //default setting position
	CLRF        _pos+0 
	CLRF        _pos+1 
;SeminarProject.c,749 :: 		mode=CLOCK;                 // default mode
	CLRF        _mode+0 
	CLRF        _mode+1 
;SeminarProject.c,750 :: 		setmode=OFF;
	CLRF        _setmode+0 
	CLRF        _setmode+1 
;SeminarProject.c,751 :: 		fMode=CANCEL; fSet=CANCEL; fUp=CANCEL; fDown=CANCEL;
	CLRF        _fMode+0 
	CLRF        _fMode+1 
	CLRF        _fSet+0 
	CLRF        _fSet+1 
	CLRF        _fUp+0 
	CLRF        _fUp+1 
	CLRF        _fDown+0 
	CLRF        _fDown+1 
;SeminarProject.c,752 :: 		fsync=OFF;
	CLRF        _fsync+0 
	CLRF        _fsync+1 
;SeminarProject.c,753 :: 		i=0;j=0;
	CLRF        _i+0 
	CLRF        _i+1 
	CLRF        _j+0 
	CLRF        _j+1 
;SeminarProject.c,755 :: 		UART1_Init(9600);
	MOVLW       129
	MOVWF       SPBRG+0 
	BSF         TXSTA+0, 2, 0
	CALL        _UART1_Init+0, 0
;SeminarProject.c,756 :: 		Delay_ms(HALFSECOND);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       138
	MOVWF       R12, 0
	MOVLW       85
	MOVWF       R13, 0
L_main167:
	DECFSZ      R13, 1, 1
	BRA         L_main167
	DECFSZ      R12, 1, 1
	BRA         L_main167
	DECFSZ      R11, 1, 1
	BRA         L_main167
	NOP
	NOP
;SeminarProject.c,758 :: 		DisplayClock(hour,minute,second);
	MOVF        _hour+0, 0 
	MOVWF       FARG_DisplayClock_th+0 
	MOVF        _hour+1, 0 
	MOVWF       FARG_DisplayClock_th+1 
	MOVF        _minute+0, 0 
	MOVWF       FARG_DisplayClock_tm+0 
	MOVF        _minute+1, 0 
	MOVWF       FARG_DisplayClock_tm+1 
	MOVF        _second+0, 0 
	MOVWF       FARG_DisplayClock_ts+0 
	MOVF        _second+1, 0 
	MOVWF       FARG_DisplayClock_ts+1 
	CALL        _DisplayClock+0, 0
;SeminarProject.c,759 :: 		timer0_init();
	CALL        _timer0_init+0, 0
;SeminarProject.c,760 :: 		T0CON.TMR0ON=1;
	BSF         T0CON+0, 7 
;SeminarProject.c,761 :: 		while(1)
L_main168:
;SeminarProject.c,763 :: 		if(fsync==OFF)
	MOVLW       0
	XORWF       _fsync+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main344
	MOVLW       0
	XORWF       _fsync+0, 0 
L__main344:
	BTFSS       STATUS+0, 2 
	GOTO        L_main170
;SeminarProject.c,765 :: 		TimeTracking();
	CALL        _TimeTracking+0, 0
;SeminarProject.c,766 :: 		if(fMode==ACCESS) KeyMode();
	MOVLW       0
	XORWF       _fMode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main345
	MOVLW       1
	XORWF       _fMode+0, 0 
L__main345:
	BTFSS       STATUS+0, 2 
	GOTO        L_main171
	CALL        _KeyMode+0, 0
L_main171:
;SeminarProject.c,767 :: 		if(fSet==ACCESS) KeySet();
	MOVLW       0
	XORWF       _fSet+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main346
	MOVLW       1
	XORWF       _fSet+0, 0 
L__main346:
	BTFSS       STATUS+0, 2 
	GOTO        L_main172
	CALL        _KeySet+0, 0
L_main172:
;SeminarProject.c,768 :: 		if(setmode==ON)
	MOVLW       255
	XORWF       _setmode+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main347
	MOVLW       255
	XORWF       _setmode+0, 0 
L__main347:
	BTFSS       STATUS+0, 2 
	GOTO        L_main173
;SeminarProject.c,770 :: 		if(fUp!=CANCEL) KeyUp();
	MOVLW       0
	XORWF       _fUp+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main348
	MOVLW       0
	XORWF       _fUp+0, 0 
L__main348:
	BTFSC       STATUS+0, 2 
	GOTO        L_main174
	CALL        _KeyUp+0, 0
L_main174:
;SeminarProject.c,771 :: 		if(fDown!=CANCEL) KeyDown();
	MOVLW       0
	XORWF       _fDown+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main349
	MOVLW       0
	XORWF       _fDown+0, 0 
L__main349:
	BTFSC       STATUS+0, 2 
	GOTO        L_main175
	CALL        _KeyDown+0, 0
L_main175:
;SeminarProject.c,772 :: 		BlinkCreate();
	CALL        _BlinkCreate+0, 0
;SeminarProject.c,773 :: 		}
L_main173:
;SeminarProject.c,774 :: 		}
L_main170:
;SeminarProject.c,775 :: 		if (UART1_Data_Ready()) {     // If data is received,
	CALL        _UART1_Data_Ready+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main176
;SeminarProject.c,776 :: 		uart_rd = UART1_Read();     // read the received data,
	CALL        _UART1_Read+0, 0
	MOVF        R0, 0 
	MOVWF       _uart_rd+0 
;SeminarProject.c,777 :: 		if(i<6)
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main350
	MOVLW       6
	SUBWF       _i+0, 0 
L__main350:
	BTFSC       STATUS+0, 0 
	GOTO        L_main177
;SeminarProject.c,779 :: 		if(uart_rd!='-' && uart_rd!=':' && uart_rd!=' ')
	MOVF        _uart_rd+0, 0 
	XORLW       45
	BTFSC       STATUS+0, 2 
	GOTO        L_main180
	MOVF        _uart_rd+0, 0 
	XORLW       58
	BTFSC       STATUS+0, 2 
	GOTO        L_main180
	MOVF        _uart_rd+0, 0 
	XORLW       32
	BTFSC       STATUS+0, 2 
	GOTO        L_main180
L__main207:
;SeminarProject.c,780 :: 		sync_time[i]+=(uart_rd-'0')*power(10,j++);
	MOVF        _i+0, 0 
	MOVWF       R0 
	MOVF        _i+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _sync_time+0
	ADDWF       R0, 0 
	MOVWF       FLOC__main+2 
	MOVLW       hi_addr(_sync_time+0)
	ADDWFC      R1, 0 
	MOVWF       FLOC__main+3 
	MOVLW       48
	SUBWF       _uart_rd+0, 0 
	MOVWF       FLOC__main+0 
	CLRF        FLOC__main+1 
	MOVLW       0
	SUBWFB      FLOC__main+1, 1 
	MOVLW       10
	MOVWF       FARG_power_a+0 
	MOVLW       0
	MOVWF       FARG_power_a+1 
	MOVF        _j+0, 0 
	MOVWF       FARG_power_n+0 
	MOVF        _j+1, 0 
	MOVWF       FARG_power_n+1 
	CALL        _power+0, 0
	MOVF        FLOC__main+0, 0 
	MOVWF       R4 
	MOVF        FLOC__main+1, 0 
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVFF       FLOC__main+2, FSR0L
	MOVFF       FLOC__main+3, FSR0H
	MOVF        POSTINC0+0, 0 
	MOVWF       R2 
	MOVF        POSTINC0+0, 0 
	MOVWF       R3 
	MOVF        R2, 0 
	ADDWF       R0, 1 
	MOVF        R3, 0 
	ADDWFC      R1, 1 
	MOVFF       FLOC__main+2, FSR1L
	MOVFF       FLOC__main+3, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
	MOVF        R1, 0 
	MOVWF       POSTINC1+0 
	INFSNZ      _j+0, 1 
	INCF        _j+1, 1 
	GOTO        L_main181
L_main180:
;SeminarProject.c,783 :: 		if((++i)==6)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main351
	MOVLW       6
	XORWF       _i+0, 0 
L__main351:
	BTFSS       STATUS+0, 2 
	GOTO        L_main182
;SeminarProject.c,785 :: 		second=sync_time[0];
	MOVF        _sync_time+0, 0 
	MOVWF       _second+0 
	MOVF        _sync_time+1, 0 
	MOVWF       _second+1 
;SeminarProject.c,786 :: 		minute=sync_time[1];
	MOVF        _sync_time+2, 0 
	MOVWF       _minute+0 
	MOVF        _sync_time+3, 0 
	MOVWF       _minute+1 
;SeminarProject.c,787 :: 		hour=sync_time[2];
	MOVF        _sync_time+4, 0 
	MOVWF       _hour+0 
	MOVF        _sync_time+5, 0 
	MOVWF       _hour+1 
;SeminarProject.c,788 :: 		day=sync_time[3];
	MOVF        _sync_time+6, 0 
	MOVWF       _day+0 
	MOVF        _sync_time+7, 0 
	MOVWF       _day+1 
;SeminarProject.c,789 :: 		month=sync_time[4];
	MOVF        _sync_time+8, 0 
	MOVWF       _month+0 
	MOVF        _sync_time+9, 0 
	MOVWF       _month+1 
;SeminarProject.c,790 :: 		year=sync_time[5];
	MOVF        _sync_time+10, 0 
	MOVWF       _year+0 
	MOVF        _sync_time+11, 0 
	MOVWF       _year+1 
;SeminarProject.c,791 :: 		for(i=0;i<6;i++)
	CLRF        _i+0 
	CLRF        _i+1 
L_main183:
	MOVLW       128
	XORWF       _i+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main352
	MOVLW       6
	SUBWF       _i+0, 0 
L__main352:
	BTFSC       STATUS+0, 0 
	GOTO        L_main184
;SeminarProject.c,792 :: 		sync_time[i]=0;
	MOVF        _i+0, 0 
	MOVWF       R0 
	MOVF        _i+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _sync_time+0
	ADDWF       R0, 0 
	MOVWF       FSR1L 
	MOVLW       hi_addr(_sync_time+0)
	ADDWFC      R1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
	CLRF        POSTINC1+0 
;SeminarProject.c,791 :: 		for(i=0;i<6;i++)
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;SeminarProject.c,792 :: 		sync_time[i]=0;
	GOTO        L_main183
L_main184:
;SeminarProject.c,793 :: 		i=0;
	CLRF        _i+0 
	CLRF        _i+1 
;SeminarProject.c,795 :: 		}
L_main182:
;SeminarProject.c,796 :: 		j=0;
	CLRF        _j+0 
	CLRF        _j+1 
;SeminarProject.c,797 :: 		}
L_main181:
;SeminarProject.c,798 :: 		}
L_main177:
;SeminarProject.c,799 :: 		}
L_main176:
;SeminarProject.c,805 :: 		}
	GOTO        L_main168
;SeminarProject.c,806 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
