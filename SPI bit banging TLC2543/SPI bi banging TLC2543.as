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
# 6 "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
	dw 0x3f32 ;#
;COMMON:	_main->_UART_Init
;COMMON:	_UART_Init->___aldiv
;BANK0:	_UART_Init->___aldiv
;BANK0:	_main->_UART_Init
;COMMON:	_UART_Init->___aldiv
;BANK0:	_UART_Init->___aldiv
	FNCALL	_main,_ad_setup
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Data_Ready
	FNCALL	_main,_UART_Read
	FNCALL	_main,_atoi
	FNCALL	_main,_read_ad
	FNCALL	_main,_itoa
	FNCALL	_main,_UART_Write_Text
	FNCALL	_main,_UART_Write
	FNCALL	_UART_Write_Text,_UART_Write
	FNCALL	_atoi,___wmul
	FNCALL	_atoi,_isdigit
	FNCALL	_itoa,_utoa
	FNCALL	_read_ad,_ad_setgetchannel
	FNCALL	_UART_Init,___aldiv
	FNCALL	_utoa,___lwdiv
	FNCALL	_utoa,___lwmod
	FNROOT	_main
	global	_ADCON0
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:
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
	file	"SPI bi banging TLC2543.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	??_UART_Write
??_UART_Write: ;@ 0x0
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	??_UART_Write_Text
??_UART_Write_Text: ;@ 0x0
	global	??_UART_Read
??_UART_Read: ;@ 0x0
	global	?_ad_setup
?_ad_setup: ;@ 0x0
	global	??_ad_setup
??_ad_setup: ;@ 0x0
	global	??_isdigit
??_isdigit: ;@ 0x0
	global	??_ad_setgetchannel
??_ad_setgetchannel: ;@ 0x0
	global	??___lwmod
??___lwmod: ;@ 0x0
	global	??___lwdiv
??___lwdiv: ;@ 0x0
	global	??___wmul
??___wmul: ;@ 0x0
	global	?_UART_Data_Ready
?_UART_Data_Ready: ;@ 0x0
	global	?_UART_Read
?_UART_Read: ;@ 0x0
	global	UART_Write@data
UART_Write@data:	; 1 bytes @ 0x0
	global	_isdigit$354
_isdigit$354:	; 1 bytes @ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	1
	global	?_UART_Write
?_UART_Write: ;@ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x1
	global	UART_Write_Text@text
UART_Write_Text@text:	; 1 bytes @ 0x1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	?_isdigit
?_isdigit: ;@ 0x2
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x2
	global	?___lwmod
?___lwmod: ;@ 0x2
	global	?___wmul
?___wmul: ;@ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x2
	global	UART_Write_Text@i
UART_Write_Text@i:	; 2 bytes @ 0x2
	ds	1
	global	??_read_ad
??_read_ad: ;@ 0x3
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x3
	global	ad_setgetchannel@ch_config
ad_setgetchannel@ch_config:	; 2 bytes @ 0x3
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x3
	ds	1
	global	?_UART_Write_Text
?_UART_Write_Text: ;@ 0x4
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds	1
	global	ad_setgetchannel@channel
ad_setgetchannel@channel:	; 1 bytes @ 0x5
	ds	1
	global	??_utoa
??_utoa: ;@ 0x6
	global	??_atoi
??_atoi: ;@ 0x6
	global	ad_setgetchannel@data
ad_setgetchannel@data:	; 2 bytes @ 0x6
	ds	1
	global	??_itoa
??_itoa: ;@ 0x7
	global	UART_Init@x
UART_Init@x:	; 2 bytes @ 0x7
	ds	1
	global	ad_setgetchannel@i
ad_setgetchannel@i:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main: ;@ 0x9
	ds	1
	global	?_main
?_main: ;@ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_ad_setgetchannel
?_ad_setgetchannel: ;@ 0x0
	global	?___lwdiv
?___lwdiv: ;@ 0x0
	global	?___aldiv
?___aldiv: ;@ 0x0
	global	atoi@sign
atoi@sign:	; 1 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x0
	ds	1
	global	atoi@a
atoi@a:	; 2 bytes @ 0x1
	ds	1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	read_ad@temp
read_ad@temp:	; 2 bytes @ 0x2
	ds	1
	global	atoi@s
atoi@s:	; 1 bytes @ 0x3
	ds	1
	global	read_ad@channel
read_ad@channel:	; 1 bytes @ 0x4
	global	?_atoi
?_atoi: ;@ 0x4
	global	utoa@v
utoa@v:	; 2 bytes @ 0x4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x4
	ds	1
	global	?_read_ad
?_read_ad: ;@ 0x5
	ds	1
	global	utoa@c
utoa@c:	; 1 bytes @ 0x6
	ds	1
	global	utoa@buf
utoa@buf:	; 1 bytes @ 0x7
	ds	1
	global	??_UART_Init
??_UART_Init: ;@ 0x8
	global	?_utoa
?_utoa: ;@ 0x8
	global	utoa@val
utoa@val:	; 2 bytes @ 0x8
	ds	2
	global	utoa@base
utoa@base:	; 2 bytes @ 0xA
	ds	3
	global	itoa@buf
itoa@buf:	; 1 bytes @ 0xD
	ds	1
	global	?_itoa
?_itoa: ;@ 0xE
	global	itoa@val
itoa@val:	; 2 bytes @ 0xE
	ds	2
	global	itoa@base
itoa@base:	; 2 bytes @ 0x10
	ds	4
	global	?_UART_Init
?_UART_Init: ;@ 0x14
	global	UART_Init@baudrate
UART_Init@baudrate:	; 4 bytes @ 0x14
	ds	4
	global	main@buff1
main@buff1:	; 3 bytes @ 0x18
	ds	3
	global	main@buff2
main@buff2:	; 4 bytes @ 0x1B
	ds	4
	global	main@buff
