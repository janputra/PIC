opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 7 "C:\Users\LENOVO\Desktop\IRreceiver\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\LENOVO\Desktop\IRreceiver\main.c"
	dw 0x3F32 ;#
;COMMON:	_main->_UART_Init
;COMMON:	_UART_Init->___aldiv
;BANK0:	_UART_Init->___aldiv
;BANK0:	_main->_UART_Init
;COMMON:	_UART_Init->___aldiv
;BANK0:	_UART_Init->___aldiv
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Data_Ready
	FNCALL	_main,_UART_Read
	FNCALL	_UART_Init,___aldiv
	FNROOT	_main
	global	_delayus_variable
	global	_input1
	global	_ADCON0
psect	text37,local,class=CODE,delta=2
global __ptext37
__ptext37:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_PORTD
_PORTD  equ     8
	global	_PORTE
_PORTE  equ     9
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_PSPIF
_PSPIF  equ     103
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RD0
_RD0  equ     64
	global	_RD1
_RD1  equ     65
	global	_RD2
_RD2  equ     66
	global	_RD3
_RD3  equ     67
	global	_RD4
_RD4  equ     68
	global	_RD5
_RD5  equ     69
	global	_RD6
_RD6  equ     70
	global	_RD7
_RD7  equ     71
	global	_RE0
_RE0  equ     72
	global	_RE1
_RE1  equ     73
	global	_RE2
_RE2  equ     74
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TRISD
_TRISD  equ     136
	global	_TRISE
_TRISE  equ     137
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_IBF
_IBF  equ     1103
	global	_IBOV
_IBOV  equ     1101
	global	_INTEDG
_INTEDG  equ     1038
	global	_OBF
_OBF  equ     1102
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_PSPIE
_PSPIE  equ     1127
	global	_PSPMODE
_PSPMODE  equ     1100
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRISD0
_TRISD0  equ     1088
	global	_TRISD1
_TRISD1  equ     1089
	global	_TRISD2
_TRISD2  equ     1090
	global	_TRISD3
_TRISD3  equ     1091
	global	_TRISD4
_TRISD4  equ     1092
	global	_TRISD5
_TRISD5  equ     1093
	global	_TRISD6
_TRISD6  equ     1094
	global	_TRISD7
_TRISD7  equ     1095
	global	_TRISE0
_TRISE0  equ     1096
	global	_TRISE1
_TRISE1  equ     1097
	global	_TRISE2
_TRISE2  equ     1098
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	file	"IRReceiver.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_input1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_delayus_variable:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_UART_Data_Ready
??_UART_Data_Ready: ;@ 0x0
	global	??_UART_Read
??_UART_Read: ;@ 0x0
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	?_UART_Read
?_UART_Read: ;@ 0x0
	global	?_UART_Data_Ready
?_UART_Data_Ready: ;@ 0x0
	ds	1
	global	??_main
??_main: ;@ 0x1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x3
	ds	4
	global	UART_Init@x
UART_Init@x:	; 2 bytes @ 0x7
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___aldiv
?___aldiv: ;@ 0x0
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x0
	ds	4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x4
	ds	4
	global	??_UART_Init
??_UART_Init: ;@ 0x8
	ds	12
	global	?_UART_Init
?_UART_Init: ;@ 0x14
	global	UART_Init@baudrate
UART_Init@baudrate:	; 4 bytes @ 0x14
	ds	4
	global	?_main
?_main: ;@ 0x18
;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      10
; BANK0           80     24      25
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___aldiv	long  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  528   0.00
;          _UART_Init
;    _UART_Data_Ready
;          _UART_Read
;  _UART_Data_Ready                                   0    0    0   0.00
;  _UART_Read                                         0    0    0   0.00
;  _UART_Init                                        14    4  528   0.00
;                                    7 COMMO    2
;                                    8 BANK0   16
;            ___aldiv
;    ___aldiv                                         7    8  354   0.00
;                                    0 COMMO    7
;                                    0 BANK0    8
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      9       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      23       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     18      19       5       31.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      23      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 25 in file "C:\Users\LENOVO\Desktop\IRreceiver\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_UART_Init
;		_UART_Data_Ready
;		_UART_Read
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\LENOVO\Desktop\IRreceiver\main.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 7: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3F32");
;main.c: 21: unsigned char input1;
;main.c: 24: void main()
;main.c: 25: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l30000548:	
;main.c: 26: TRISC=0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	
l30000549:	
	line	27
