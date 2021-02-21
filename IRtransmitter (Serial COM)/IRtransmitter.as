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
# 5 "C:\Users\LENOVO\Desktop\IRtransmitter\IRtransmitter.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\LENOVO\Desktop\IRtransmitter\IRtransmitter.c"
	dw 0x3F32 ;#
;COMMON:	_main->_UART_Init
;COMMON:	_UART_Init->___aldiv
;BANK0:	_UART_Init->___aldiv
;BANK0:	_main->_UART_Init
;COMMON:	_UART_Init->___aldiv
;BANK0:	_UART_Init->___aldiv
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Write
	FNCALL	_main,_UART_Stop
	FNCALL	_UART_Init,___aldiv
	FNROOT	_main
	global	_delayus_variable
	global	_ADCON0
psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:
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
	file	"IRtransmitter.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_delayus_variable:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_UART_Write
??_UART_Write: ;@ 0x0
	global	?_UART_Stop
?_UART_Stop: ;@ 0x0
	global	??_UART_Stop
??_UART_Stop: ;@ 0x0
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	UART_Write@data
UART_Write@data:	; 1 bytes @ 0x0
	ds	1
	global	?_UART_Write
?_UART_Write: ;@ 0x1
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
;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      10
; BANK0           80     24      24
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;?___aldiv	long  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  538   0.00
;          _UART_Init
;         _UART_Write
;          _UART_Stop
;  _UART_Write                                        1    0   10   0.00
;                                    0 COMMO    1
;  _UART_Stop                                         0    0    0   0.00
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
;ABS                  0      0      22       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     18      18       5       30.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      22      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 33 in file "C:\Users\LENOVO\Desktop\IRtransmitter\IRtransmitter.c"
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
;		_UART_Write
;		_UART_Stop
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\LENOVO\Desktop\IRtransmitter\IRtransmitter.c"
	line	33
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;IRtransmitter.c: 32: void main()
;IRtransmitter.c: 33: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l30000676:	
;IRtransmitter.c: 34: TRISB=0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	35
;IRtransmitter.c: 35: TRISC=0b10111011;
	movlw	(0BBh)
	movwf	(135)^080h	;volatile
	
l30000677:	
	line	36
;IRtransmitter.c: 36: PORTC=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	
l30000678:	
	line	38
;IRtransmitter.c: 38: PR2 = 0b00011001 ;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	
l30000679:	
	line	39
;IRtransmitter.c: 39: T2CON = 0b00000100 ;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	
l30000680:	
	line	40
;IRtransmitter.c: 40: CCPR1L = 0b00011001 ;
	movlw	(019h)
	movwf	(21)	;volatile
	
l30000681:	
	line	41
;IRtransmitter.c: 41: CCP1CON = 0b00111100 ;
	movlw	(03Ch)
	movwf	(23)	;volatile
	
l30000682:	
	line	53