main@buff:	; 4 bytes @ 0x1F
	ds	4
	global	main@temp
main@temp:	; 2 bytes @ 0x23
	ds	2
	global	main@channel
main@channel:	; 2 bytes @ 0x25
	ds	2
	global	main@ready
main@ready:	; 2 bytes @ 0x27
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x29
	ds	2
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14     10      10
; BANK0           80     43      43
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;UART_Write_Text@text	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;sp__itoa	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;?_ad_setgetchannel	unsigned int  size(1); Largest target is 0
;?_read_ad	unsigned int  size(1); Largest target is 0
;?___aldiv	long  size(1); Largest target is 0
;atoi@s	PTR const unsigned char  size(1); Largest target is 3
;		 -> main@buff1(BANK0[3]), 
;itoa@cp	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;itoa@buf	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;sp__utoa	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;utoa@buf	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;?_atoi	int  size(1); Largest target is 0
;?_itoa	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;?___wmul	unsigned int  size(1); Largest target is 0
;?_utoa	PTR unsigned char  size(1); Largest target is 4
;		 -> main@buff2(BANK0[4]), 
;?___lwdiv	unsigned int  size(1); Largest target is 0
;?___lwmod	unsigned int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 1, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               22    0 1748   0.00
;                                    9 COMMO    1
;                                   24 BANK0   19
;           _ad_setup
;          _UART_Init
;    _UART_Data_Ready
;          _UART_Read
;               _atoi
;            _read_ad
;               _itoa
;    _UART_Write_Text
;         _UART_Write
;  _UART_Write_Text                                   3    0   82   0.00
;                                    1 COMMO    3
;         _UART_Write
;  _atoi                                              6    2  286   0.00
;                                    6 COMMO    2
;                                    0 BANK0    6
;             ___wmul
;            _isdigit
;  _itoa                                              3    4  579   0.00
;                                    7 COMMO    1
;                                   12 BANK0    6
;               _utoa
;  _read_ad                                           3    2  152   0.00
;                                    2 BANK0    5
;   _ad_setgetchannel
;  _UART_Read                                         0    0    0   0.00
;  _UART_Init                                        14    4  336   0.00
;                                    7 COMMO    2
;                                    8 BANK0   16
;            ___aldiv
;  _ad_setup                                          0    0    0   0.00
;  _UART_Data_Ready                                   0    0    0   0.00
;    _UART_Write                                      1    0   16   0.00
;                                    0 COMMO    1
;    _utoa                                            5    4  459   0.00
;                                    6 COMMO    1
;                                    4 BANK0    8
;            ___lwdiv
;            ___lwmod
;    ___aldiv                                         7    8  222   0.00
;                                    0 COMMO    7
;                                    0 BANK0    8
;    ___wmul                                          2    4   68   0.00
;                                    0 COMMO    6
;    _ad_setgetchannel                                9    2  102   0.00
;                                    0 COMMO    9
;                                    0 BANK0    2
;    _isdigit                                         2    0   50   0.00
;                                    0 COMMO    2
;      ___lwdiv                                       4    4  120   0.00
;                                    0 COMMO    4
;                                    0 BANK0    4
;      ___lwmod                                       2    4  117   0.00
;                                    0 COMMO    6
; Estimated maximum call depth 3
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      A       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      10       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     2B      2B       5       53.8%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      10      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 86 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  buff2           4   27[BANK0 ] unsigned char [4]
;  buff            4   31[BANK0 ] unsigned char [4]
;  buff1           3   24[BANK0 ] unsigned char [3]
;  i               2   41[BANK0 ] int 
;  ready           2   39[BANK0 ] int 
;  temp            2   35[BANK0 ] int 
;  channel         2   37[BANK0 ] int 
;  temp1           2    0        int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1      19       0       0       0
;      Temp:     1
;      Total:   20
; This function calls:
;		_ad_setup
;		_UART_Init
;		_UART_Data_Ready
;		_UART_Read
;		_atoi
;		_read_ad
;		_itoa
;		_UART_Write_Text
;		_UART_Write
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
	line	86
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 84: void _delay(unsigned long cycles);
;main.c: 85: void main()
;main.c: 86: { ADCON1=0b00000111;
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	
l30000601:	
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	87
;main.c: 87: TRISC=0b00010000;
	movlw	(010h)
	movwf	(135)^080h	;volatile
	line	88
;main.c: 88: TRISB=0b00000001;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l30000602:	
	line	89
;main.c: 89: TRISA=0b00000000;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(133)^080h	;volatile
	
l30000603:	
	line	90
;main.c: 90: ad_setup();
	fcall	_ad_setup
	
l30000604:	
	line	92
;main.c: 91: int channel;
;main.c: 92: int ready=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@ready)
	movlw	high(0)
	movwf	((main@ready))+1
	
l30000605:	
	line	97
;main.c: 93: char buff[4];
;main.c: 94: char buff1[3];
;main.c: 95: char buff2[4];
;main.c: 96: int temp,temp1,i;
;main.c: 97: UART_Init(9600);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	025h
	movwf	(?_UART_Init+1)
	movlw	080h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30000606:	
	line	104