;main.c: 27: TRISD=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(136)^080h	;volatile
	
l30000550:	
	line	28
;main.c: 28: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(134)^080h	;volatile
	
l30000551:	
	line	30
;main.c: 30: UART_Init(4800);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000552:	
	line	35
;main.c: 33: {
;main.c: 35: if(UART_Data_Ready())
	fcall	_UART_Data_Ready
	xorlw	0
	skipnz
	goto	u741
	goto	u740
u741:
	goto	l30000554
u740:
	
l30000553:	
	line	37
;main.c: 36: {
;main.c: 37: input1=UART_Read();
	fcall	_UART_Read
	movwf	(_input1)
	
l30000554:	
	line	40
;main.c: 38: }
;main.c: 40: if (input1=='A')
	movf	(_input1),w
	xorlw	041h
	skipz
	goto	u751
	goto	u750
u751:
	goto	l30000556
u750:
	
l30000555:	
	line	42
;main.c: 41: {
;main.c: 42: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	43
;main.c: 43: RB6=0;
	bcf	(54/8),(54)&7
	line	44
;main.c: 44: RB5=0;
	bcf	(53/8),(53)&7
	line	45
;main.c: 45: RB4=0;
	bcf	(52/8),(52)&7
	line	46
;main.c: 46: RB3=0;
	bcf	(51/8),(51)&7
	line	47
;main.c: 47: RB2=0;
	bcf	(50/8),(50)&7
	line	48
;main.c: 48: RB1=0;
	bcf	(49/8),(49)&7
	line	49
;main.c: 49: RD7=0;
	bcf	(71/8),(71)&7
	
l30000556:	
	line	51
;main.c: 50: }
;main.c: 51: if (input1=='B')
	movf	(_input1),w
	xorlw	042h
	skipz
	goto	u761
	goto	u760
u761:
	goto	l30000558
u760:
	
l30000557:	
	line	53
;main.c: 52: {
;main.c: 53: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	54
;main.c: 54: RB6=1;
	bsf	(54/8),(54)&7
	line	55
;main.c: 55: RB5=0;
	bcf	(53/8),(53)&7
	line	56
;main.c: 56: RB4=0;
	bcf	(52/8),(52)&7
	line	57
;main.c: 57: RB3=0;
	bcf	(51/8),(51)&7
	line	58
;main.c: 58: RB2=0;
	bcf	(50/8),(50)&7
	line	59
;main.c: 59: RB1=0;
	bcf	(49/8),(49)&7
	line	60
;main.c: 60: RD7=0;
	bcf	(71/8),(71)&7
	
l30000558:	
	line	62
;main.c: 61: }
;main.c: 62: if (input1=='C')
	movf	(_input1),w
	xorlw	043h
	skipz
	goto	u771
	goto	u770
u771:
	goto	l30000560
u770:
	
l30000559:	
	line	64
;main.c: 63: {
;main.c: 64: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	65
;main.c: 65: RB6=0;
	bcf	(54/8),(54)&7
	line	66
;main.c: 66: RB5=1;
	bsf	(53/8),(53)&7
	line	67
;main.c: 67: RB4=0;
	bcf	(52/8),(52)&7
	line	68
;main.c: 68: RB3=0;
	bcf	(51/8),(51)&7
	line	69
;main.c: 69: RB2=0;
	bcf	(50/8),(50)&7
	line	70
;main.c: 70: RB1=0;
	bcf	(49/8),(49)&7
	line	71
;main.c: 71: RD7=0;
	bcf	(71/8),(71)&7
	
l30000560:	
	line	73
;main.c: 72: }
;main.c: 73: if (input1=='D')
	movf	(_input1),w
	xorlw	044h
	skipz
	goto	u781
	goto	u780
u781:
	goto	l30000562
u780:
	
l30000561:	
	line	75
;main.c: 74: {
;main.c: 75: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	76
;main.c: 76: RB6=0;
	bcf	(54/8),(54)&7
	line	77
;main.c: 77: RB5=0;
	bcf	(53/8),(53)&7
	line	78
;main.c: 78: RB4=1;
	bsf	(52/8),(52)&7
	line	79
;main.c: 79: RB3=0;
	bcf	(51/8),(51)&7
	line	80
;main.c: 80: RB2=0;
	bcf	(50/8),(50)&7
	line	81
;main.c: 81: RB1=0;
	bcf	(49/8),(49)&7
	line	82
;main.c: 82: RD7=0;
	bcf	(71/8),(71)&7
	
l30000562:	
	line	84
;main.c: 83: }
;main.c: 84: if (input1=='E')
	movf	(_input1),w
	xorlw	045h
	skipz
	goto	u791
	goto	u790
u791:
	goto	l30000564
u790:
	
l30000563:	
	line	86
;main.c: 85: {
;main.c: 86: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	87
;main.c: 87: RB6=0;
	bcf	(54/8),(54)&7
	line	88
;main.c: 88: RB5=0;
	bcf	(53/8),(53)&7
	line	89
;main.c: 89: RB4=0;
	bcf	(52/8),(52)&7
	line	90
;main.c: 90: RB3=1;
	bsf	(51/8),(51)&7
	line	91
;main.c: 91: RB2=0;
	bcf	(50/8),(50)&7
	line	92
;main.c: 92: RB1=0;
	bcf	(49/8),(49)&7
	line	93
;main.c: 93: RD7=0;
	bcf	(71/8),(71)&7
	
l30000564:	
	line	95
;main.c: 94: }
;main.c: 95: if (input1=='F')
	movf	(_input1),w
	xorlw	046h
	skipz
	goto	u801
	goto	u800
u801:
	goto	l30000566
u800:
	
l30000565:	
	line	97
;main.c: 96: {
;main.c: 97: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	98
;main.c: 98: RB6=0;
	bcf	(54/8),(54)&7
	line	99
;main.c: 99: RB5=0;
	bcf	(53/8),(53)&7
	line	100
;main.c: 100: RB4=0;
	bcf	(52/8),(52)&7
	line	101
;main.c: 101: RB3=0;
	bcf	(51/8),(51)&7
	line	102
;main.c: 102: RB2=1;
	bsf	(50/8),(50)&7
	line	103
;main.c: 103: RB1=0;
	bcf	(49/8),(49)&7
	line	104
;main.c: 104: RD7=0;
	bcf	(71/8),(71)&7
	
l30000566:	
	line	106
;main.c: 105: }
;main.c: 106: if (input1=='G')
	movf	(_input1),w
	xorlw	047h
	skipz
	goto	u811
	goto	u810
u811:
	goto	l30000568
u810:
	
l30000567:	
	line	108
;main.c: 107: {
;main.c: 108: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	109
;main.c: 109: RB6=0;
	bcf	(54/8),(54)&7
	line	110
;main.c: 110: RB5=0;
	bcf	(53/8),(53)&7
	line	111
;main.c: 111: RB4=0;
	bcf	(52/8),(52)&7
	line	112
;main.c: 112: RB3=0;
	bcf	(51/8),(51)&7
	line	113
;main.c: 113: RB2=0;
	bcf	(50/8),(50)&7
	line	114
;main.c: 114: RB1=1;
	bsf	(49/8),(49)&7
	line	115
;main.c: 115: RD7=0;
	bcf	(71/8),(71)&7
	
l30000568:	
	line	117
;main.c: 116: }
;main.c: 117: if (input1=='H')
	movf	(_input1),w
	xorlw	048h
	skipz
	goto	u821
	goto	u820
u821:
	goto	l30000570
u820:
	
l30000569:	
	line	119
;main.c: 118: {
;main.c: 119: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	120
;main.c: 120: RB6=0;
	bcf	(54/8),(54)&7
	line	121
;main.c: 121: RB5=0;
	bcf	(53/8),(53)&7
	line	122
;main.c: 122: RB4=0;
	bcf	(52/8),(52)&7
	line	123
;main.c: 123: RB3=0;
	bcf	(51/8),(51)&7
	line	124
;main.c: 124: RB2=0;
	bcf	(50/8),(50)&7
	line	125
;main.c: 125: RB1=0;
	bcf	(49/8),(49)&7
	line	126
;main.c: 126: RD7=1;
	bsf	(71/8),(71)&7
	
l30000570:	
	line	128
;main.c: 127: }
;main.c: 128: if (input1=='I')
	movf	(_input1),w
	xorlw	049h
	skipz
	goto	u831
	goto	u830
u831:
	goto	l30000572
u830:
	
l30000571:	
	line	130
;main.c: 129: {
;main.c: 130: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	131
;main.c: 131: RB6=0;
	bcf	(54/8),(54)&7
	line	132
;main.c: 132: RB5=1;
	bsf	(53/8),(53)&7
	line	133
;main.c: 133: RB4=0;
	bcf	(52/8),(52)&7
	line	134
;main.c: 134: RB3=1;
	bsf	(51/8),(51)&7
	line	135
;main.c: 135: RB2=0;
	bcf	(50/8),(50)&7
	line	136
;main.c: 136: RB1=1;
	bsf	(49/8),(49)&7
	line	137
;main.c: 137: RD7=0;
	bcf	(71/8),(71)&7
	
l30000572:	
	line	139
;main.c: 138: }
;main.c: 139: if (input1=='J')
	movf	(_input1),w
	xorlw	04Ah
	skipz
	goto	u841
	goto	u840
u841:
	goto	l30000574
u840:
	
l30000573:	
	line	141
;main.c: 140: {
;main.c: 141: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	142
;main.c: 142: RB6=1;
	bsf	(54/8),(54)&7
	line	143
;main.c: 143: RB5=0;
	bcf	(53/8),(53)&7
	line	144
;main.c: 144: RB4=1;
	bsf	(52/8),(52)&7
	line	145
;main.c: 145: RB3=0;
	bcf	(51/8),(51)&7
	line	146
;main.c: 146: RB2=1;
	bsf	(50/8),(50)&7
	line	147
;main.c: 147: RB1=0;
	bcf	(49/8),(49)&7
	line	148
;main.c: 148: RD7=1;
	bsf	(71/8),(71)&7
	
l30000574:	
	line	150
;main.c: 149: }
;main.c: 150: if (input1=='K')
	movf	(_input1),w
	xorlw	04Bh
	skipz
	goto	u851
	goto	u850
u851:
	goto	l30000576
u850:
	
l30000575:	
	line	152
;main.c: 151: {
;main.c: 152: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	153
;main.c: 153: RB6=1;
	bsf	(54/8),(54)&7
	line	154
;main.c: 154: RB5=0;
	bcf	(53/8),(53)&7
	line	155
;main.c: 155: RB4=0;
	bcf	(52/8),(52)&7
	line	156
;main.c: 156: RB3=1;
	bsf	(51/8),(51)&7
	line	157
;main.c: 157: RB2=1;
	bsf	(50/8),(50)&7
	line	158
;main.c: 158: RB1=0;
	bcf	(49/8),(49)&7
	line	159
;main.c: 159: RD7=0;
	bcf	(71/8),(71)&7
	
l30000576:	
	line	161
;main.c: 160: }
;main.c: 161: if (input1=='L')
	movf	(_input1),w
	xorlw	04Ch
	skipz
	goto	u861
	goto	u860
u861:
	goto	l30000578
u860:
	
l30000577:	
	line	163
;main.c: 162: {
;main.c: 163: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	164
;main.c: 164: RB6=0;
	bcf	(54/8),(54)&7
	line	165
;main.c: 165: RB5=1;
	bsf	(53/8),(53)&7
	line	166
;main.c: 166: RB4=1;
	bsf	(52/8),(52)&7
	line	167
;main.c: 167: RB3=0;
	bcf	(51/8),(51)&7
	line	168
;main.c: 168: RB2=0;
	bcf	(50/8),(50)&7
	line	169
;main.c: 169: RB1=1;
	bsf	(49/8),(49)&7
	line	170
;main.c: 170: RD7=1;
	bsf	(71/8),(71)&7
	
l30000578:	
	line	173
;main.c: 171: }
;main.c: 173: if (input1=='M')
	movf	(_input1),w
	xorlw	04Dh
	skipz
	goto	u871
	goto	u870
u871:
	goto	l30000552
u870:
	
l30000579:	
	line	175
;main.c: 174: {
;main.c: 175: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	176
;main.c: 176: RB6=0;
	bcf	(54/8),(54)&7
	line	177
;main.c: 177: RB5=0;
	bcf	(53/8),(53)&7
	line	178
;main.c: 178: RB4=0;
	bcf	(52/8),(52)&7
	line	179
;main.c: 179: RB3=0;
	bcf	(51/8),(51)&7
	line	180
;main.c: 180: RB2=0;
	bcf	(50/8),(50)&7
	line	181
;main.c: 181: RB1=0;
	bcf	(49/8),(49)&7
	line	182
;main.c: 182: RD7=0;
	bcf	(71/8),(71)&7
	goto	l30000552
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	185
	signat	_main,88
	global	_UART_Data_Ready
psect	text38,local,class=CODE,delta=2
global __ptext38
__ptext38:

; *************** function _UART_Data_Ready *****************
; Defined at:
;		line 30 in file "C:\Users\LENOVO\Desktop\IRreceiver\uart.h"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text38
	file	"C:\Users\LENOVO\Desktop\IRreceiver\uart.h"
	line	30
	global	__size_of_UART_Data_Ready
	__size_of_UART_Data_Ready	equ	__end_of_UART_Data_Ready-_UART_Data_Ready
;uart.h: 29: char UART_Data_Ready()
;uart.h: 30: {
	
_UART_Data_Ready:	
	opt stack 7
; Regs used in _UART_Data_Ready: [wreg]
	line	31
	
l30000405:	
;uart.h: 31: return RCIF;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(101/8),(101)&7
	movlw	1
	
l42:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Data_Ready
	__end_of_UART_Data_Ready:
; =============== function _UART_Data_Ready ends ============

psect	text39,local,class=CODE,delta=2
global __ptext39
__ptext39:
	line	32
	signat	_UART_Data_Ready,89
	global	_UART_Read

; *************** function _UART_Read *****************
; Defined at:
;		line 34 in file "C:\Users\LENOVO\Desktop\IRreceiver\uart.h"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text39
	file	"C:\Users\LENOVO\Desktop\IRreceiver\uart.h"
	line	34
	global	__size_of_UART_Read
	__size_of_UART_Read	equ	__end_of_UART_Read-_UART_Read
;uart.h: 33: char UART_Read()
;uart.h: 34: {
	
_UART_Read:	
	opt stack 7
; Regs used in _UART_Read: [wreg]
	
l30000407:	
	
l44:	
	line	36
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u91
	goto	u90
u91:
	goto	l44
u90:
	
l30000408:	
	line	37
;uart.h: 37: return RCREG;
	movf	(26),w	;volatile
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Read
	__end_of_UART_Read:
; =============== function _UART_Read ends ============

psect	text40,local,class=CODE,delta=2
global __ptext40
__ptext40:
	line	38
	signat	_UART_Read,89
	global	_UART_Init

; *************** function _UART_Init *****************
; Defined at:
;		line 2 in file "C:\Users\LENOVO\Desktop\IRreceiver\uart.h"
; Parameters:    Size  Location     Type
;  baudrate        4   20[BANK0 ] const long 
; Auto vars:     Size  Location     Type
;  x               2    7[COMMON] unsigned int 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2      16       0       0       0
;      Temp:    12
;      Total:   18
; This function calls:
;		___aldiv
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text40
	file	"C:\Users\LENOVO\Desktop\IRreceiver\uart.h"
	line	2
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
;uart.h: 1: char UART_Init(const long int baudrate)
;uart.h: 2: {
	
_UART_Init:	
	opt stack 7
; Regs used in _UART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	4
	
l30000535:	
;uart.h: 3: unsigned int x;
;uart.h: 4: x = (4000000 - baudrate*64)/(baudrate*64);
	movlw	low(03D0900h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_UART_Init+0+0)
	movlw	high(03D0900h)
	movwf	(??_UART_Init+0+0+1)
	movlw	low highword(03D0900h)
	movwf	(??_UART_Init+0+0+2)
	movlw	high highword(03D0900h)
	movwf	(??_UART_Init+0+0+3)
	movf	(UART_Init@baudrate),w
	movwf	(??_UART_Init+4+0)
	movf	(UART_Init@baudrate+1),w
	movwf	(??_UART_Init+4+0+1)
	movf	(UART_Init@baudrate+2),w
	movwf	(??_UART_Init+4+0+2)
	movf	(UART_Init@baudrate+3),w
	movwf	(??_UART_Init+4+0+3)
	movlw	06h
u665:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u660:
	addlw	-1
	skipz
	goto	u665
	comf	(??_UART_Init+4+0),f
	comf	(??_UART_Init+4+1),f
	comf	(??_UART_Init+4+2),f
	comf	(??_UART_Init+4+3),f
	incf	(??_UART_Init+4+0),f
	skipnz
	incf	(??_UART_Init+4+1),f
	skipnz
	incf	(??_UART_Init+4+2),f
	skipnz
	incf	(??_UART_Init+4+3),f
	movf	0+(??_UART_Init+4+0),w
	addwf	(??_UART_Init+0+0),f
	movf	1+(??_UART_Init+4+0),w
	skipnc
	incfsz	1+(??_UART_Init+4+0),w
	goto	u670
	goto	u671
u670:
	addwf	(??_UART_Init+0+1),f
u671:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u672
	goto	u673
u672:
	addwf	(??_UART_Init+0+2),f
u673:
	movf	3+(??_UART_Init+4+0),w
	skipnc
	incf	3+(??_UART_Init+4+0),w
	addwf	(??_UART_Init+0+3),f
	movf	3+(??_UART_Init+0+0),w
	movwf	(?___aldiv+3)
	movf	2+(??_UART_Init+0+0),w
	movwf	(?___aldiv+2)
	movf	1+(??_UART_Init+0+0),w
	movwf	(?___aldiv+1)
	movf	0+(??_UART_Init+0+0),w
	movwf	(?___aldiv)

	movf	(UART_Init@baudrate),w
	movwf	(??_UART_Init+8+0)
	movf	(UART_Init@baudrate+1),w
	movwf	(??_UART_Init+8+0+1)
	movf	(UART_Init@baudrate+2),w
	movwf	(??_UART_Init+8+0+2)
	movf	(UART_Init@baudrate+3),w
	movwf	(??_UART_Init+8+0+3)
	movlw	06h
u685:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u680:
	addlw	-1
	skipz
	goto	u685
	movf	3+(??_UART_Init+8+0),w
	movwf	3+(?___aldiv)+04h
	movf	2+(??_UART_Init+8+0),w
	movwf	2+(?___aldiv)+04h
	movf	1+(??_UART_Init+8+0),w
	movwf	1+(?___aldiv)+04h
	movf	0+(??_UART_Init+8+0),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___aldiv)),w
	clrf	(UART_Init@x+1)
	addwf	(UART_Init@x+1)
	movf	(0+(?___aldiv)),w
	clrf	(UART_Init@x)
	addwf	(UART_Init@x)

	
l30000536:	
	line	5
;uart.h: 5: if(x>255)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipc
	goto	u691
	goto	u690
u691:
	goto	l30000539
u690:
	
l30000537:	
	line	7
;uart.h: 6: {
;uart.h: 7: x = (4000000 - baudrate*16)/(baudrate*16);
	movlw	low(03D0900h)
	movwf	(??_UART_Init+0+0)
	movlw	high(03D0900h)
	movwf	(??_UART_Init+0+0+1)
	movlw	low highword(03D0900h)
	movwf	(??_UART_Init+0+0+2)
	movlw	high highword(03D0900h)
	movwf	(??_UART_Init+0+0+3)
	movf	(UART_Init@baudrate),w
	movwf	(??_UART_Init+4+0)
	movf	(UART_Init@baudrate+1),w
	movwf	(??_UART_Init+4+0+1)
	movf	(UART_Init@baudrate+2),w
	movwf	(??_UART_Init+4+0+2)
	movf	(UART_Init@baudrate+3),w
	movwf	(??_UART_Init+4+0+3)
	movlw	04h
u705:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u700:
	addlw	-1
	skipz
	goto	u705
	comf	(??_UART_Init+4+0),f
	comf	(??_UART_Init+4+1),f
	comf	(??_UART_Init+4+2),f
	comf	(??_UART_Init+4+3),f
	incf	(??_UART_Init+4+0),f
	skipnz
	incf	(??_UART_Init+4+1),f
	skipnz
	incf	(??_UART_Init+4+2),f
	skipnz
	incf	(??_UART_Init+4+3),f
	movf	0+(??_UART_Init+4+0),w
	addwf	(??_UART_Init+0+0),f
	movf	1+(??_UART_Init+4+0),w
	skipnc
	incfsz	1+(??_UART_Init+4+0),w
	goto	u710
	goto	u711
u710:
	addwf	(??_UART_Init+0+1),f
u711:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u712
	goto	u713
u712:
	addwf	(??_UART_Init+0+2),f
u713:
	movf	3+(??_UART_Init+4+0),w
	skipnc
	incf	3+(??_UART_Init+4+0),w
	addwf	(??_UART_Init+0+3),f
	movf	3+(??_UART_Init+0+0),w
	movwf	(?___aldiv+3)
	movf	2+(??_UART_Init+0+0),w
	movwf	(?___aldiv+2)
	movf	1+(??_UART_Init+0+0),w
	movwf	(?___aldiv+1)
	movf	0+(??_UART_Init+0+0),w
	movwf	(?___aldiv)

	movf	(UART_Init@baudrate),w
	movwf	(??_UART_Init+8+0)
	movf	(UART_Init@baudrate+1),w
	movwf	(??_UART_Init+8+0+1)
	movf	(UART_Init@baudrate+2),w
	movwf	(??_UART_Init+8+0+2)
	movf	(UART_Init@baudrate+3),w
	movwf	(??_UART_Init+8+0+3)
	movlw	04h
u725:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u720:
	addlw	-1
	skipz
	goto	u725
	movf	3+(??_UART_Init+8+0),w
	movwf	3+(?___aldiv)+04h
	movf	2+(??_UART_Init+8+0),w
	movwf	2+(?___aldiv)+04h
	movf	1+(??_UART_Init+8+0),w
	movwf	1+(?___aldiv)+04h
	movf	0+(??_UART_Init+8+0),w
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___aldiv)),w
	clrf	(UART_Init@x+1)
	addwf	(UART_Init@x+1)
	movf	(0+(?___aldiv)),w
	clrf	(UART_Init@x)
	addwf	(UART_Init@x)

	
l30000538:	
	line	8
;uart.h: 8: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	
l30000539:	
	line	10
;uart.h: 9: }
;uart.h: 10: if(x<256)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipnc
	goto	u731
	goto	u730
u731:
	goto	l38
u730:
	
l30000540:	
	line	12
;uart.h: 11: {
;uart.h: 12: SPBRG = x;
	movf	(UART_Init@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	
l30000541:	
	line	13
;uart.h: 13: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	
l30000542:	
	line	14
;uart.h: 14: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l30000543:	
	line	15
;uart.h: 15: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	
l30000544:	
	line	16
;uart.h: 16: TRISC6 = 1;
	bsf	(1086/8)^080h,(1086)&7
	
l30000545:	
	line	17
;uart.h: 17: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l30000546:	
	line	18
;uart.h: 18: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l38:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
; =============== function _UART_Init ends ============

psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:
	line	22
	signat	_UART_Init,4217
	global	___aldiv

; *************** function ___aldiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\aldiv.c"
; Parameters:    Size  Location     Type
;  dividend        4    0[BANK0 ] long 
;  divisor         4    4[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  quotient        4    3[COMMON] long 
;  sign            1    2[COMMON] unsigned char 
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  4    0[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         7       8       0       0       0
;      Temp:     1
;      Total:   15
; This function calls:
;		Nothing
; This function is called by:
;		_UART_Init
; This function uses a non-reentrant model
; 
psect	text41
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000580:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___aldiv@sign)
	
l30000581:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___aldiv@divisor+3),7
	goto	u881
	goto	u880
u881:
	goto	l30000584
u880:
	
l30000582:	
	line	11
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	
l30000583:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000584:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u891
	goto	u890
u891:
	goto	l30000587
u890:
	
l30000585:	
	line	15
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	
l30000586:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000587:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000588:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u901
	goto	u900
u901:
	goto	l30000598
u900:
	
l30000589:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000591
	
l30000590:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u915:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u915
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000591:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u921
	goto	u920
u921:
	goto	l30000590
u920:
	
l30000592:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u935:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u935
	
l30000593:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u945
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u945
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u945
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u945:
	skipc
	goto	u941
	goto	u940
u941:
	goto	l30000596
u940:
	
l30000594:	
	line	28
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	
l30000595:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000596:	
	line	31
	movlw	01h
u955:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u955

	
l30000597:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u961
	goto	u960
u961:
	goto	l30000592
u960:
	
l30000598:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u970
	goto	l30000600
u970:
	
l30000599:	
	line	35
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	
l30000600:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l296:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:
	line	37
	signat	___aldiv,8316
	end