;IRtransmitter.c: 44: {
;IRtransmitter.c: 53: if(RC5==0){
	btfsc	(61/8),(61)&7
	goto	u981
	goto	u980
u981:
	goto	l30000689
u980:
	
l30000683:	
	line	55
;IRtransmitter.c: 55: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000684:	
	line	56
;IRtransmitter.c: 56: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000685:	
	line	57
;IRtransmitter.c: 57: UART_Write('A');
	movlw	(041h)
	fcall	_UART_Write
	
l30000686:	
	line	59
;IRtransmitter.c: 59: while(RC5==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(61/8),(61)&7
	goto	u991
	goto	u990
u991:
	goto	l30000686
u990:
	
l30000687:	
	line	60
;IRtransmitter.c: 60: UART_Stop();
	fcall	_UART_Stop
	
l30000688:	
	line	61
;IRtransmitter.c: 61: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000689:	
	line	64
;IRtransmitter.c: 62: }
;IRtransmitter.c: 64: if(RB3==0){
	btfsc	(51/8),(51)&7
	goto	u1001
	goto	u1000
u1001:
	goto	l30000696
u1000:
	
l30000690:	
	line	65
;IRtransmitter.c: 65: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000691:	
	line	66
;IRtransmitter.c: 66: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000692:	
	line	67
;IRtransmitter.c: 67: UART_Write('B');
	movlw	(042h)
	fcall	_UART_Write
	
l30000693:	
	line	69
;IRtransmitter.c: 69: while(RB3==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u1011
	goto	u1010
u1011:
	goto	l30000693
u1010:
	
l30000694:	
	line	70
;IRtransmitter.c: 70: UART_Stop();
	fcall	_UART_Stop
	
l30000695:	
	line	71
;IRtransmitter.c: 71: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000696:	
	line	73
;IRtransmitter.c: 72: }
;IRtransmitter.c: 73: if(RB7==0){
	btfsc	(55/8),(55)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l30000703
u1020:
	
l30000697:	
	line	74
;IRtransmitter.c: 74: UART_Init(4800) ;
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000698:	
	line	75
;IRtransmitter.c: 75: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000699:	
	line	76
;IRtransmitter.c: 76: UART_Write('C');
	movlw	(043h)
	fcall	_UART_Write
	
l30000700:	
	line	78
;IRtransmitter.c: 78: while(RB7==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(55/8),(55)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l30000700
u1030:
	
l30000701:	
	line	79
;IRtransmitter.c: 79: UART_Stop();
	fcall	_UART_Stop
	
l30000702:	
	line	80
;IRtransmitter.c: 80: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000703:	
	line	82
;IRtransmitter.c: 81: }
;IRtransmitter.c: 82: if(RC4==0){
	btfsc	(60/8),(60)&7
	goto	u1041
	goto	u1040
u1041:
	goto	l30000710
u1040:
	
l30000704:	
	line	83
;IRtransmitter.c: 83: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000705:	
	line	84
;IRtransmitter.c: 84: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000706:	
	line	85
;IRtransmitter.c: 85: UART_Write('D');
	movlw	(044h)
	fcall	_UART_Write
	
l30000707:	
	line	87
;IRtransmitter.c: 87: while(RC4==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u1051
	goto	u1050
u1051:
	goto	l30000707
u1050:
	
l30000708:	
	line	88
;IRtransmitter.c: 88: UART_Stop();
	fcall	_UART_Stop
	
l30000709:	
	line	89
;IRtransmitter.c: 89: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000710:	
	line	91
;IRtransmitter.c: 90: }
;IRtransmitter.c: 91: if(RB2==0){
	btfsc	(50/8),(50)&7
	goto	u1061
	goto	u1060
u1061:
	goto	l30000717
u1060:
	
l30000711:	
	line	92
;IRtransmitter.c: 92: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000712:	
	line	93
;IRtransmitter.c: 93: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000713:	
	line	94
;IRtransmitter.c: 94: UART_Write('E');
	movlw	(045h)
	fcall	_UART_Write
	
l30000714:	
	line	96
;IRtransmitter.c: 96: while(RB2==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u1071
	goto	u1070
u1071:
	goto	l30000714
u1070:
	
l30000715:	
	line	97
;IRtransmitter.c: 97: UART_Stop();
	fcall	_UART_Stop
	
l30000716:	
	line	98
;IRtransmitter.c: 98: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000717:	
	line	100
;IRtransmitter.c: 99: }
;IRtransmitter.c: 100: if(RB6==0){
	btfsc	(54/8),(54)&7
	goto	u1081
	goto	u1080
u1081:
	goto	l30000724
u1080:
	
l30000718:	
	line	101
;IRtransmitter.c: 101: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000719:	
	line	102
;IRtransmitter.c: 102: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000720:	
	line	103
;IRtransmitter.c: 103: UART_Write('F');
	movlw	(046h)
	fcall	_UART_Write
	
l30000721:	
	line	105
;IRtransmitter.c: 105: while(RB6==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(54/8),(54)&7
	goto	u1091
	goto	u1090
u1091:
	goto	l30000721
u1090:
	
l30000722:	
	line	106
;IRtransmitter.c: 106: UART_Stop();
	fcall	_UART_Stop
	
l30000723:	
	line	107
;IRtransmitter.c: 107: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000724:	
	line	109
;IRtransmitter.c: 108: }
;IRtransmitter.c: 109: if(RC0==0){
	btfsc	(56/8),(56)&7
	goto	u1101
	goto	u1100
u1101:
	goto	l30000731
u1100:
	
l30000725:	
	line	110
;IRtransmitter.c: 110: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000726:	
	line	111
;IRtransmitter.c: 111: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000727:	
	line	112
;IRtransmitter.c: 112: UART_Write('G');
	movlw	(047h)
	fcall	_UART_Write
	
l30000728:	
	line	114
;IRtransmitter.c: 114: while(RC0==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l30000728
u1110:
	
l30000729:	
	line	115
;IRtransmitter.c: 115: UART_Stop();
	fcall	_UART_Stop
	
l30000730:	
	line	116
;IRtransmitter.c: 116: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000731:	
	line	118
;IRtransmitter.c: 117: }
;IRtransmitter.c: 118: if(RB0==0){
	btfsc	(48/8),(48)&7
	goto	u1121
	goto	u1120
u1121:
	goto	l30000738
u1120:
	
l30000732:	
	line	119
;IRtransmitter.c: 119: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000733:	
	line	120
;IRtransmitter.c: 120: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000734:	
	line	121
;IRtransmitter.c: 121: UART_Write('K');
	movlw	(04Bh)
	fcall	_UART_Write
	
l30000735:	
	line	123
;IRtransmitter.c: 123: while(RB0==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u1131
	goto	u1130
u1131:
	goto	l30000735
u1130:
	
l30000736:	
	line	124
;IRtransmitter.c: 124: UART_Stop();
	fcall	_UART_Stop
	
l30000737:	
	line	125
;IRtransmitter.c: 125: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000738:	
	line	128
;IRtransmitter.c: 127: }
;IRtransmitter.c: 128: if(RB1==0){
	btfsc	(49/8),(49)&7
	goto	u1141
	goto	u1140
u1141:
	goto	l30000745
u1140:
	
l30000739:	
	line	129
;IRtransmitter.c: 129: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000740:	
	line	130
;IRtransmitter.c: 130: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000741:	
	line	131
;IRtransmitter.c: 131: UART_Write('H');
	movlw	(048h)
	fcall	_UART_Write
	
l30000742:	
	line	133
;IRtransmitter.c: 133: while(RB1==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u1151
	goto	u1150
u1151:
	goto	l30000742
u1150:
	
l30000743:	
	line	134
;IRtransmitter.c: 134: UART_Stop();
	fcall	_UART_Stop
	
l30000744:	
	line	135
;IRtransmitter.c: 135: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000745:	
	line	138
;IRtransmitter.c: 137: }
;IRtransmitter.c: 138: if(RB5==0){
	btfsc	(53/8),(53)&7
	goto	u1161
	goto	u1160
u1161:
	goto	l30000752
u1160:
	
l30000746:	
	line	140
;IRtransmitter.c: 140: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000747:	
	line	141
;IRtransmitter.c: 141: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000748:	
	line	142
;IRtransmitter.c: 142: UART_Write('I');
	movlw	(049h)
	fcall	_UART_Write
	
l30000749:	
	line	144
;IRtransmitter.c: 144: while(RB5==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(53/8),(53)&7
	goto	u1171
	goto	u1170
u1171:
	goto	l30000749
u1170:
	
l30000750:	
	line	145
;IRtransmitter.c: 145: UART_Stop();
	fcall	_UART_Stop
	
l30000751:	
	line	146
;IRtransmitter.c: 146: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000752:	
	line	149
;IRtransmitter.c: 148: }
;IRtransmitter.c: 149: if(RC1==0){
	btfsc	(57/8),(57)&7
	goto	u1181
	goto	u1180
u1181:
	goto	l30000759
u1180:
	
l30000753:	
	line	150
;IRtransmitter.c: 150: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000754:	
	line	151
;IRtransmitter.c: 151: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000755:	
	line	152
;IRtransmitter.c: 152: UART_Write('J');
	movlw	(04Ah)
	fcall	_UART_Write
	
l30000756:	
	line	154
;IRtransmitter.c: 154: while(RC1==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u1191
	goto	u1190
u1191:
	goto	l30000756
u1190:
	
l30000757:	
	line	155
;IRtransmitter.c: 155: UART_Stop();
	fcall	_UART_Stop
	
l30000758:	
	line	156
;IRtransmitter.c: 156: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000759:	
	line	159
;IRtransmitter.c: 158: }
;IRtransmitter.c: 159: if(RB4==0){
	btfsc	(52/8),(52)&7
	goto	u1201
	goto	u1200
u1201:
	goto	l30000766
u1200:
	
l30000760:	
	line	160
;IRtransmitter.c: 160: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000761:	
	line	161
;IRtransmitter.c: 161: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000762:	
	line	162
;IRtransmitter.c: 162: UART_Write('L');
	movlw	(04Ch)
	fcall	_UART_Write
	
l30000763:	
	line	164
;IRtransmitter.c: 164: while(RB4==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l30000763
u1210:
	
l30000764:	
	line	165
;IRtransmitter.c: 165: UART_Stop();
	fcall	_UART_Stop
	
l30000765:	
	line	166
;IRtransmitter.c: 166: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000766:	
	line	169
;IRtransmitter.c: 168: }
;IRtransmitter.c: 169: if(RC3==0){
	btfsc	(59/8),(59)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l30000682
u1220:
	
l30000767:	
	line	170
;IRtransmitter.c: 170: UART_Init(4800);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	012h
	movwf	(?_UART_Init+1)
	movlw	0C0h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000768:	
	line	171
;IRtransmitter.c: 171: CCPR1L = 0b00001100 ;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	
l30000769:	
	line	172
;IRtransmitter.c: 172: UART_Write('M');
	movlw	(04Dh)
	fcall	_UART_Write
	
l30000770:	
	line	174
;IRtransmitter.c: 174: while(RC3==0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l30000770
u1230:
	
l30000771:	
	line	175
;IRtransmitter.c: 175: UART_Stop();
	fcall	_UART_Stop
	
l30000772:	
	line	176
;IRtransmitter.c: 176: CCPR1L = 0b00011001 ;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	goto	l30000682
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	180
	signat	_main,88
	global	_UART_Write
psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:

; *************** function _UART_Write *****************
; Defined at:
;		line 48 in file "C:\Users\LENOVO\Desktop\IRtransmitter\uart.h"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text42
	file	"C:\Users\LENOVO\Desktop\IRtransmitter\uart.h"
	line	48
	global	__size_of_UART_Write
	__size_of_UART_Write	equ	__end_of_UART_Write-_UART_Write
;uart.h: 47: void UART_Write(char data)
;uart.h: 48: {
	
_UART_Write:	
	opt stack 7
; Regs used in _UART_Write: [wreg]
;UART_Write@data stored from wreg
	movwf	(UART_Write@data)
	
l30000405:	
	
l53:	
	line	49
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u91
	goto	u90
u91:
	goto	l53
u90:
	
l30000406:	
	line	50
;uart.h: 50: TXREG = data;
	movf	(UART_Write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l52:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Write
	__end_of_UART_Write:
; =============== function _UART_Write ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	51
	signat	_UART_Write,4216
	global	_UART_Stop

; *************** function _UART_Stop *****************
; Defined at:
;		line 28 in file "C:\Users\LENOVO\Desktop\IRtransmitter\IRtransmitter.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
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
psect	text43
	file	"C:\Users\LENOVO\Desktop\IRtransmitter\IRtransmitter.c"
	line	28
	global	__size_of_UART_Stop
	__size_of_UART_Stop	equ	__end_of_UART_Stop-_UART_Stop
;IRtransmitter.c: 5: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3F32");
;IRtransmitter.c: 27: void UART_Stop()
;IRtransmitter.c: 28: {
	
_UART_Stop:	
	opt stack 7
; Regs used in _UART_Stop: []
	line	29
	
l30000407:	
;IRtransmitter.c: 29: TXEN=0 ;CREN=0; SPEN=0;TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1221/8)^080h,(1221)&7
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(196/8),(196)&7
	bcf	(199/8),(199)&7
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Stop
	__end_of_UART_Stop:
; =============== function _UART_Stop ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	30
	signat	_UART_Stop,88
	global	_UART_Init

; *************** function _UART_Init *****************
; Defined at:
;		line 2 in file "C:\Users\LENOVO\Desktop\IRtransmitter\uart.h"
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
psect	text44
	file	"C:\Users\LENOVO\Desktop\IRtransmitter\uart.h"
	line	2
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
;uart.h: 1: char UART_Init(const long int baudrate)
;uart.h: 2: {
	
_UART_Init:	
	opt stack 7
; Regs used in _UART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	4
	
l30000663:	
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
u905:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u900:
	addlw	-1
	skipz
	goto	u905
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
	goto	u910
	goto	u911
u910:
	addwf	(??_UART_Init+0+1),f
u911:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u912
	goto	u913
u912:
	addwf	(??_UART_Init+0+2),f
u913:
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
u925:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u920:
	addlw	-1
	skipz
	goto	u925
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

	
l30000664:	
	line	5
;uart.h: 5: if(x>255)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipc
	goto	u931
	goto	u930
u931:
	goto	l30000667
u930:
	
l30000665:	
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
u945:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u940:
	addlw	-1
	skipz
	goto	u945
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
	goto	u950
	goto	u951
u950:
	addwf	(??_UART_Init+0+1),f
u951:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u952
	goto	u953
u952:
	addwf	(??_UART_Init+0+2),f
u953:
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
u965:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u960:
	addlw	-1
	skipz
	goto	u965
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

	
l30000666:	
	line	8
;uart.h: 8: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	
l30000667:	
	line	10
;uart.h: 9: }
;uart.h: 10: if(x<256)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipnc
	goto	u971
	goto	u970
u971:
	goto	l38
u970:
	
l30000668:	
	line	12
;uart.h: 11: {
;uart.h: 12: SPBRG = x;
	movf	(UART_Init@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	
l30000669:	
	line	13
;uart.h: 13: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	
l30000670:	
	line	14
;uart.h: 14: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l30000671:	
	line	15
;uart.h: 15: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	
l30000672:	
	line	16
;uart.h: 16: TRISC6 = 1;
	bsf	(1086/8)^080h,(1086)&7
	
l30000673:	
	line	17
;uart.h: 17: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l30000674:	
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

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
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
psect	text45
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000773:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___aldiv@sign)
	
l30000774:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___aldiv@divisor+3),7
	goto	u1241
	goto	u1240
u1241:
	goto	l30000777
u1240:
	
l30000775:	
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
	
l30000776:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000777:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u1251
	goto	u1250
u1251:
	goto	l30000780
u1250:
	
l30000778:	
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
	
l30000779:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000780:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000781:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1261
	goto	u1260
u1261:
	goto	l30000791
u1260:
	
l30000782:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000784
	
l30000783:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u1275:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u1275
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000784:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1281
	goto	u1280
u1281:
	goto	l30000783
u1280:
	
l30000785:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u1295:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u1295
	
l30000786:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1305
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1305
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1305
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1305:
	skipc
	goto	u1301
	goto	u1300
u1301:
	goto	l30000789
u1300:
	
l30000787:	
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
	
l30000788:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000789:	
	line	31
	movlw	01h
u1315:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u1315

	
l30000790:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1321
	goto	u1320
u1321:
	goto	l30000785
u1320:
	
l30000791:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u1330
	goto	l30000793
u1330:
	
l30000792:	
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
	
l30000793:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l335:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text46,local,class=CODE,delta=2
global __ptext46
__ptext46:
	line	37
	signat	___aldiv,8316
	end