;main.c: 100: {
;main.c: 104: if(UART_Data_Ready())
	fcall	_UART_Data_Ready
	xorlw	0
	skipnz
	goto	u701
	goto	u700
u701:
	goto	l39
u700:
	
l30000607:	
	line	106
;main.c: 105: {
;main.c: 106: for(i=0;i<4;i++){
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000609:	
	line	107
;main.c: 107: buff[i] =UART_Read();
	fcall	_UART_Read
	movwf	(??_main+0+0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	(main@buff)&0ffh
	movwf	fsr0
	movf	(??_main+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30000610:	
	line	106
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l30000611:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(04h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u715
	movlw	low(04h)
	subwf	(main@i),w
u715:

	skipc
	goto	u711
	goto	u710
u711:
	goto	l30000609
u710:
	
l30000612:	
	line	110
;main.c: 109: }
;main.c: 110: ready=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@ready)
	movlw	high(01h)
	movwf	((main@ready))+1
	
l39:	
	line	113
;main.c: 111: }
;main.c: 113: if (ready){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@ready+1),w
	iorwf	(main@ready),w
	skipnz
	goto	u721
	goto	u720
u721:
	goto	l30000606
u720:
	
l30000613:	
	line	115
;main.c: 115: if (buff[0]=='A')
	movf	(main@buff),w
	xorlw	041h
	skipz
	goto	u731
	goto	u730
u731:
	goto	l30000619
u730:
	
l30000614:	
	line	118
;main.c: 117: {
;main.c: 118: for (i=0;i<3;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l30000616:	
	line	120
;main.c: 119: {
;main.c: 120: buff1[i]=buff[i+1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	01h
	addlw	(main@buff)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0+0)
	movf	(main@i),w
	addlw	(main@buff1)&0ffh
	movwf	fsr0
	movf	(??_main+0+0),w
	movwf	indf
	
l30000617:	
	line	118
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l30000618:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(03h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u745
	movlw	low(03h)
	subwf	(main@i),w
u745:

	skipc
	goto	u741
	goto	u740
u741:
	goto	l30000616
u740:
	
l30000619:	
	line	124
;main.c: 122: }
;main.c: 123: }
;main.c: 124: channel= atoi(buff1);
	movlw	((main@buff1))&0ffh
	fcall	_atoi
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_atoi)),w
	clrf	(main@channel+1)
	addwf	(main@channel+1)
	movf	(0+(?_atoi)),w
	clrf	(main@channel)
	addwf	(main@channel)

	
l30000620:	
	line	125
;main.c: 125: temp=read_ad(channel);
	movf	(main@channel),w
	fcall	_read_ad
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_read_ad)),w
	clrf	(main@temp+1)
	addwf	(main@temp+1)
	movf	(0+(?_read_ad)),w
	clrf	(main@temp)
	addwf	(main@temp)

	
l30000621:	
	line	126
;main.c: 126: itoa(buff2,temp,10);
	movf	(main@temp+1),w
	clrf	(?_itoa+1)
	addwf	(?_itoa+1)
	movf	(main@temp),w
	clrf	(?_itoa)
	addwf	(?_itoa)

	movlw	low(0Ah)
	movwf	0+(?_itoa)+02h
	movlw	high(0Ah)
	movwf	(0+(?_itoa)+02h)+1
	movlw	((main@buff2))&0ffh
	fcall	_itoa
	
l30000622:	
	line	127
;main.c: 127: UART_Write_Text(buff2);
	movlw	((main@buff2))&0ffh
	fcall	_UART_Write_Text
	
l30000623:	
	line	128
;main.c: 128: UART_Write('\n');
	movlw	(0Ah)
	fcall	_UART_Write
	line	129
;main.c: 129: UART_Write_Text(buff2);
	movlw	((main@buff2))&0ffh
	fcall	_UART_Write_Text
	
l30000624:	
	line	130
;main.c: 130: UART_Write('\n');
	movlw	(0Ah)
	fcall	_UART_Write
	
l30000625:	
	line	131
;main.c: 131: ready =0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@ready)
	movlw	high(0)
	movwf	((main@ready))+1
	goto	l30000606
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	136
	signat	_main,88
	global	_UART_Write_Text
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

; *************** function _UART_Write_Text *****************
; Defined at:
;		line 54 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
; Parameters:    Size  Location     Type
;  text            1    wreg     PTR unsigned char 
;		 -> main@buff2(4), 
; Auto vars:     Size  Location     Type
;  text            1    1[COMMON] PTR unsigned char 
;		 -> main@buff2(4), 
;  i               2    2[COMMON] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       0       0       0       0
;      Temp:     0
;      Total:    3
; This function calls:
;		_UART_Write
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text92
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
	line	54
	global	__size_of_UART_Write_Text
	__size_of_UART_Write_Text	equ	__end_of_UART_Write_Text-_UART_Write_Text
;uart.h: 53: void UART_Write_Text(char *text)
;uart.h: 54: {
	
_UART_Write_Text:	
	opt stack 7
; Regs used in _UART_Write_Text: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;UART_Write_Text@text stored from wreg
	line	56
	movwf	(UART_Write_Text@text)
	
l30000739:	
;uart.h: 55: int i;
;uart.h: 56: for(i=0;text[i]!='\0';i++)
	movlw	low(0)
	movwf	(UART_Write_Text@i)
	movlw	high(0)
	movwf	((UART_Write_Text@i))+1
	goto	l30000742
	
l30000740:	
	line	57
;uart.h: 57: UART_Write(text[i]);
	movf	(UART_Write_Text@i),w
	addwf	(UART_Write_Text@text),w
	movwf	fsr0
	movf	indf,w
	fcall	_UART_Write
	
l30000741:	
	line	56
	movlw	low(01h)
	addwf	(UART_Write_Text@i),f
	skipnc
	incf	(UART_Write_Text@i+1),f
	movlw	high(01h)
	addwf	(UART_Write_Text@i+1),f
	
l30000742:	
	movf	(UART_Write_Text@i),w
	addwf	(UART_Write_Text@text),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u1201
	goto	u1200
u1201:
	goto	l30000740
u1200:
	
l24:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Write_Text
	__end_of_UART_Write_Text:
; =============== function _UART_Write_Text ends ============

psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:
	line	58
	signat	_UART_Write_Text,4216
	global	_atoi

; *************** function _atoi *****************
; Defined at:
;		line 6 in file "../../common/atoi.c"
; Parameters:    Size  Location     Type
;  s               1    wreg     PTR const unsigned char 
;		 -> main@buff1(3), 
; Auto vars:     Size  Location     Type
;  s               1    3[BANK0 ] PTR const unsigned char 
;		 -> main@buff1(3), 
;  a               2    1[BANK0 ] int 
;  sign            1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    4[BANK0 ] int 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       6       0       0       0
;      Temp:     2
;      Total:    8
; This function calls:
;		___wmul
;		_isdigit
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text93
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\atoi.c"
	line	6
	global	__size_of_atoi
	__size_of_atoi	equ	__end_of_atoi-_atoi
	
_atoi:	
	opt stack 7
; Regs used in _atoi: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;atoi@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(atoi@s)
	
l30000709:	
	goto	l30000711
	
l30000710:	
	line	11
	movlw	(01h)
	movwf	(??_atoi+0+0)
	movf	(??_atoi+0+0),w
	addwf	(atoi@s),f
	
l30000711:	
	line	10
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	020h
	skipnz
	goto	u1081
	goto	u1080
u1081:
	goto	l30000710
u1080:
	
l30000712:	
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	09h
	skipnz
	goto	u1091
	goto	u1090
u1091:
	goto	l30000710
u1090:
	
l30000713:	
	line	12
	movlw	low(0)
	movwf	(atoi@a)
	movlw	high(0)
	movwf	((atoi@a))+1
	
l30000714:	
	line	13
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(atoi@sign)
	
l30000715:	
	line	14
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Dh
	skipz
	goto	u1101
	goto	u1100
u1101:
	goto	l30000717
u1100:
	
l30000716:	
	line	15
	movlw	(01h)
	movwf	(??_atoi+0+0)
	movf	(??_atoi+0+0),w
	addwf	(atoi@sign),f
	line	16
	movlw	(01h)
	movwf	(??_atoi+0+0)
	movf	(??_atoi+0+0),w
	addwf	(atoi@s),f
	goto	l30000721
	
l30000717:	
	line	17
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	xorlw	02Bh
	skipz
	goto	u1111
	goto	u1110
u1111:
	goto	l30000721
u1110:
	
l30000718:	
	line	18
	movlw	(01h)
	movwf	(??_atoi+0+0)
	movf	(??_atoi+0+0),w
	addwf	(atoi@s),f
	goto	l30000721
	
l30000719:	
	line	20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(atoi@a+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(atoi@a),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(atoi@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addwf	(0+(?___wmul)),w
	movwf	(??_atoi+0+0)
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	movwf	((??_atoi+0+0))+1
	movf	0+(??_atoi+0+0),w
	addlw	low(0FFD0h)
	movwf	(atoi@a)
	movf	1+(??_atoi+0+0),w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(atoi@a)
	goto	l30000718
	
l30000721:	
	line	19
	movf	(atoi@s),w
	movwf	fsr0
	movf	indf,w
	fcall	_isdigit
	btfsc	status,0
	goto	u1121
	goto	u1120
u1121:
	goto	l30000719
u1120:
	
l30000722:	
	line	21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(atoi@sign),w
	skipz
	goto	u1130
	goto	l30000725
u1130:
	
l30000723:	
	line	22
	comf	(atoi@a),w
	movwf	??_atoi+0+0
	comf	(atoi@a+1),w
	movwf	??_atoi+0+0+1
	incf	??_atoi+0+0,f
	skipnz
	incf	??_atoi+0+0+1,f
	movf	0+(??_atoi+0+0),w
	movwf	(?_atoi)
	movf	1+(??_atoi+0+0),w
	movwf	(?_atoi+1)
	goto	l51
	
l30000725:	
	line	23
	movf	(atoi@a+1),w
	clrf	(?_atoi+1)
	addwf	(?_atoi+1)
	movf	(atoi@a),w
	clrf	(?_atoi)
	addwf	(?_atoi)

	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_atoi
	__end_of_atoi:
; =============== function _atoi ends ============

psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:
	line	24
	signat	_atoi,4218
	global	_itoa

; *************** function _itoa *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\itoa.c"
; Parameters:    Size  Location     Type
;  buf             1    wreg     PTR unsigned char 
;		 -> main@buff2(4), 
;  val             2   14[BANK0 ] int 
;  base            2   16[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  buf             1   13[BANK0 ] PTR unsigned char 
;		 -> main@buff2(4), 
;  cp              1    0        PTR unsigned char 
;		 -> main@buff2(4), 
; Return value:  Size  Location     Type
;                  1    wreg      PTR unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       6       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		_utoa
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text94
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\itoa.c"
	line	5
	global	__size_of_itoa
	__size_of_itoa	equ	__end_of_itoa-_itoa
	
_itoa:	
	opt stack 7
; Regs used in _itoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;itoa@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(itoa@buf)
	
l30000651:	
	
l30000652:	
	line	8
	btfss	(itoa@val+1),7
	goto	u851
	goto	u850
u851:
	goto	l30000656
u850:
	
l30000653:	
	line	9
	movlw	(02Dh)
	movwf	(??_itoa+0+0)
	movf	(itoa@buf),w
	movwf	fsr0
	movf	(??_itoa+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30000654:	
	movlw	(01h)
	movwf	(??_itoa+0+0)
	movf	(??_itoa+0+0),w
	addwf	(itoa@buf),f
	
l30000655:	
	line	10
	comf	(itoa@val),f
	comf	(itoa@val+1),f
	incf	(itoa@val),f
	skipnz
	incf	(itoa@val+1),f
	
l30000656:	
	line	12
	movf	(itoa@val+1),w
	clrf	(?_utoa+1)
	addwf	(?_utoa+1)
	movf	(itoa@val),w
	clrf	(?_utoa)
	addwf	(?_utoa)

	movf	(itoa@base+1),w
	clrf	1+(?_utoa)+02h
	addwf	1+(?_utoa)+02h
	movf	(itoa@base),w
	clrf	0+(?_utoa)+02h
	addwf	0+(?_utoa)+02h

	movf	(itoa@buf),w
	fcall	_utoa
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_itoa
	__end_of_itoa:
; =============== function _itoa ends ============

psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	line	14
	signat	_itoa,12409
	global	_read_ad

; *************** function _read_ad *****************
; Defined at:
;		line 76 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
; Parameters:    Size  Location     Type
;  channel         1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  channel         1    4[BANK0 ] unsigned char 
;  temp            2    2[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;                  2    5[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       5       0       0       0
;      Temp:     0
;      Total:    5
; This function calls:
;		_ad_setgetchannel
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text95
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
	line	76
	global	__size_of_read_ad
	__size_of_read_ad	equ	__end_of_read_ad-_read_ad
;main.c: 75: unsigned int read_ad(unsigned char channel)
;main.c: 76: {
	
_read_ad:	
	opt stack 7
; Regs used in _read_ad: [wreg+status,2+status,0+pclath+cstack]
;read_ad@channel stored from wreg
	line	79
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(read_ad@channel)
	
l30000673:	
;main.c: 77: unsigned int temp;
;main.c: 79: temp=ad_setgetchannel(channel);
	movf	(read_ad@channel),w
	fcall	_ad_setgetchannel
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ad_setgetchannel)),w
	clrf	(read_ad@temp+1)
	addwf	(read_ad@temp+1)
	movf	(0+(?_ad_setgetchannel)),w
	clrf	(read_ad@temp)
	addwf	(read_ad@temp)

	line	80
;main.c: 80: temp=ad_setgetchannel(channel);
	movf	(read_ad@channel),w
	fcall	_ad_setgetchannel
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_ad_setgetchannel)),w
	clrf	(read_ad@temp+1)
	addwf	(read_ad@temp+1)
	movf	(0+(?_ad_setgetchannel)),w
	clrf	(read_ad@temp)
	addwf	(read_ad@temp)

	
l30000674:	
	line	81
;main.c: 81: return temp;
	movf	(read_ad@temp+1),w
	clrf	(?_read_ad+1)
	addwf	(?_read_ad+1)
	movf	(read_ad@temp),w
	clrf	(?_read_ad)
	addwf	(?_read_ad)

	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_read_ad
	__end_of_read_ad:
; =============== function _read_ad ends ============

psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
	line	82
	signat	_read_ad,4218
	global	_UART_Read

; *************** function _UART_Read *****************
; Defined at:
;		line 34 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
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
psect	text96
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
	line	34
	global	__size_of_UART_Read
	__size_of_UART_Read	equ	__end_of_UART_Read-_UART_Read
;uart.h: 33: char UART_Read()
;uart.h: 34: {
	
_UART_Read:	
	opt stack 7
; Regs used in _UART_Read: [wreg]
	
l30000743:	
	
l12:	
	line	36
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u1211
	goto	u1210
u1211:
	goto	l12
u1210:
	
l30000744:	
	line	37
;uart.h: 37: return RCREG;
	movf	(26),w	;volatile
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Read
	__end_of_UART_Read:
; =============== function _UART_Read ends ============

psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:
	line	38
	signat	_UART_Read,89
	global	_UART_Init

; *************** function _UART_Init *****************
; Defined at:
;		line 2 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
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
psect	text97
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
	line	2
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
;uart.h: 1: char UART_Init(const long int baudrate)
;uart.h: 2: {
	
_UART_Init:	
	opt stack 7
; Regs used in _UART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	4
	
l30000588:	
;uart.h: 3: unsigned int x;
;uart.h: 4: x = (11059200 - baudrate*64)/(baudrate*64);
	movlw	low(0A8C000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_UART_Init+0+0)
	movlw	high(0A8C000h)
	movwf	(??_UART_Init+0+0+1)
	movlw	low highword(0A8C000h)
	movwf	(??_UART_Init+0+0+2)
	movlw	high highword(0A8C000h)
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
u625:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u620:
	addlw	-1
	skipz
	goto	u625
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
	goto	u630
	goto	u631
u630:
	addwf	(??_UART_Init+0+1),f
u631:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u632
	goto	u633
u632:
	addwf	(??_UART_Init+0+2),f
u633:
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
u645:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u640:
	addlw	-1
	skipz
	goto	u645
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

	
l30000589:	
	line	5
;uart.h: 5: if(x>255)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipc
	goto	u651
	goto	u650
u651:
	goto	l30000592
u650:
	
l30000590:	
	line	7
;uart.h: 6: {
;uart.h: 7: x = (11059200 - baudrate*16)/(baudrate*16);
	movlw	low(0A8C000h)
	movwf	(??_UART_Init+0+0)
	movlw	high(0A8C000h)
	movwf	(??_UART_Init+0+0+1)
	movlw	low highword(0A8C000h)
	movwf	(??_UART_Init+0+0+2)
	movlw	high highword(0A8C000h)
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
	movlw	04h
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

	
l30000591:	
	line	8
;uart.h: 8: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	
l30000592:	
	line	10
;uart.h: 9: }
;uart.h: 10: if(x<256)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipnc
	goto	u691
	goto	u690
u691:
	goto	l6
u690:
	
l30000593:	
	line	12
;uart.h: 11: {
;uart.h: 12: SPBRG = x;
	movf	(UART_Init@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	
l30000594:	
	line	13
;uart.h: 13: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	
l30000595:	
	line	14
;uart.h: 14: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l30000596:	
	line	15
;uart.h: 15: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	
l30000597:	
	line	16
;uart.h: 16: TRISC6 = 1;
	bsf	(1086/8)^080h,(1086)&7
	
l30000598:	
	line	17
;uart.h: 17: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l30000599:	
	line	18
;uart.h: 18: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
; =============== function _UART_Init ends ============

psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	line	22
	signat	_UART_Init,4217
	global	_ad_setup

; *************** function _ad_setup *****************
; Defined at:
;		line 41 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
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
psect	text98
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
	line	41
	global	__size_of_ad_setup
	__size_of_ad_setup	equ	__end_of_ad_setup-_ad_setup
;main.c: 40: void ad_setup()
;main.c: 41: {
	
_ad_setup:	
	opt stack 7
; Regs used in _ad_setup: []
	line	43
	
l30000746:	
;main.c: 43: TRISC5 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1085/8)^080h,(1085)&7
	line	44
;main.c: 44: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	46
;main.c: 46: TRISC3 = 0;
	bcf	(1083/8)^080h,(1083)&7
	line	47
;main.c: 47: TRISA0 = 0;
	bcf	(1064/8)^080h,(1064)&7
	
l29:	
	return
	opt stack 0
GLOBAL	__end_of_ad_setup
	__end_of_ad_setup:
; =============== function _ad_setup ends ============

psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	line	48
	signat	_ad_setup,88
	global	_UART_Data_Ready

; *************** function _UART_Data_Ready *****************
; Defined at:
;		line 30 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
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
psect	text99
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
	line	30
	global	__size_of_UART_Data_Ready
	__size_of_UART_Data_Ready	equ	__end_of_UART_Data_Ready-_UART_Data_Ready
;uart.h: 29: char UART_Data_Ready()
;uart.h: 30: {
	
_UART_Data_Ready:	
	opt stack 7
; Regs used in _UART_Data_Ready: [wreg]
	line	31
	
l30000747:	
;uart.h: 31: return RCIF;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(101/8),(101)&7
	movlw	1
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Data_Ready
	__end_of_UART_Data_Ready:
; =============== function _UART_Data_Ready ends ============

psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
	line	32
	signat	_UART_Data_Ready,89
	global	_UART_Write

; *************** function _UART_Write *****************
; Defined at:
;		line 48 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
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
;		_UART_Write_Text
;		_main
; This function uses a non-reentrant model
; 
psect	text100
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\uart.h"
	line	48
	global	__size_of_UART_Write
	__size_of_UART_Write	equ	__end_of_UART_Write-_UART_Write
;uart.h: 47: void UART_Write(char data)
;uart.h: 48: {
	
_UART_Write:	
	opt stack 6
; Regs used in _UART_Write: [wreg]
;UART_Write@data stored from wreg
	movwf	(UART_Write@data)
	
l30000749:	
	
l21:	
	line	49
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u1221
	goto	u1220
u1221:
	goto	l21
u1220:
	
l30000750:	
	line	50
;uart.h: 50: TXREG = data;
	movf	(UART_Write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Write
	__end_of_UART_Write:
; =============== function _UART_Write ends ============

psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	line	51
	signat	_UART_Write,4216
	global	_utoa

; *************** function _utoa *****************
; Defined at:
;		line 18 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\itoa.c"
; Parameters:    Size  Location     Type
;  buf             1    wreg     PTR unsigned char 
;		 -> main@buff2(4), 
;  val             2    8[BANK0 ] unsigned int 
;  base            2   10[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  buf             1    7[BANK0 ] PTR unsigned char 
;		 -> main@buff2(4), 
;  v               2    4[BANK0 ] unsigned int 
;  c               1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      PTR unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       8       0       0       0
;      Temp:     1
;      Total:    9
; This function calls:
;		___lwdiv
;		___lwmod
; This function is called by:
;		_itoa
; This function uses a non-reentrant model
; 
psect	text101
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\itoa.c"
	line	18
	global	__size_of_utoa
	__size_of_utoa	equ	__end_of_utoa-_utoa
	
_utoa:	
	opt stack 6
; Regs used in _utoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;utoa@buf stored from wreg
	line	22
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(utoa@buf)
	
l30000638:	
	movf	(utoa@val+1),w
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(utoa@val),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	
l30000639:	
	line	24
	movf	(utoa@v+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(utoa@v),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movf	(utoa@base+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(utoa@base),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(0+(?___lwdiv)),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	
l30000640:	
	line	25
	movlw	(01h)
	movwf	(??_utoa+0+0)
	movf	(??_utoa+0+0),w
	addwf	(utoa@buf),f
	
l30000641:	
	line	26
	movf	((utoa@v+1)),w
	iorwf	((utoa@v)),w
	skipz
	goto	u821
	goto	u820
u821:
	goto	l30000639
u820:
	
l30000642:	
	line	27
	clrc
	movf	(utoa@buf),w
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	indf
	
l30000643:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	
l30000644:	
	line	29
	movf	(utoa@val+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(utoa@val),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	movf	(utoa@base+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(utoa@base),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(utoa@c)
	
l30000645:	
	line	30
	movf	(utoa@val+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(utoa@val),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	movf	(utoa@base+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(utoa@base),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(utoa@val+1)
	addwf	(utoa@val+1)
	movf	(0+(?___lwdiv)),w
	clrf	(utoa@val)
	addwf	(utoa@val)

	
l30000646:	
	line	31
	movlw	(0Ah)
	subwf	(utoa@c),w
	skipc
	goto	u831
	goto	u830
u831:
	goto	l76
u830:
	
l30000647:	
	line	32
	movlw	(07h)
	movwf	(??_utoa+0+0)
	movf	(??_utoa+0+0),w
	addwf	(utoa@c),f
	
l76:	
	line	33
	movlw	(030h)
	movwf	(??_utoa+0+0)
	movf	(??_utoa+0+0),w
	addwf	(utoa@c),f
	
l30000648:	
	line	34
	movf	(utoa@c),w
	movwf	(??_utoa+0+0)
	movf	(utoa@buf),w
	movwf	fsr0
	movf	(??_utoa+0+0),w
	movwf	indf
	
l30000649:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	
l30000650:	
	line	35
	movf	((utoa@val+1)),w
	iorwf	((utoa@val)),w
	skipz
	goto	u841
	goto	u840
u841:
	goto	l30000644
u840:
	
l69:	
	return
	opt stack 0
GLOBAL	__end_of_utoa
	__end_of_utoa:
; =============== function _utoa ends ============

psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
	line	37
	signat	_utoa,12409
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
psect	text102
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 6
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30000687:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___aldiv@sign)
	
l30000688:	
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___aldiv@divisor+3),7
	goto	u981
	goto	u980
u981:
	goto	l30000691
u980:
	
l30000689:	
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
	
l30000690:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30000691:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u991
	goto	u990
u991:
	goto	l30000694
u990:
	
l30000692:	
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
	
l30000693:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30000694:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30000695:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1001
	goto	u1000
u1001:
	goto	l30000705
u1000:
	
l30000696:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30000698
	
l30000697:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u1015:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u1015
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30000698:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1021
	goto	u1020
u1021:
	goto	l30000697
u1020:
	
l30000699:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u1035:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u1035
	
l30000700:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1045
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1045
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1045
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1045:
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l30000703
u1040:
	
l30000701:	
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
	
l30000702:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30000703:	
	line	31
	movlw	01h
u1055:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u1055

	
l30000704:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1061
	goto	u1060
u1061:
	goto	l30000699
u1060:
	
l30000705:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u1070
	goto	l30000707
u1070:
	
l30000706:	
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
	
l30000707:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l294:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:
	line	37
	signat	___aldiv,8316
	global	___wmul

; *************** function ___wmul *****************
; Defined at:
;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\wmul.c"
; Parameters:    Size  Location     Type
;  multiplier      2    2[COMMON] unsigned int 
;  multiplicand    2    4[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  product         2    0[COMMON] unsigned int 
; Return value:  Size  Location     Type
;                  2    2[COMMON] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         6       0       0       0       0
;      Temp:     0
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_atoi
; This function uses a non-reentrant model
; 
psect	text103
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l30000733:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	
l30000734:	
	line	7
	btfss	(___wmul@multiplier),(0)&7
	goto	u1161
	goto	u1160
u1161:
	goto	l86
u1160:
	
l30000735:	
	line	8
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l86:	
	line	9
	movlw	01h
u1175:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1175
	
l30000736:	
	line	10
	movlw	01h
u1185:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1185
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1191
	goto	u1190
u1191:
	goto	l30000734
u1190:
	
l30000737:	
	line	12
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	
l82:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
; =============== function ___wmul ends ============

psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	line	13
	signat	___wmul,8314
	global	_ad_setgetchannel

; *************** function _ad_setgetchannel *****************
; Defined at:
;		line 51 in file "C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
; Parameters:    Size  Location     Type
;  channel         1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  channel         1    5[COMMON] unsigned char 
;  data            2    6[COMMON] unsigned int 
;  ch_config       2    3[COMMON] unsigned int 
;  i               1    8[COMMON] char 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         9       2       0       0       0
;      Temp:     3
;      Total:   11
; This function calls:
;		Nothing
; This function is called by:
;		_read_ad
; This function uses a non-reentrant model
; 
psect	text104
	file	"C:\Users\LENOVO\Desktop\SPI bit banging TLC2543 Vers. 2\main.c"
	line	51
	global	__size_of_ad_setgetchannel
	__size_of_ad_setgetchannel	equ	__end_of_ad_setgetchannel-_ad_setgetchannel
;main.c: 50: unsigned int ad_setgetchannel(unsigned char channel)
;main.c: 51: {
	
_ad_setgetchannel:	
	opt stack 6
; Regs used in _ad_setgetchannel: [wreg+status,2+status,0]
;ad_setgetchannel@channel stored from wreg
	line	53
	movwf	(ad_setgetchannel@channel)
	
l30000658:	
;main.c: 52: signed char i;
;main.c: 53: unsigned int data = 0x0;
	movlw	low(0)
	movwf	(ad_setgetchannel@data)
	movlw	high(0)
	movwf	((ad_setgetchannel@data))+1
	
l30000659:	
	line	56
;main.c: 54: unsigned int ch_config;
;main.c: 56: ch_config = channel<<8;
	movf	(ad_setgetchannel@channel),w
	movwf	(??_ad_setgetchannel+0+0)
	clrf	(??_ad_setgetchannel+0+0+1)
	movlw	08h
	movwf	(??_ad_setgetchannel+2+0)
u865:
	clrc
	rlf	(??_ad_setgetchannel+0+0),f
	rlf	(??_ad_setgetchannel+0+1),f
	decfsz	(??_ad_setgetchannel+2+0),f
	goto	u865
	movf	0+(??_ad_setgetchannel+0+0),w
	movwf	(ad_setgetchannel@ch_config)
	movf	1+(??_ad_setgetchannel+0+0),w
	movwf	(ad_setgetchannel@ch_config+1)
	
l30000660:	
	line	58
;main.c: 58: RC3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
	
l30000661:	
	line	59
;main.c: 59: RA0 = 0;
	bcf	(40/8),(40)&7
	line	60
;main.c: 60: for(i=11; i>=0; i--)
	movlw	(0Bh)
	movwf	(ad_setgetchannel@i)
	
l30000664:	
	line	63
;main.c: 61: {
;main.c: 63: RC5 = ((ch_config>>i) & 0x01);
	movf	(ad_setgetchannel@ch_config+1),w
	movwf	(??_ad_setgetchannel+0+0+1)
	movf	(ad_setgetchannel@ch_config),w
	movwf	(??_ad_setgetchannel+0+0)
	incf	(ad_setgetchannel@i),w
	goto	u874
u875:
	clrc
	rrf	(??_ad_setgetchannel+0+1),f
	rrf	(??_ad_setgetchannel+0+0),f
u874:
	movwf	(??_ad_setgetchannel+2+0)
	decfsz	(??_ad_setgetchannel+2+0),w
	goto	u875
	btfsc	0+(??_ad_setgetchannel+0+0),0
	goto	u881
	goto	u880
	
u881:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	goto	u894
u880:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
u894:
	
l30000665:	
	line	65
;main.c: 65: data <<= 1;
	movlw	01h
u905:
	clrc
	rlf	(ad_setgetchannel@data),f
	rlf	(ad_setgetchannel@data+1),f
	addlw	-1
	skipz
	goto	u905
	
l30000666:	
	line	66
;main.c: 66: data |= RC4;
	clrc
	btfsc	(60/8),(60)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_ad_setgetchannel+0+0)
	clrf	(??_ad_setgetchannel+0+0+1)
	movf	0+(??_ad_setgetchannel+0+0),w
	iorwf	(ad_setgetchannel@data),f
	movf	1+(??_ad_setgetchannel+0+0),w
	iorwf	(ad_setgetchannel@data+1),f
	
l30000667:	
	line	67
;main.c: 67: RC3 = 1;
	bsf	(59/8),(59)&7
	
l30000668:	
	line	68
;main.c: 68: RC3 = 0;
	bcf	(59/8),(59)&7
	
l30000669:	
	line	60
	movlw	(-1)
	movwf	(??_ad_setgetchannel+0+0)
	movf	(??_ad_setgetchannel+0+0),w
	addwf	(ad_setgetchannel@i),f
	
l30000670:	
	btfss	(ad_setgetchannel@i),7
	goto	u911
	goto	u910
u911:
	goto	l30000664
u910:
	
l32:	
	line	70
;main.c: 69: }
;main.c: 70: RA0 = 1;
	bsf	(40/8),(40)&7
	
l30000671:	
	line	71
;main.c: 71: return data;
	movf	(ad_setgetchannel@data+1),w
	clrf	(?_ad_setgetchannel+1)
	addwf	(?_ad_setgetchannel+1)
	movf	(ad_setgetchannel@data),w
	clrf	(?_ad_setgetchannel)
	addwf	(?_ad_setgetchannel)

	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_ad_setgetchannel
	__end_of_ad_setgetchannel:
; =============== function _ad_setgetchannel ends ============

psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	line	72
	signat	_ad_setgetchannel,4218
	global	_isdigit

; *************** function _isdigit *****************
; Defined at:
;		line 13 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\isdigit.c"
; Parameters:    Size  Location     Type
;  c               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  c               1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_atoi
; This function uses a non-reentrant model
; 
psect	text105
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	
l30000727:	
	line	14
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_isdigit$354)
	
l30000728:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1141
	goto	u1140
u1141:
	goto	l30000731
u1140:
	
l30000729:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1151
	goto	u1150
u1151:
	goto	l30000731
u1150:
	
l30000730:	
	clrf	(_isdigit$354)
	bsf	status,0
	rlf	(_isdigit$354),f
	
l30000731:	
	rrf	(_isdigit$354),w
	
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
; =============== function _isdigit ends ============

psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
	line	15
	signat	_isdigit,4216
	global	___lwdiv

; *************** function ___lwdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    0[BANK0 ] unsigned int 
;  divisor         2    2[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  quotient        2    1[COMMON] unsigned int 
;  counter         1    3[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4       4       0       0       0
;      Temp:     1
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		_utoa
; This function uses a non-reentrant model
; 
psect	text106
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l30000626:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u751
	goto	u750
u751:
	goto	l30000636
u750:
	
l30000627:	
	line	11
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	goto	l30000630
	
l30000628:	
	line	13
	movlw	01h
u765:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u765
	
l30000629:	
	line	14
	movlw	(01h)
	movwf	(??___lwdiv+0+0)
	movf	(??___lwdiv+0+0),w
	addwf	(___lwdiv@counter),f
	
l30000630:	
	line	12
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u771
	goto	u770
u771:
	goto	l30000628
u770:
	
l30000631:	
	line	17
	movlw	01h
u785:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u785
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u795
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u795:
	skipc
	goto	u791
	goto	u790
u791:
	goto	l30000634
u790:
	
l30000632:	
	line	19
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	
l30000633:	
	line	20
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	
l30000634:	
	line	22
	movlw	01h
u805:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u805
	
l30000635:	
	line	23
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u811
	goto	u810
u811:
	goto	l30000631
u810:
	
l30000636:	
	line	25
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l87:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
; =============== function ___lwdiv ends ============

psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:
	line	26
	signat	___lwdiv,8314
	global	___lwmod

; *************** function ___lwmod *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    2[COMMON] unsigned int 
;  divisor         2    4[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    2[COMMON] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         6       0       0       0       0
;      Temp:     1
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_utoa
; This function uses a non-reentrant model
; 
psect	text107
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l30000676:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u921
	goto	u920
u921:
	goto	l30000685
u920:
	
l30000677:	
	line	9
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	goto	l30000680
	
l30000678:	
	line	11
	movlw	01h
u935:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u935
	
l30000679:	
	line	12
	movlw	(01h)
	movwf	(??___lwmod+0+0)
	movf	(??___lwmod+0+0),w
	addwf	(___lwmod@counter),f
	
l30000680:	
	line	10
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u941
	goto	u940
u941:
	goto	l30000678
u940:
	
l30000681:	
	line	15
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u955
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u955:
	skipc
	goto	u951
	goto	u950
u951:
	goto	l30000683
u950:
	
l30000682:	
	line	16
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l30000683:	
	line	17
	movlw	01h
u965:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u965
	
l30000684:	
	line	18
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u971
	goto	u970
u971:
	goto	l30000681
u970:
	
l30000685:	
	line	20
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	
l96:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
; =============== function ___lwmod ends ============

psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	line	21
	signat	___lwmod,8314
	end
