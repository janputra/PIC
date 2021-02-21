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
# 8 "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	dw 0x3F32 ;#
;COMMON:	_main->_send_config
;COMMON:	_send_config->_delay
;BANK0:	_send_config->_delay
;BANK0:	_main->_Read_ADC
;COMMON:	_Read_ADC->_delay
;COMMON:	_Read_ADC->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK0:	_Read_ADC->___fttol
;BANK0:	___fttol->___ftadd
;BANK0:	___ftadd->___ftmul
;COMMON:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK0:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;COMMON:	___ftadd->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK1:	___fttol->___ftadd
;BANK0:	___ftadd->___ftmul
;COMMON:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK0:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;COMMON:	___ftadd->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;COMMON:	___fttol->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK1:	_Read_ADC->___fttol
;BANK0:	___fttol->___ftadd
;BANK0:	___ftadd->___ftmul
;COMMON:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK0:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;COMMON:	___ftadd->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK1:	___fttol->___ftadd
;BANK0:	___ftadd->___ftmul
;COMMON:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;BANK0:	___ftmul->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;COMMON:	___ftadd->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
;COMMON:	___fttol->___lltoft
;COMMON:	___lltoft->___ftpack
;BANK0:	___lltoft->___ftpack
	FNCALL	_main,_UART_Init
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_Read_ADC
	FNCALL	_main,_itoa
	FNCALL	_main,_kirim_data
	FNCALL	_main,_tamp
	FNCALL	_main,_reset
	FNCALL	_kirim_data,_UART_Write_Text
	FNCALL	_kirim_data,_UART_Write
	FNCALL	_tamp,_lcd_goto
	FNCALL	_tamp,_send_string
	FNCALL	_tamp,_send_dec
	FNCALL	_itoa,_utoa
	FNCALL	_UART_Init,___aldiv
	FNCALL	_Read_ADC,_delay
	FNCALL	_Read_ADC,___lltoft
	FNCALL	_Read_ADC,___ftmul
	FNCALL	_Read_ADC,___ftadd
	FNCALL	_Read_ADC,___fttol
	FNCALL	_reset,_UART_Write_Text
	FNCALL	_reset,_lcd_clr
	FNCALL	___ftadd,___ftpack
	FNCALL	_send_dec,___llmod
	FNCALL	_send_dec,___lldiv
	FNCALL	_send_dec,_send_char
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_utoa,___lwdiv
	FNCALL	_utoa,___lwmod
	FNCALL	_UART_Write_Text,_UART_Write
	FNCALL	_send_string,_send_char
	FNCALL	_send_string,_delay
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_goto,_delay
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	_send_config,_delay
	FNCALL	_send_config,_e_pulse
	FNCALL	_send_char,_delay
	FNCALL	_send_char,_e_pulse
	FNCALL	_e_pulse,_delay
	FNROOT	_main
	global	_AN_CH1_H
	global	_AN_CH1_L
	global	_B
	global	_iDelay
	global	_iDelay_H
	global	_iDelay_L
	global	_j
	global	_k
	global	_A
	global	_flag_ADC
	global	_flag_baca_pulsa
	global	_flag_output_pulsa_Pin
	global	_AN_CH0_H
	global	_AN_CH0_L
	global	_Baca_ADC1
	global	_counter_pulsa
	global	_posisi_LAST
	global	_posisi_NOW
	global	_time
	global	_kata
	global	_kata1
	global	_ADCON0
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:
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
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	82	;'R'
	retlw	78	;'N'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	65	;'A'
	retlw	81	;'Q'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	35	;'#'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	49	;'1'
	retlw	59	;';'
	retlw	0
psect	strings
	
STR_3:	
	retlw	35	;'#'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	50	;'2'
	retlw	59	;';'
	retlw	0
psect	strings
	
STR_6:	
	retlw	35	;'#'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	59	;';'
	retlw	0
psect	strings
	
STR_4:	
	retlw	35	;'#'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	80	;'P'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	80	;'P'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_7:	
	retlw	83	;'S'
	retlw	112	;'p'
	retlw	100	;'d'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_5:	
	retlw	83	;'S'
	retlw	86	;'V'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"ReadAbsEncoder.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_flag_ADC:
       ds      1

_flag_baca_pulsa:
       ds      1

_flag_output_pulsa_Pin:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_A:
       ds      4

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_AN_CH1_H:
       ds      4

_AN_CH1_L:
       ds      4

_B:
       ds      4

_iDelay:
       ds      4

_iDelay_H:
       ds      4

_iDelay_L:
       ds      4

_j:
       ds      2

_k:
       ds      2

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_AN_CH0_H:
       ds      4

_AN_CH0_L:
       ds      4

_Baca_ADC1:
       ds      4

_counter_pulsa:
       ds      4

_posisi_LAST:
       ds      4

_posisi_NOW:
       ds      4

_time:
       ds      4

_kata:
       ds      16

_kata1:
       ds      16

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Ch)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+03Ch)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x0
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x1
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2
	ds	1
	global	?___ftadd
?___ftadd: ;@ 0x3
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x6
	ds	3
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x9
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xA
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xE
	ds	1
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xF
	global	?___fttol
?___fttol: ;@ 0xF
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??___aldiv
??___aldiv: ;@ 0x0
	global	??___llmod
??___llmod: ;@ 0x0
	global	??___lwdiv
??___lwdiv: ;@ 0x0
	global	??___lwmod
??___lwmod: ;@ 0x0
	global	??_UART_Write
??_UART_Write: ;@ 0x0
	global	??___lldiv
??___lldiv: ;@ 0x0
	global	??___ftpack
??___ftpack: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	UART_Write@data
UART_Write@data:	; 1 bytes @ 0x0
	ds	1
	global	?_UART_Write
?_UART_Write: ;@ 0x1
	global	??_UART_Write_Text
??_UART_Write_Text: ;@ 0x1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x1
	global	UART_Init@x
UART_Init@x:	; 2 bytes @ 0x1
	ds	1
	global	??_utoa
??_utoa: ;@ 0x2
	global	??_kirim_data
??_kirim_data: ;@ 0x2
	ds	1
	global	?_kirim_data
?_kirim_data: ;@ 0x3
	global	??_itoa
??_itoa: ;@ 0x3
	global	??___lltoft
??___lltoft: ;@ 0x3
	ds	1
	global	?_send_char
?_send_char: ;@ 0x4
	global	??_send_dec
??_send_dec: ;@ 0x4
	global	?_send_string
?_send_string: ;@ 0x4
	global	??_send_config
??_send_config: ;@ 0x4
	global	??_e_pulse
??_e_pulse: ;@ 0x4
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_delay
?_delay: ;@ 0x0
	global	??_reset
??_reset: ;@ 0x0
	global	??_lcd_goto
??_lcd_goto: ;@ 0x0
	global	??_lcd_clr
??_lcd_clr: ;@ 0x0
	global	?___lwmod
?___lwmod: ;@ 0x0
	global	?___llmod
?___llmod: ;@ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	UART_Write_Text@n
UART_Write_Text@n:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack: ;@ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	1
	global	?_UART_Write_Text
?_UART_Write_Text: ;@ 0x2
	global	UART_Write_Text@text
UART_Write_Text@text:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	1
	global	?___lwdiv
?___lwdiv: ;@ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	ds	1
	global	??_send_char
??_send_char: ;@ 0x4
	global	?_e_pulse
?_e_pulse: ;@ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	send_config@data
send_config@data:	; 1 bytes @ 0x4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x4
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x4
	ds	1
	global	?___lldiv
?___lldiv: ;@ 0x5
	global	send_char@data
send_char@data:	; 1 bytes @ 0x5
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x5
	global	send_config@i
send_config@i:	; 1 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x5
	ds	1
	global	send_config@test
send_config@test:	; 1 bytes @ 0x6
	global	send_char@i
send_char@i:	; 1 bytes @ 0x6
	global	?___lltoft
?___lltoft: ;@ 0x6
	global	?___aldiv
?___aldiv: ;@ 0x6
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x6
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x6
	ds	1
	global	?_send_config
?_send_config: ;@ 0x7
	global	?_reset
?_reset: ;@ 0x7
	global	?_lcd_clr
?_lcd_clr: ;@ 0x7
	global	send_char@test
send_char@test:	; 1 bytes @ 0x7
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0x7
	global	utoa@v
utoa@v:	; 2 bytes @ 0x7
	ds	1
	global	?_lcd_goto
?_lcd_goto: ;@ 0x8
	global	??_send_string
??_send_string: ;@ 0x8
	ds	1
	global	utoa@c
utoa@c:	; 1 bytes @ 0x9
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x9
	ds	1
	global	??___ftmul
??___ftmul: ;@ 0xA
	global	utoa@buf
utoa@buf:	; 1 bytes @ 0xA
	global	send_string@s
send_string@s:	; 1 bytes @ 0xA
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0xA
	ds	1
	global	?_utoa
?_utoa: ;@ 0xB
	global	utoa@val
utoa@val:	; 2 bytes @ 0xB
	ds	2
	global	?_send_dec
?_send_dec: ;@ 0xD
	global	utoa@base
utoa@base:	; 2 bytes @ 0xD
	global	send_dec@data
send_dec@data:	; 4 bytes @ 0xD
	ds	1
	global	??_UART_Init
??_UART_Init: ;@ 0xE
	global	??_main
??_main: ;@ 0xE
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xF
	ds	1
	global	itoa@buf
itoa@buf:	; 1 bytes @ 0x10
	ds	1
	global	?_itoa
?_itoa: ;@ 0x11
	global	send_dec@num_dig
send_dec@num_dig:	; 1 bytes @ 0x11
	global	itoa@val
itoa@val:	; 2 bytes @ 0x11
	ds	1
	global	??_tamp
??_tamp: ;@ 0x12
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x12
	ds	1
	global	?_tamp
?_tamp: ;@ 0x13
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x13
	global	itoa@base
itoa@base:	; 2 bytes @ 0x13
	ds	1
	global	?___ftmul
?___ftmul: ;@ 0x14
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x14
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x17
	ds	3
	global	??___ftadd
??___ftadd: ;@ 0x1A
	global	?_UART_Init
?_UART_Init: ;@ 0x1A
	global	UART_Init@baudrate
UART_Init@baudrate:	; 4 bytes @ 0x1A
	ds	3
	global	??___fttol
??___fttol: ;@ 0x1D
	ds	3
	global	??_Read_ADC
??_Read_ADC: ;@ 0x20
	ds	4
	global	?_main
?_main: ;@ 0x24
	global	?_Read_ADC
?_Read_ADC: ;@ 0x24
;Data sizes: Strings 73, constant 0, data 0, bss 92, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      10
; BANK0           80     36      64
; BANK1           80     19      79
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:

;sp__itoa	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;send_string@s	PTR const unsigned char  size(1); Largest target is 16
;		 -> STR_1(CODE[16]), STR_7(CODE[5]), STR_8(CODE[5]), 
;UART_Write_Text@text	PTR unsigned char  size(2); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), STR_2(CODE[12]), STR_3(CODE[12]), 
;		 -> STR_4(CODE[9]), STR_5(CODE[4]), STR_6(CODE[10]), 
;?___aldiv	long  size(1); Largest target is 0
;?___lldiv	unsigned long  size(1); Largest target is 0
;?___llmod	unsigned long  size(1); Largest target is 0
;itoa@cp	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;itoa@buf	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;sp__utoa	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;utoa@buf	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;?_itoa	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;?___ftadd	float  size(1); Largest target is 0
;?___fttol	long  size(1); Largest target is 0
;?___lltoft	float  size(1); Largest target is 0
;?___ftmul	float  size(1); Largest target is 0
;?_utoa	PTR unsigned char  size(1); Largest target is 16
;		 -> kata(BANK1[16]), kata1(BANK1[16]), 
;?___lwdiv	unsigned int  size(1); Largest target is 0
;?___lwmod	unsigned int  size(1); Largest target is 0
;?___ftpack	float  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0 14049   0.00
;          _UART_Init
;        _send_config
;           _lcd_goto
;        _send_string
;           _Read_ADC
;               _itoa
;         _kirim_data
;               _tamp
;              _reset
;  _kirim_data                                        0    0  150   0.00
;    _UART_Write_Text
;         _UART_Write
;  _tamp                                              1    0 2607   0.00
;                                   18 BANK0    1
;           _lcd_goto
;        _send_string
;           _send_dec
;  _itoa                                              3    4  837   0.00
;                                    3 COMMO    1
;                                   15 BANK0    6
;               _utoa
;  _UART_Init                                        14    4  336   0.00
;                                    1 COMMO    2
;                                   14 BANK0   16
;            ___aldiv
;  _Read_ADC                                          4    0 7971   0.00
;                                   32 BANK0    4
;              _delay
;           ___lltoft
;            ___ftmul
;            ___ftadd
;            ___fttol
;  _reset                                             0    0  600   0.00
;    _UART_Write_Text
;            _lcd_clr
;    ___ftadd                                         6    6 2514   0.00
;                                   26 BANK0    3
;                                    0 BANK1    9
;            ___ftmul (ARG)
;           ___lltoft (ARG)
;           ___ftpack
;    ___fttol                                         9    4 4107   0.00
;                                   29 BANK0    3
;                                    9 BANK1   10
;            ___ftadd (ARG)
;            ___ftmul (ARG)
;           ___lltoft (ARG)
;    _send_dec                                        0    5 1482   0.00
;                                   13 BANK0    5
;            ___llmod
;            ___lldiv
;          _send_char
;    _lcd_clr                                         0    0  474   0.00
;        _send_config
;              _delay
;    _utoa                                            5    4  654   0.00
;                                    2 COMMO    1
;                                    7 BANK0    8
;            ___lwdiv
;            ___lwmod
;    _UART_Write_Text                                 4    2  126   0.00
;                                    1 COMMO    2
;                                    0 BANK0    4
;         _UART_Write
;    _send_string                                     3    0  552   0.00
;                                    8 BANK0    3
;          _send_char
;              _delay
;    _lcd_goto                                        1    0  573   0.00
;                                    7 BANK0    1
;        _send_config
;              _delay
;    ___aldiv                                         7    8  222   0.00
;                                    0 COMMO    1
;                                    0 BANK0   14
;    ___lltoft                                        2    4  330   0.00
;                                    3 COMMO    1
;                                    5 BANK0    5
;           ___ftpack
;    ___ftmul                                        10    6  969   0.00
;                                   10 BANK0   16
;           ___lltoft (ARG)
;           ___ftpack
;      ___llmod                                       2    8  117   0.00
;                                    0 COMMO    2
;                                    0 BANK0    8
;      _send_config                                   4    0  423   0.00
;                                    4 COMMO    1
;                                    4 BANK0    3
;              _delay
;            _e_pulse
;      ___lldiv                                       6    8  192   0.00
;                                    0 COMMO    1
;                                    0 BANK0   13
;      _UART_Write                                    1    0   24   0.00
;                                    0 COMMO    1
;      ___lwmod                                       2    4  117   0.00
;                                    0 COMMO    2
;                                    0 BANK0    4
;      ___lwdiv                                       4    4  192   0.00
;                                    0 COMMO    1
;                                    0 BANK0    7
;      _send_char                                     4    0  423   0.00
;                                    4 BANK0    4
;              _delay
;            _e_pulse
;      ___ftpack                                      3    5  249   0.00
;                                    0 COMMO    3
;                                    0 BANK0    5
;        _e_pulse                                     0    0   51   0.00
;              _delay
;          _delay                                     4    4   51   0.00
;                                    0 COMMO    4
;                                    0 BANK0    4
; Estimated maximum call depth 5
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       1       0        7.1%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      99       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50     24      40       5       80.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50     13      4F       7       98.8%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      99      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 60 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
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
;		_send_config
;		_lcd_goto
;		_send_string
;		_Read_ADC
;		_itoa
;		_kirim_data
;		_tamp
;		_reset
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;pic168xa.h: 19: volatile unsigned char INDF @ 0x00;
;pic168xa.h: 20: volatile unsigned char TMR0 @ 0x01;
;pic168xa.h: 21: volatile unsigned char PCL @ 0x02;
;pic168xa.h: 22: volatile unsigned char STATUS @ 0x03;
;pic168xa.h: 23: unsigned char FSR @ 0x04;
;pic168xa.h: 24: volatile unsigned char PORTA @ 0x05;
;pic168xa.h: 25: volatile unsigned char PORTB @ 0x06;
;pic168xa.h: 26: volatile unsigned char PORTC @ 0x07;
;pic168xa.h: 28: volatile unsigned char PORTD @ 0x08;
;pic168xa.h: 29: volatile unsigned char PORTE @ 0x09;
	
_main:	
	opt stack 7
; Regs used in _main: [allreg]
	line	61
	
l30001374:	
;MVC.c: 61: UART_Init(9600);
	movlw	0
	movwf	(?_UART_Init+3)
	movlw	0
	movwf	(?_UART_Init+2)
	movlw	025h
	movwf	(?_UART_Init+1)
	movlw	080h
	movwf	(?_UART_Init)

	fcall	_UART_Init
	
l30001375:	
	line	64
;MVC.c: 64: TRISA = 0b00011111;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	
l30001376:	
	line	65
;MVC.c: 65: TRISB = 0b00000001;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	
l30001377:	
	line	66
;MVC.c: 66: TRISC = 0b10000000;
	movlw	(080h)
	movwf	(135)^080h	;volatile
	
l30001378:	
	line	67
;MVC.c: 67: TRISD = 0b00000000;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(136)^080h	;volatile
	
l30001379:	
	line	68
;MVC.c: 68: TRISE = 0b00000000;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(137)^080h	;volatile
	
l30001380:	
	line	70
;MVC.c: 70: PORTA = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	
l30001381:	
	line	71
;MVC.c: 71: PORTB = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(6)	;volatile
	
l30001382:	
	line	72
;MVC.c: 72: PORTC = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(7)	;volatile
	
l30001383:	
	line	73
;MVC.c: 73: PORTD = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(8)	;volatile
	
l30001384:	
	line	74
;MVC.c: 74: PORTE = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(9)	;volatile
	
l30001385:	
	line	76
;MVC.c: 76: INTEDG = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1038/8)^080h,(1038)&7
	
l30001386:	
	line	77
;MVC.c: 77: GIE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30001387:	
	line	78
;MVC.c: 78: INTE = 1;
	bsf	(92/8),(92)&7
	
l30001388:	
	line	79
;MVC.c: 79: INTF = 0;
	bcf	(89/8),(89)&7
	
l30001389:	
	line	81
;MVC.c: 81: RC0 = 1;
	bsf	(56/8),(56)&7
	
l30001390:	
	line	84
;MVC.c: 84: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	
l30001391:	
	line	85
;MVC.c: 85: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	
l30001392:	
	line	86
;MVC.c: 86: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	
l30001393:	
	line	87
;MVC.c: 87: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	
l30001394:	
	line	88
;MVC.c: 88: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	
l30001395:	
	line	91
;MVC.c: 91: ADCON1 = 0b10000000;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	
l30001396:	
	line	92
;MVC.c: 92: ADCON0 = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l30001397:	
	line	94
;MVC.c: 94: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	
l30001398:	
	line	95
;MVC.c: 95: send_string("    RND DAQ    ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	
l30001399:	
	line	101
;MVC.c: 99: {
;MVC.c: 101: Read_ADC();
	fcall	_Read_ADC
	
l30001400:	
	line	102
;MVC.c: 102: itoa(kata,A,10);
	movf	(_A+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_itoa+1)
	addwf	(?_itoa+1)
	movf	(_A),w
	clrf	(?_itoa)
	addwf	(?_itoa)

	movlw	low(0Ah)
	movwf	0+(?_itoa)+02h
	movlw	high(0Ah)
	movwf	(0+(?_itoa)+02h)+1
	movlw	((_kata))&0ffh
	fcall	_itoa
	
l30001401:	
	line	103
;MVC.c: 103: itoa(kata1,B,10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_B+1),w
	clrf	(?_itoa+1)
	addwf	(?_itoa+1)
	movf	(_B),w
	clrf	(?_itoa)
	addwf	(?_itoa)

	movlw	low(0Ah)
	movwf	0+(?_itoa)+02h
	movlw	high(0Ah)
	movwf	(0+(?_itoa)+02h)+1
	movlw	((_kata1))&0ffh
	fcall	_itoa
	
l30001402:	
	line	104
;MVC.c: 104: kirim_data();
	fcall	_kirim_data
	
l30001403:	
	line	105
;MVC.c: 105: tamp();
	fcall	_tamp
	
l30001404:	
	line	106
;MVC.c: 106: reset();
	fcall	_reset
	goto	l30001399
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	126
	signat	_main,88
	global	_kirim_data
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:

; *************** function _kirim_data *****************
; Defined at:
;		line 147 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_UART_Write_Text
;		_UART_Write
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text204
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	147
	global	__size_of_kirim_data
	__size_of_kirim_data	equ	__end_of_kirim_data-_kirim_data
;MVC.c: 146: void kirim_data()
;MVC.c: 147: {
	
_kirim_data:	
	opt stack 6
; Regs used in _kirim_data: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	150
	
l30001612:	
;MVC.c: 150: UART_Write_Text("#1 SPOS:");
	movlw	((STR_4-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_Write_Text)
	movlw	00h
	movwf	(?_UART_Write_Text+1)
	fcall	_UART_Write_Text
	line	151
;MVC.c: 151: UART_Write_Text(kata1);
	movlw	((_kata1)&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_Write_Text)
	movlw	80h|(0x1/2)
	movwf	(?_UART_Write_Text+1)
	fcall	_UART_Write_Text
	
l30001613:	
	line	152
;MVC.c: 152: UART_Write(',');
	movlw	(02Ch)
	fcall	_UART_Write
	
l30001614:	
	line	154
;MVC.c: 154: UART_Write_Text("SV:");
	movlw	((STR_5-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_Write_Text)
	movlw	00h
	movwf	(?_UART_Write_Text+1)
	fcall	_UART_Write_Text
	
l30001615:	
	line	155
;MVC.c: 155: UART_Write_Text(kata);
	movlw	((_kata)&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_UART_Write_Text)
	movlw	80h|(0x1/2)
	movwf	(?_UART_Write_Text+1)
	fcall	_UART_Write_Text
	
l30001616:	
	line	156
;MVC.c: 156: UART_Write(';');
	movlw	(03Bh)
	fcall	_UART_Write
	
l17:	
	return
	opt stack 0
GLOBAL	__end_of_kirim_data
	__end_of_kirim_data:
; =============== function _kirim_data ends ============

psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:
	line	157
	signat	_kirim_data,88
	global	_tamp

; *************** function _tamp *****************
; Defined at:
;		line 173 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_lcd_goto
;		_send_string
;		_send_dec
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text205
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	173
	global	__size_of_tamp
	__size_of_tamp	equ	__end_of_tamp-_tamp
;MVC.c: 172: void tamp()
;MVC.c: 173: {
	
_tamp:	
	opt stack 6
; Regs used in _tamp: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	174
	
l30001435:	
;MVC.c: 174: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	175
;MVC.c: 175: send_string("Spd:");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	176
;MVC.c: 176: lcd_goto(24);
	movlw	(018h)
	fcall	_lcd_goto
	line	177
;MVC.c: 177: send_dec(A,3);
	movf	(_A+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_send_dec+3)
	movf	(_A+2),w
	movwf	(?_send_dec+2)
	movf	(_A+1),w
	movwf	(?_send_dec+1)
	movf	(_A),w
	movwf	(?_send_dec)

	movlw	(03h)
	movwf	(??_tamp+0+0)
	movf	(??_tamp+0+0),w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	line	179
;MVC.c: 179: lcd_goto(28);
	movlw	(01Ch)
	fcall	_lcd_goto
	line	180
;MVC.c: 180: send_string("Pos:");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	181
;MVC.c: 181: lcd_goto(32);
	movlw	(020h)
	fcall	_lcd_goto
	line	182
;MVC.c: 182: send_dec(B,4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_B+3),w
	movwf	(?_send_dec+3)
	movf	(_B+2),w
	movwf	(?_send_dec+2)
	movf	(_B+1),w
	movwf	(?_send_dec+1)
	movf	(_B),w
	movwf	(?_send_dec)

	movlw	(04h)
	movwf	(??_tamp+0+0)
	movf	(??_tamp+0+0),w
	movwf	0+(?_send_dec)+04h
	fcall	_send_dec
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_tamp
	__end_of_tamp:
; =============== function _tamp ends ============

psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:
	line	184
	signat	_tamp,88
	global	_itoa

; *************** function _itoa *****************
; Defined at:
;		line 5 in file "../../common/itoa.c"
; Parameters:    Size  Location     Type
;  buf             1    wreg     PTR unsigned char 
;		 -> kata(16), kata1(16), 
;  val             2   17[BANK0 ] int 
;  base            2   19[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  buf             1   16[BANK0 ] PTR unsigned char 
;		 -> kata(16), kata1(16), 
;  cp              1    0        PTR unsigned char 
;		 -> kata(16), kata1(16), 
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
psect	text206
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\itoa.c"
	line	5
	global	__size_of_itoa
	__size_of_itoa	equ	__end_of_itoa-_itoa
	
_itoa:	
	opt stack 6
; Regs used in _itoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;itoa@buf stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(itoa@buf)
	
l30001540:	
	
l30001541:	
	line	8
	btfss	(itoa@val+1),7
	goto	u3851
	goto	u3850
u3851:
	goto	l30001545
u3850:
	
l30001542:	
	line	9
	movlw	(02Dh)
	movwf	(??_itoa+0+0)
	movf	(itoa@buf),w
	movwf	fsr0
	movf	(??_itoa+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001543:	
	movlw	(01h)
	movwf	(??_itoa+0+0)
	movf	(??_itoa+0+0),w
	addwf	(itoa@buf),f
	
l30001544:	
	line	10
	comf	(itoa@val),f
	comf	(itoa@val+1),f
	incf	(itoa@val),f
	skipnz
	incf	(itoa@val+1),f
	
l30001545:	
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
	
l142:	
	return
	opt stack 0
GLOBAL	__end_of_itoa
	__end_of_itoa:
; =============== function _itoa ends ============

psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:
	line	14
	signat	_itoa,12409
	global	_UART_Init

; *************** function _UART_Init *****************
; Defined at:
;		line 471 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  baudrate        4   26[BANK0 ] const long 
; Auto vars:     Size  Location     Type
;  x               2    1[COMMON] unsigned int 
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
psect	text207
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	471
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
;MVC.c: 470: char UART_Init(const long int baudrate)
;MVC.c: 471: {
	
_UART_Init:	
	opt stack 6
; Regs used in _UART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	473
	
l30001058:	
;MVC.c: 472: unsigned int x;
;MVC.c: 473: x = (11059200 - baudrate*64)/(baudrate*64);
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
u1995:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u1990:
	addlw	-1
	skipz
	goto	u1995
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
	goto	u2000
	goto	u2001
u2000:
	addwf	(??_UART_Init+0+1),f
u2001:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u2002
	goto	u2003
u2002:
	addwf	(??_UART_Init+0+2),f
u2003:
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
u2015:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u2010:
	addlw	-1
	skipz
	goto	u2015
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

	
l30001059:	
	line	474
;MVC.c: 474: if(x>255)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l30001062
u2020:
	
l30001060:	
	line	476
;MVC.c: 475: {
;MVC.c: 476: x = (11059200 - baudrate*16)/(baudrate*16);
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
u2035:
	clrc
	rlf	(??_UART_Init+4+0),f
	rlf	(??_UART_Init+4+1),f
	rlf	(??_UART_Init+4+2),f
	rlf	(??_UART_Init+4+3),f
u2030:
	addlw	-1
	skipz
	goto	u2035
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
	goto	u2040
	goto	u2041
u2040:
	addwf	(??_UART_Init+0+1),f
u2041:
	movf	2+(??_UART_Init+4+0),w
	skipnc
	incfsz	2+(??_UART_Init+4+0),w
	goto	u2042
	goto	u2043
u2042:
	addwf	(??_UART_Init+0+2),f
u2043:
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
u2055:
	clrc
	rlf	(??_UART_Init+8+0),f
	rlf	(??_UART_Init+8+1),f
	rlf	(??_UART_Init+8+2),f
	rlf	(??_UART_Init+8+3),f
u2050:
	addlw	-1
	skipz
	goto	u2055
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

	
l30001061:	
	line	477
;MVC.c: 477: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	
l30001062:	
	line	479
;MVC.c: 478: }
;MVC.c: 479: if(x<256)
	movlw	high(0100h)
	subwf	(UART_Init@x+1),w
	movlw	low(0100h)
	skipnz
	subwf	(UART_Init@x),w
	skipnc
	goto	u2061
	goto	u2060
u2061:
	goto	l115
u2060:
	
l30001063:	
	line	481
;MVC.c: 480: {
;MVC.c: 481: SPBRG = x;
	movf	(UART_Init@x),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	
l30001064:	
	line	482
;MVC.c: 482: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7
	
l30001065:	
	line	483
;MVC.c: 483: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l30001066:	
	line	484
;MVC.c: 484: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	
l30001067:	
	line	485
;MVC.c: 485: TRISC6 = 1;
	bsf	(1086/8)^080h,(1086)&7
	
l30001068:	
	line	486
;MVC.c: 486: CREN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l30001069:	
	line	487
;MVC.c: 487: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
; =============== function _UART_Init ends ============

psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:
	line	491
	signat	_UART_Init,4217
	global	_Read_ADC

; *************** function _Read_ADC *****************
; Defined at:
;		line 187 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       0       0       0
;      Temp:     4
;      Total:    4
; This function calls:
;		_delay
;		___lltoft
;		___ftmul
;		___ftadd
;		___fttol
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text208
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	187
	global	__size_of_Read_ADC
	__size_of_Read_ADC	equ	__end_of_Read_ADC-_Read_ADC
;MVC.c: 186: void Read_ADC (void)
;MVC.c: 187: {
	
_Read_ADC:	
	opt stack 6
; Regs used in _Read_ADC: [wreg+status,2+status,0+pclath+cstack]
	line	188
	
l30001366:	
;MVC.c: 188: ADCON0 = 0b01000001;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	
l30001367:	
	line	189
;MVC.c: 189: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	
l30001368:	
	line	190
;MVC.c: 190: ADGO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	
l25:	
	line	191
	btfsc	(250/8),(250)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l25
u3290:
	
l30001369:	
	line	192
;MVC.c: 192: iDelay_L = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Read_ADC+0+0)
	clrf	(??_Read_ADC+0+0+1)
	clrf	(??_Read_ADC+0+0+2)
	clrf	(??_Read_ADC+0+0+3)
	movf	3+(??_Read_ADC+0+0),w
	movwf	(_iDelay_L+3)
	movf	2+(??_Read_ADC+0+0),w
	movwf	(_iDelay_L+2)
	movf	1+(??_Read_ADC+0+0),w
	movwf	(_iDelay_L+1)
	movf	0+(??_Read_ADC+0+0),w
	movwf	(_iDelay_L)

	line	193
;MVC.c: 193: iDelay_H = (ADRESH << 8);
	movf	(30),w	;volatile
	movwf	(??_Read_ADC+0+0)
	clrf	(??_Read_ADC+0+0+1)
	movlw	08h
	movwf	(??_Read_ADC+2+0)
u3305:
	clrc
	rlf	(??_Read_ADC+0+0),f
	rlf	(??_Read_ADC+0+1),f
	decfsz	(??_Read_ADC+2+0),f
	goto	u3305
	movf	0+(??_Read_ADC+0+0),w
	movwf	(_iDelay_H)
	movf	1+(??_Read_ADC+0+0),w
	movwf	(_iDelay_H+1)
	movlw	0
	btfsc	(_iDelay_H+1),7
	movlw	255
	movwf	(_iDelay_H+2)
	movwf	(_iDelay_H+3)
	line	194
;MVC.c: 194: A = (iDelay_L + iDelay_H) ;
	movf	(_iDelay_L),w
	addwf	(_iDelay_H),w
	movwf	(??_Read_ADC+0+0+0)
	movlw	0
	skipnc
	movlw	1
	addwf	(_iDelay_L+1),w
	clrf	(??_Read_ADC+0+0+2)
	skipnc
	incf	(??_Read_ADC+0+0+2),f
	addwf	(_iDelay_H+1),w
	movwf	(??_Read_ADC+0+0+1)
	skipnc
	incf	(??_Read_ADC+0+0+2),f
	movf	(_iDelay_L+2),w
	addwf	(??_Read_ADC+0+0+2),w
	clrf	(??_Read_ADC+0+0+3)
	skipnc
	incf	(??_Read_ADC+0+0+3),f
	addwf	(_iDelay_H+2),w
	movwf	(??_Read_ADC+0+0+2)
	skipnc
	incf	(??_Read_ADC+0+0+3),f
	movf	(_iDelay_L+3),w
	addwf	(??_Read_ADC+0+0+3),w
	addwf	(_iDelay_H+3),w
	movwf	(??_Read_ADC+0+0+3)
	movf	3+(??_Read_ADC+0+0),w
	movwf	(_A+3)
	movf	2+(??_Read_ADC+0+0),w
	movwf	(_A+2)
	movf	1+(??_Read_ADC+0+0),w
	movwf	(_A+1)
	movf	0+(??_Read_ADC+0+0),w
	movwf	(_A)

	line	196
;MVC.c: 196: ADCON0 = 0b01001001;
	movlw	(049h)
	movwf	(31)	;volatile
	
l30001370:	
	line	197
;MVC.c: 197: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	
l30001371:	
	line	198
;MVC.c: 198: ADGO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	
l28:	
	line	199
	btfsc	(250/8),(250)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l28
u3310:
	
l30001372:	
	line	200
;MVC.c: 200: AN_CH1_L = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Read_ADC+0+0)
	clrf	(??_Read_ADC+0+0+1)
	clrf	(??_Read_ADC+0+0+2)
	clrf	(??_Read_ADC+0+0+3)
	movf	3+(??_Read_ADC+0+0),w
	movwf	(_AN_CH1_L+3)
	movf	2+(??_Read_ADC+0+0),w
	movwf	(_AN_CH1_L+2)
	movf	1+(??_Read_ADC+0+0),w
	movwf	(_AN_CH1_L+1)
	movf	0+(??_Read_ADC+0+0),w
	movwf	(_AN_CH1_L)

	line	201
;MVC.c: 201: AN_CH1_H = (ADRESH << 8);
	movf	(30),w	;volatile
	movwf	(??_Read_ADC+0+0)
	clrf	(??_Read_ADC+0+0+1)
	movlw	08h
	movwf	(??_Read_ADC+2+0)
u3325:
	clrc
	rlf	(??_Read_ADC+0+0),f
	rlf	(??_Read_ADC+0+1),f
	decfsz	(??_Read_ADC+2+0),f
	goto	u3325
	movf	0+(??_Read_ADC+0+0),w
	movwf	(_AN_CH1_H)
	movf	1+(??_Read_ADC+0+0),w
	movwf	(_AN_CH1_H+1)
	movlw	0
	btfsc	(_AN_CH1_H+1),7
	movlw	255
	movwf	(_AN_CH1_H+2)
	movwf	(_AN_CH1_H+3)
	
l30001373:	
	line	202
;MVC.c: 202: B = (((AN_CH1_H + AN_CH1_L)*7.8)+30);
	movf	(_AN_CH1_H),w
	addwf	(_AN_CH1_L),w
	movwf	(??_Read_ADC+0+0+0)
	movlw	0
	skipnc
	movlw	1
	addwf	(_AN_CH1_H+1),w
	clrf	(??_Read_ADC+0+0+2)
	skipnc
	incf	(??_Read_ADC+0+0+2),f
	addwf	(_AN_CH1_L+1),w
	movwf	(??_Read_ADC+0+0+1)
	skipnc
	incf	(??_Read_ADC+0+0+2),f
	movf	(_AN_CH1_H+2),w
	addwf	(??_Read_ADC+0+0+2),w
	clrf	(??_Read_ADC+0+0+3)
	skipnc
	incf	(??_Read_ADC+0+0+3),f
	addwf	(_AN_CH1_L+2),w
	movwf	(??_Read_ADC+0+0+2)
	skipnc
	incf	(??_Read_ADC+0+0+3),f
	movf	(_AN_CH1_H+3),w
	addwf	(??_Read_ADC+0+0+3),w
	addwf	(_AN_CH1_L+3),w
	movwf	(??_Read_ADC+0+0+3)
	movf	3+(??_Read_ADC+0+0),w
	movwf	(?___lltoft+3)
	movf	2+(??_Read_ADC+0+0),w
	movwf	(?___lltoft+2)
	movf	1+(??_Read_ADC+0+0),w
	movwf	(?___lltoft+1)
	movf	0+(??_Read_ADC+0+0),w
	movwf	(?___lltoft)

	fcall	___lltoft
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lltoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftmul+2)
	movlw	0x9a
	movwf	0+(?___ftmul)+03h
	movlw	0xf9
	movwf	1+(?___ftmul)+03h
	movlw	0x40
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+2)^080h
	movlw	0x0
	movwf	0+(?___ftadd)^080h+03h
	movlw	0xf0
	movwf	1+(?___ftadd)^080h+03h
	movlw	0x41
	movwf	2+(?___ftadd)^080h+03h
	fcall	___ftadd
	bcf	status, 7	;select IRP bank1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___ftadd))^080h,w
	movwf	(?___fttol)^080h
	movf	(1+(?___ftadd))^080h,w
	movwf	(?___fttol+1)^080h
	movf	(2+(?___ftadd))^080h,w
	movwf	(?___fttol+2)^080h
	fcall	___fttol
	bcf	status, 7	;select IRP bank1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(3+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_B+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(2+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_B+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_B+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___fttol))^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_B)

	
l24:	
	return
	opt stack 0
GLOBAL	__end_of_Read_ADC
	__end_of_Read_ADC:
; =============== function _Read_ADC ends ============

psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:
	line	245
	signat	_Read_ADC,88
	global	_reset

; *************** function _reset *****************
; Defined at:
;		line 160 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_UART_Write_Text
;		_lcd_clr
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text209
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	160
	global	__size_of_reset
	__size_of_reset	equ	__end_of_reset-_reset
;MVC.c: 159: void reset()
;MVC.c: 160: {
	
_reset:	
	opt stack 6
; Regs used in _reset: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	162
	
l30001473:	
;MVC.c: 161: {
;MVC.c: 162: if (RB3==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(51/8),(51)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l18
u3560:
	
l30001474:	
	line	164
;MVC.c: 163: {
;MVC.c: 164: UART_Write_Text("#1 RESET;");
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(?_UART_Write_Text)
	movlw	00h
	movwf	(?_UART_Write_Text+1)
	fcall	_UART_Write_Text
	line	165
;MVC.c: 165: lcd_clr();
	fcall	_lcd_clr
	
l30001475:	
	line	166
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l30001475
u3570:
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of_reset
	__end_of_reset:
; =============== function _reset ends ============

psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:
	line	171
	signat	_reset,88
	global	___ftadd

; *************** function ___ftadd *****************
; Defined at:
;		line 87 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\ftadd.c"
; Parameters:    Size  Location     Type
;  f1              3    3[BANK1 ] float 
;  f2              3    6[BANK1 ] float 
; Auto vars:     Size  Location     Type
;  exp1            1    2[BANK1 ] unsigned char 
;  exp2            1    1[BANK1 ] unsigned char 
;  sign            1    0[BANK1 ] unsigned char 
; Return value:  Size  Location     Type
;                  3    3[BANK1 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       3       9       0       0
;      Temp:     3
;      Total:   12
; This function calls:
;		___ftpack
; This function is called by:
;		_Read_ADC
; This function uses a non-reentrant model
; 
psect	text210
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l30001547:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0+2)
	clrc
	rlf	(??___ftadd+0+1),w
	rlf	(??___ftadd+0+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftadd@exp1)^080h
	line	91
	movf	(___ftadd@f2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0+2)
	clrc
	rlf	(??___ftadd+0+1),w
	rlf	(??___ftadd+0+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftadd@exp2)^080h
	
l30001548:	
	line	92
	movf	(___ftadd@exp1)^080h,w
	skipz
	goto	u3860
	goto	l30001551
u3860:
	
l30001549:	
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u3871
	goto	u3870
u3871:
	goto	l30001553
u3870:
	
l30001550:	
	decf	(___ftadd@exp1)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l30001553
u3880:
	
l30001551:	
	line	93
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftadd@f2+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftadd@f2+2)^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l194
	
l30001553:	
	line	94
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@exp2)^080h,w
	skipz
	goto	u3890
	goto	l30001556
u3890:
	
l30001554:	
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u3901
	goto	u3900
u3901:
	goto	l30001558
u3900:
	
l30001555:	
	decf	(___ftadd@exp2)^080h,w
	xorlw	0ffh
	addwf	(___ftadd@exp1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	movlw	low(019h)
	subwf	(??___ftadd+0+0),w
	skipc
	goto	u3911
	goto	u3910
u3911:
	goto	l30001558
u3910:
	
l30001556:	
	line	95
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f1)^080h,w
	movwf	(?___ftadd)^080h
	movf	(___ftadd@f1+1)^080h,w
	movwf	(?___ftadd+1)^080h
	movf	(___ftadd@f1+2)^080h,w
	movwf	(?___ftadd+2)^080h
	goto	l194
	
l30001558:	
	line	96
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___ftadd@sign)^080h
	
l30001559:	
	line	97
	btfss	(___ftadd@f1+2)^080h,(23)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l197
u3920:
	
l30001560:	
	line	98
	bsf	(___ftadd@sign)^080h+(7/8),(7)&7
	
l197:	
	line	99
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l198
u3930:
	
l30001561:	
	line	100
	bsf	(___ftadd@sign)^080h+(6/8),(6)&7
	
l198:	
	line	101
	bsf	(___ftadd@f1)^080h+(15/8),(15)&7
	
l30001562:	
	line	102
	movlw	0FFh
	andwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f1+1)^080h,f
	movlw	0
	andwf	(___ftadd@f1+2)^080h,f
	
l30001563:	
	line	103
	bsf	(___ftadd@f2)^080h+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	andwf	(___ftadd@f2+1)^080h,f
	movlw	0
	andwf	(___ftadd@f2+2)^080h,f
	line	106
	movf	(___ftadd@exp2)^080h,w
	subwf	(___ftadd@exp1)^080h,w
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l30001569
u3940:
	
l30001564:	
	line	110
	movlw	01h
u3955:
	clrc
	rlf	(___ftadd@f2)^080h,f
	rlf	(___ftadd@f2+1)^080h,f
	rlf	(___ftadd@f2+2)^080h,f
	addlw	-1
	skipz
	goto	u3955
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2)^080h,f
	
l30001565:	
	line	112
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u3961
	goto	u3960
u3961:
	goto	l30001568
u3960:
	
l30001566:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h)&07fh,w
	andlw	07h
	btfss	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l30001564
u3970:
	goto	l30001568
	
l30001567:	
	line	114
	movlw	01h
u3985:
	clrc
	rrf	(___ftadd@f1+2)^080h,f
	rrf	(___ftadd@f1+1)^080h,f
	rrf	(___ftadd@f1)^080h,f
	addlw	-1
	skipz
	goto	u3985

	line	115
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___ftadd@exp1)^080h,f
	
l30001568:	
	line	113
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u3991
	goto	u3990
u3991:
	goto	l30001567
u3990:
	goto	l206
	
l30001569:	
	line	117
	movf	(___ftadd@exp1)^080h,w
	subwf	(___ftadd@exp2)^080h,w
	skipnc
	goto	u4001
	goto	u4000
u4001:
	goto	l206
u4000:
	
l30001570:	
	line	121
	movlw	01h
u4015:
	clrc
	rlf	(___ftadd@f1)^080h,f
	rlf	(___ftadd@f1+1)^080h,f
	rlf	(___ftadd@f1+2)^080h,f
	addlw	-1
	skipz
	goto	u4015
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1)^080h,f
	
l30001571:	
	line	123
	movf	(___ftadd@exp2)^080h,w
	xorwf	(___ftadd@exp1)^080h,w
	skipnz
	goto	u4021
	goto	u4020
u4021:
	goto	l30001574
u4020:
	
l30001572:	
	movlw	low(01h)
	subwf	(___ftadd@sign)^080h,f
	movf	((___ftadd@sign)^080h)&07fh,w
	andlw	07h
	btfss	status,2
	goto	u4031
	goto	u4030
u4031:
	goto	l30001570
u4030:
	goto	l30001574
	
l30001573:	
	line	125
	movlw	01h
u4045:
	clrc
	rrf	(___ftadd@f2+2)^080h,f
	rrf	(___ftadd@f2+1)^080h,f
	rrf	(___ftadd@f2)^080h,f
	addlw	-1
	skipz
	goto	u4045

	line	126
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___ftadd@exp2)^080h,f
	
l30001574:	
	line	124
	movf	(___ftadd@exp1)^080h,w
	xorwf	(___ftadd@exp2)^080h,w
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l30001573
u4050:
	
l206:	
	line	129
	btfss	(___ftadd@sign)^080h,(7)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l30001576
u4060:
	
l30001575:	
	line	131
	movlw	0FFh
	xorwf	(___ftadd@f1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f1+2)^080h,f
	line	132
	movlw	01h
	addwf	(___ftadd@f1)^080h,f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4071
	addwf	(___ftadd@f1+1)^080h,f
u4071:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4072
	addwf	(___ftadd@f1+2)^080h,f
u4072:

	
l30001576:	
	line	134
	btfss	(___ftadd@sign)^080h,(6)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l30001578
u4080:
	
l30001577:	
	line	136
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	137
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4091
	addwf	(___ftadd@f2+1)^080h,f
u4091:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4092
	addwf	(___ftadd@f2+2)^080h,f
u4092:

	
l30001578:	
	line	139
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)^080h
	
l30001579:	
	line	140
	movf	(___ftadd@f1)^080h,w
	addwf	(___ftadd@f2)^080h,f
	movf	(___ftadd@f1+1)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+1)^080h,w
	skipnz
	goto	u4101
	addwf	(___ftadd@f2+1)^080h,f
u4101:
	movf	(___ftadd@f1+2)^080h,w
	clrz
	skipnc
	incf	(___ftadd@f1+2)^080h,w
	skipnz
	goto	u4102
	addwf	(___ftadd@f2+2)^080h,f
u4102:

	
l30001580:	
	line	141
	btfss	(___ftadd@f2+2)^080h,(23)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l30001583
u4110:
	
l30001581:	
	line	142
	movlw	0FFh
	xorwf	(___ftadd@f2)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+1)^080h,f
	movlw	0FFh
	xorwf	(___ftadd@f2+2)^080h,f
	line	143
	movlw	01h
	addwf	(___ftadd@f2)^080h,f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4121
	addwf	(___ftadd@f2+1)^080h,f
u4121:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4122
	addwf	(___ftadd@f2+2)^080h,f
u4122:

	
l30001582:	
	line	144
	clrf	(___ftadd@sign)^080h
	bsf	status,0
	rlf	(___ftadd@sign)^080h,f
	
l30001583:	
	line	146
	movf	(___ftadd@f2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@f2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftpack+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@exp1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+0+0)
	movf	(??___ftadd+0+0),w
	movwf	0+(?___ftpack)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___ftadd@sign)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___ftadd+1+0)
	movf	(??___ftadd+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftpack)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(?___ftadd+2)^080h
	
l194:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
; =============== function ___ftadd ends ============

psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:
	line	148
	signat	___ftadd,8315
	global	___fttol

; *************** function ___fttol *****************
; Defined at:
;		line 45 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\fttol.c"
; Parameters:    Size  Location     Type
;  f1              3   15[BANK1 ] float 
; Auto vars:     Size  Location     Type
;  lval            4   10[BANK1 ] unsigned long 
;  exp1            1   14[BANK1 ] unsigned char 
;  sign1           1    9[BANK1 ] unsigned char 
; Return value:  Size  Location     Type
;                  4   15[BANK1 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       3      10       0       0
;      Temp:     3
;      Total:   13
; This function calls:
; This function is called by:
;		_Read_ADC
; This function uses a non-reentrant model
; 
psect	text211
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt stack 5
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l30001619:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+2)
	clrc
	rlf	(??___fttol+0+1),w
	rlf	(??___fttol+0+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fttol@exp1)^080h
	movf	((___fttol@exp1)^080h)&07fh,f
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l30001622
u4320:
	
l30001620:	
	line	50
	movlw	0
	movwf	(?___fttol+3)^080h
	movlw	0
	movwf	(?___fttol+2)^080h
	movlw	0
	movwf	(?___fttol+1)^080h
	movlw	0
	movwf	(?___fttol)^080h

	goto	l283
	
l30001622:	
	line	51
	movf	(___fttol@f1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___fttol@f1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0+2)
	movlw	017h
u4335:
	clrc
	rrf	(??___fttol+0+2),f
	rrf	(??___fttol+0+1),f
	rrf	(??___fttol+0+0),f
u4330:
	addlw	-1
	skipz
	goto	u4335
	movf	0+(??___fttol+0+0),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___fttol@sign1)^080h
	
l30001623:	
	line	52
	bsf	(___fttol@f1)^080h+(15/8),(15)&7
	
l30001624:	
	line	53
	movlw	0FFh
	andwf	(___fttol@f1)^080h,f
	movlw	0FFh
	andwf	(___fttol@f1+1)^080h,f
	movlw	0
	andwf	(___fttol@f1+2)^080h,f
	
l30001625:	
	line	54
	movf	(___fttol@f1)^080h,w
	movwf	(___fttol@lval)^080h
	movf	(___fttol@f1+1)^080h,w
	movwf	((___fttol@lval)^080h)+1
	
	movf	(___fttol@f1+2)^080h,w
	movwf	((___fttol@lval)^080h)+2
	
	clrf	3+(___fttol@lval)^080h
	
l30001626:	
	line	55
	movlw	low(08Eh)
	subwf	(___fttol@exp1)^080h,f
	
l30001627:	
	line	56
	btfss	(___fttol@exp1)^080h,7
	goto	u4341
	goto	u4340
u4341:
	goto	l30001632
u4340:
	
l30001628:	
	line	57
	movf	(___fttol@exp1)^080h,w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l30001631
u4350:
	goto	l30001620
	
l30001631:	
	line	60
	movlw	01h
u4365:
	clrc
	rrf	(___fttol@lval+3)^080h,f
	rrf	(___fttol@lval+2)^080h,f
	rrf	(___fttol@lval+1)^080h,f
	rrf	(___fttol@lval)^080h,f
	addlw	-1
	skipz
	goto	u4365

	line	61
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0)
	movf	(??___fttol+0+0),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___fttol@exp1)^080h,f
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l30001631
u4370:
	goto	l30001637
	
l30001632:	
	line	63
	movlw	(018h)
	subwf	(___fttol@exp1)^080h,w
	skipc
	goto	u4381
	goto	u4380
u4381:
	goto	l30001636
u4380:
	goto	l30001620
	
l30001635:	
	line	66
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___fttol+0+0)
u4395:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(___fttol@lval)^080h,f
	rlf	(___fttol@lval+1)^080h,f
	rlf	(___fttol@lval+2)^080h,f
	rlf	(___fttol@lval+3)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(??___fttol+0+0)
	goto	u4395
	line	67
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(___fttol@exp1)^080h,f
	
l30001636:	
	line	65
	movf	(___fttol@exp1)^080h,f
	skipz
	goto	u4401
	goto	u4400
u4401:
	goto	l30001635
u4400:
	
l30001637:	
	line	70
	movf	(___fttol@sign1)^080h,w
	skipz
	goto	u4410
	goto	l30001639
u4410:
	
l30001638:	
	line	71
	comf	(___fttol@lval)^080h,f
	comf	(___fttol@lval+1)^080h,f
	comf	(___fttol@lval+2)^080h,f
	comf	(___fttol@lval+3)^080h,f
	incf	(___fttol@lval)^080h,f
	skipnz
	incf	(___fttol@lval+1)^080h,f
	skipnz
	incf	(___fttol@lval+2)^080h,f
	skipnz
	incf	(___fttol@lval+3)^080h,f
	
l30001639:	
	line	72
	movf	(___fttol@lval+3)^080h,w
	movwf	(?___fttol+3)^080h
	movf	(___fttol@lval+2)^080h,w
	movwf	(?___fttol+2)^080h
	movf	(___fttol@lval+1)^080h,w
	movwf	(?___fttol+1)^080h
	movf	(___fttol@lval)^080h,w
	movwf	(?___fttol)^080h

	
l283:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
; =============== function ___fttol ends ============

psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:
	line	73
	signat	___fttol,4220
	global	_send_dec

; *************** function _send_dec *****************
; Defined at:
;		line 416 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  data            4   13[BANK0 ] unsigned long 
;  num_dig         1   17[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       5       0       0       0
;      Temp:     0
;      Total:    5
; This function calls:
;		___llmod
;		___lldiv
;		_send_char
; This function is called by:
;		_tamp
; This function uses a non-reentrant model
; 
psect	text212
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	416
	global	__size_of_send_dec
	__size_of_send_dec	equ	__end_of_send_dec-_send_dec
;MVC.c: 415: void send_dec(unsigned long data, unsigned char num_dig)
;MVC.c: 416: {
	
_send_dec:	
	opt stack 5
; Regs used in _send_dec: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	417
	
l30001436:	
;MVC.c: 417: if(num_dig >= 10)
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l30001439
u3450:
	
l30001437:	
	line	419
;MVC.c: 418: {
;MVC.c: 419: data = data % 10000000000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	054h
	movwf	3+(?___llmod)+04h
	movlw	0Bh
	movwf	2+(?___llmod)+04h
	movlw	0E4h
	movwf	1+(?___llmod)+04h
	movlw	0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001438:	
	line	420
;MVC.c: 420: send_char(data / 1000000000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	03Bh
	movwf	3+(?___lldiv)+04h
	movlw	09Ah
	movwf	2+(?___lldiv)+04h
	movlw	0CAh
	movwf	1+(?___lldiv)+04h
	movlw	0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001439:	
	line	422
;MVC.c: 421: }
;MVC.c: 422: if(num_dig >= 9)
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l30001442
u3460:
	
l30001440:	
	line	424
;MVC.c: 423: {
;MVC.c: 424: data = data % 1000000000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	03Bh
	movwf	3+(?___llmod)+04h
	movlw	09Ah
	movwf	2+(?___llmod)+04h
	movlw	0CAh
	movwf	1+(?___llmod)+04h
	movlw	0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001441:	
	line	425
;MVC.c: 425: send_char(data / 100000000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	05h
	movwf	3+(?___lldiv)+04h
	movlw	0F5h
	movwf	2+(?___lldiv)+04h
	movlw	0E1h
	movwf	1+(?___lldiv)+04h
	movlw	0
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001442:	
	line	427
;MVC.c: 426: }
;MVC.c: 427: if(num_dig >= 8)
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l30001445
u3470:
	
l30001443:	
	line	429
;MVC.c: 428: {
;MVC.c: 429: data = data % 100000000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	05h
	movwf	3+(?___llmod)+04h
	movlw	0F5h
	movwf	2+(?___llmod)+04h
	movlw	0E1h
	movwf	1+(?___llmod)+04h
	movlw	0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001444:	
	line	430
;MVC.c: 430: send_char(data / 10000000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	098h
	movwf	2+(?___lldiv)+04h
	movlw	096h
	movwf	1+(?___lldiv)+04h
	movlw	080h
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001445:	
	line	432
;MVC.c: 431: }
;MVC.c: 432: if(num_dig >= 7)
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l30001448
u3480:
	
l30001446:	
	line	434
;MVC.c: 433: {
;MVC.c: 434: data = data % 10000000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	098h
	movwf	2+(?___llmod)+04h
	movlw	096h
	movwf	1+(?___llmod)+04h
	movlw	080h
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001447:	
	line	435
;MVC.c: 435: send_char(data / 1000000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	0Fh
	movwf	2+(?___lldiv)+04h
	movlw	042h
	movwf	1+(?___lldiv)+04h
	movlw	040h
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001448:	
	line	437
;MVC.c: 436: }
;MVC.c: 437: if(num_dig >= 6)
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l30001451
u3490:
	
l30001449:	
	line	439
;MVC.c: 438: {
;MVC.c: 439: data = data % 1000000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	0Fh
	movwf	2+(?___llmod)+04h
	movlw	042h
	movwf	1+(?___llmod)+04h
	movlw	040h
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001450:	
	line	440
;MVC.c: 440: send_char(data / 100000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	01h
	movwf	2+(?___lldiv)+04h
	movlw	086h
	movwf	1+(?___lldiv)+04h
	movlw	0A0h
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001451:	
	line	442
;MVC.c: 441: }
;MVC.c: 442: if(num_dig >= 5)
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l30001454
u3500:
	
l30001452:	
	line	444
;MVC.c: 443: {
;MVC.c: 444: data = data % 100000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	01h
	movwf	2+(?___llmod)+04h
	movlw	086h
	movwf	1+(?___llmod)+04h
	movlw	0A0h
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001453:	
	line	445
;MVC.c: 445: send_char(data / 10000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	0
	movwf	2+(?___lldiv)+04h
	movlw	027h
	movwf	1+(?___lldiv)+04h
	movlw	010h
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001454:	
	line	447
;MVC.c: 446: }
;MVC.c: 447: if(num_dig >= 4)
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l30001457
u3510:
	
l30001455:	
	line	449
;MVC.c: 448: {
;MVC.c: 449: data = data % 10000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	0
	movwf	2+(?___llmod)+04h
	movlw	027h
	movwf	1+(?___llmod)+04h
	movlw	010h
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001456:	
	line	450
;MVC.c: 450: send_char(data / 1000 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	0
	movwf	2+(?___lldiv)+04h
	movlw	03h
	movwf	1+(?___lldiv)+04h
	movlw	0E8h
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001457:	
	line	452
;MVC.c: 451: }
;MVC.c: 452: if(num_dig >= 3)
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l30001460
u3520:
	
l30001458:	
	line	454
;MVC.c: 453: {
;MVC.c: 454: data = data % 1000;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	0
	movwf	2+(?___llmod)+04h
	movlw	03h
	movwf	1+(?___llmod)+04h
	movlw	0E8h
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001459:	
	line	455
;MVC.c: 455: send_char(data / 100 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	0
	movwf	2+(?___lldiv)+04h
	movlw	0
	movwf	1+(?___lldiv)+04h
	movlw	064h
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001460:	
	line	457
;MVC.c: 456: }
;MVC.c: 457: if(num_dig >= 2)
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(send_dec@num_dig),w
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l30001463
u3530:
	
l30001461:	
	line	459
;MVC.c: 458: {
;MVC.c: 459: data=data % 100;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	0
	movwf	2+(?___llmod)+04h
	movlw	0
	movwf	1+(?___llmod)+04h
	movlw	064h
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001462:	
	line	460
;MVC.c: 460: send_char(data / 10 + 0x30);
	movf	(send_dec@data+3),w
	movwf	(?___lldiv+3)
	movf	(send_dec@data+2),w
	movwf	(?___lldiv+2)
	movf	(send_dec@data+1),w
	movwf	(?___lldiv+1)
	movf	(send_dec@data),w
	movwf	(?___lldiv)

	movlw	0
	movwf	3+(?___lldiv)+04h
	movlw	0
	movwf	2+(?___lldiv)+04h
	movlw	0
	movwf	1+(?___lldiv)+04h
	movlw	0Ah
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lldiv)),w
	addlw	030h
	fcall	_send_char
	
l30001463:	
	line	462
;MVC.c: 461: }
;MVC.c: 462: if(num_dig >= 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_dec@num_dig),w
	skipz
	goto	u3540
	goto	l104
u3540:
	
l30001464:	
	line	464
;MVC.c: 463: {
;MVC.c: 464: data = data % 10;
	movf	(send_dec@data+3),w
	movwf	(?___llmod+3)
	movf	(send_dec@data+2),w
	movwf	(?___llmod+2)
	movf	(send_dec@data+1),w
	movwf	(?___llmod+1)
	movf	(send_dec@data),w
	movwf	(?___llmod)

	movlw	0
	movwf	3+(?___llmod)+04h
	movlw	0
	movwf	2+(?___llmod)+04h
	movlw	0
	movwf	1+(?___llmod)+04h
	movlw	0Ah
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___llmod)),w
	movwf	(send_dec@data+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@data+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@data+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@data)

	
l30001465:	
	line	465
;MVC.c: 465: send_char(data + 0x30);
	movf	(send_dec@data),w
	addlw	030h
	fcall	_send_char
	
l104:	
	return
	opt stack 0
GLOBAL	__end_of_send_dec
	__end_of_send_dec:
; =============== function _send_dec ends ============

psect	text213,local,class=CODE,delta=2
global __ptext213
__ptext213:
	line	467
	signat	_send_dec,8312
	global	_lcd_clr

; *************** function _lcd_clr *****************
; Defined at:
;		line 328 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_send_config
;		_delay
; This function is called by:
;		_reset
; This function uses a non-reentrant model
; 
psect	text213
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	328
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
;MVC.c: 327: void lcd_clr(void)
;MVC.c: 328: {
	
_lcd_clr:	
	opt stack 5
; Regs used in _lcd_clr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	329
	
l30001471:	
;MVC.c: 329: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	
l30001472:	
	line	330
;MVC.c: 330: delay(600);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	
l66:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
; =============== function _lcd_clr ends ============

psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:
	line	332
	signat	_lcd_clr,88
	global	_utoa

; *************** function _utoa *****************
; Defined at:
;		line 18 in file "../../common/itoa.c"
; Parameters:    Size  Location     Type
;  buf             1    wreg     PTR unsigned char 
;		 -> kata(16), kata1(16), 
;  val             2   11[BANK0 ] unsigned int 
;  base            2   13[BANK0 ] int 
; Auto vars:     Size  Location     Type
;  buf             1   10[BANK0 ] PTR unsigned char 
;		 -> kata(16), kata1(16), 
;  v               2    7[BANK0 ] unsigned int 
;  c               1    9[BANK0 ] unsigned char 
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
psect	text214
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\itoa.c"
	line	18
	global	__size_of_utoa
	__size_of_utoa	equ	__end_of_utoa-_utoa
	
_utoa:	
	opt stack 5
; Regs used in _utoa: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;utoa@buf stored from wreg
	line	22
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(utoa@buf)
	
l30001527:	
	movf	(utoa@val+1),w
	clrf	(utoa@v+1)
	addwf	(utoa@v+1)
	movf	(utoa@val),w
	clrf	(utoa@v)
	addwf	(utoa@v)

	
l30001528:	
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

	
l30001529:	
	line	25
	movlw	(01h)
	movwf	(??_utoa+0+0)
	movf	(??_utoa+0+0),w
	addwf	(utoa@buf),f
	
l30001530:	
	line	26
	movf	((utoa@v+1)),w
	iorwf	((utoa@v)),w
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l30001528
u3820:
	
l30001531:	
	line	27
	clrc
	movf	(utoa@buf),w
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	indf
	
l30001532:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	
l30001533:	
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
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(utoa@c)
	
l30001534:	
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

	
l30001535:	
	line	31
	movlw	(0Ah)
	subwf	(utoa@c),w
	skipc
	goto	u3831
	goto	u3830
u3831:
	goto	l151
u3830:
	
l30001536:	
	line	32
	movlw	(07h)
	movwf	(??_utoa+0+0)
	movf	(??_utoa+0+0),w
	addwf	(utoa@c),f
	
l151:	
	line	33
	movlw	(030h)
	movwf	(??_utoa+0+0)
	movf	(??_utoa+0+0),w
	addwf	(utoa@c),f
	
l30001537:	
	line	34
	movf	(utoa@c),w
	movwf	(??_utoa+0+0)
	movf	(utoa@buf),w
	movwf	fsr0
	movf	(??_utoa+0+0),w
	movwf	indf
	
l30001538:	
	movlw	low(01h)
	subwf	(utoa@buf),f
	
l30001539:	
	line	35
	movf	((utoa@val+1)),w
	iorwf	((utoa@val)),w
	skipz
	goto	u3841
	goto	u3840
u3841:
	goto	l30001533
u3840:
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of_utoa
	__end_of_utoa:
; =============== function _utoa ends ============

psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:
	line	37
	signat	_utoa,12409
	global	_UART_Write_Text

; *************** function _UART_Write_Text *****************
; Defined at:
;		line 523 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  text            2    2[BANK0 ] PTR unsigned char 
;		 -> kata(16), kata1(16), STR_2(12), STR_3(12), 
;		 -> STR_4(9), STR_5(4), STR_6(10), 
; Auto vars:     Size  Location     Type
;  n               2    0[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     2
;      Total:    6
; This function calls:
;		_UART_Write
; This function is called by:
;		_kirim_data
;		_reset
; This function uses a non-reentrant model
; 
psect	text215
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	523
	global	__size_of_UART_Write_Text
	__size_of_UART_Write_Text	equ	__end_of_UART_Write_Text-_UART_Write_Text
;MVC.c: 522: void UART_Write_Text(char *text)
;MVC.c: 523: {
	
_UART_Write_Text:	
	opt stack 5
; Regs used in _UART_Write_Text: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	525
	
l30001608:	
;MVC.c: 524: int n;
;MVC.c: 525: for(n=0;text[n]!='\0';n++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(UART_Write_Text@n)
	movlw	high(0)
	movwf	((UART_Write_Text@n))+1
	goto	l30001611
	
l30001609:	
	line	526
;MVC.c: 526: UART_Write(text[n]);
	movf	(UART_Write_Text@text+1),w
	movwf	(??_UART_Write_Text+0+0+1)
	movf	(UART_Write_Text@text),w
	movwf	(??_UART_Write_Text+0+0)
	movf	(UART_Write_Text@n),w
	addwf	(??_UART_Write_Text+0+0),w
	movwf	fsr0
	movf	(??_UART_Write_Text+0+1),w
	skipnc
	incf	(??_UART_Write_Text+0+1),w
	FNCALL _UART_Write_Text,stringtab
	fcall	stringtab
	fcall	_UART_Write
	
l30001610:	
	line	525
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(UART_Write_Text@n),f
	skipnc
	incf	(UART_Write_Text@n+1),f
	movlw	high(01h)
	addwf	(UART_Write_Text@n+1),f
	
l30001611:	
	movf	(UART_Write_Text@text+1),w
	movwf	(??_UART_Write_Text+0+0+1)
	movf	(UART_Write_Text@text),w
	movwf	(??_UART_Write_Text+0+0)
	movf	(UART_Write_Text@n),w
	addwf	(??_UART_Write_Text+0+0),w
	movwf	fsr0
	movf	(??_UART_Write_Text+0+1),w
	skipnc
	incf	(??_UART_Write_Text+0+1),w
	FNCALL _UART_Write_Text,stringtab
	fcall	stringtab
	iorlw	0
	skipz
	goto	u4301
	goto	u4300
u4301:
	goto	l30001609
u4300:
	
l133:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Write_Text
	__end_of_UART_Write_Text:
; =============== function _UART_Write_Text ends ============

psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:
	line	527
	signat	_UART_Write_Text,4216
	global	_send_string

; *************** function _send_string *****************
; Defined at:
;		line 406 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  s               1    wreg     PTR const unsigned char 
;		 -> STR_1(16), STR_7(5), STR_8(5), 
; Auto vars:     Size  Location     Type
;  s               1   10[BANK0 ] PTR const unsigned char 
;		 -> STR_1(16), STR_7(5), STR_8(5), 
;  i               1    0        unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       3       0       0       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_send_char
;		_delay
; This function is called by:
;		_main
;		_tamp
; This function uses a non-reentrant model
; 
psect	text216
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	406
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
;MVC.c: 405: void send_string(const char *s)
;MVC.c: 406: {
	
_send_string:	
	opt stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_string@s)
	
l30001429:	
	goto	l30001432
	
l30001430:	
	line	408
	movf	(send_string@s),w
	FNCALL _send_string,stringtab
	fcall	stringdir
	fcall	_send_char
	
l30001431:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_send_string+0+0)
	movf	(??_send_string+0+0),w
	addwf	(send_string@s),f
	
l30001432:	
	movf	(send_string@s),w
	skipz
	goto	u3430
	goto	l30001434
u3430:
	
l30001433:	
	movf	(send_string@s),w
	FNCALL _send_string,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l30001430
u3440:
	
l30001434:	
	line	409
;MVC.c: 409: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
; =============== function _send_string ends ============

psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:
	line	411
	signat	_send_string,4216
	global	_lcd_goto

; *************** function _lcd_goto *****************
; Defined at:
;		line 344 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    7[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_send_config
;		_delay
; This function is called by:
;		_main
;		_tamp
; This function uses a non-reentrant model
; 
psect	text217
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	344
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
;MVC.c: 343: void lcd_goto(unsigned char data)
;MVC.c: 344: {
	
_lcd_goto:	
	opt stack 5
; Regs used in _lcd_goto: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_goto@data)
	
l30001466:	
	line	345
;MVC.c: 345: if(data < 16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l30001468
u3550:
	
l30001467:	
	line	347
;MVC.c: 346: {
;MVC.c: 347: send_config(0x80 + data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	goto	l30001470
	
l30001468:	
	line	351
;MVC.c: 349: else
;MVC.c: 350: {
;MVC.c: 351: data = data - 20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(lcd_goto@data)
	
l30001469:	
	line	352
;MVC.c: 352: send_config(0xc0 + data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	
l30001470:	
	line	354
;MVC.c: 353: }
;MVC.c: 354: delay(200);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0C8h
	movwf	(?_delay)

	fcall	_delay
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
; =============== function _lcd_goto ends ============

psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:
	line	356
	signat	_lcd_goto,4216
	global	___aldiv

; *************** function ___aldiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\aldiv.c"
; Parameters:    Size  Location     Type
;  dividend        4    6[BANK0 ] long 
;  divisor         4   10[BANK0 ] long 
; Auto vars:     Size  Location     Type
;  quotient        4    2[BANK0 ] long 
;  sign            1    1[BANK0 ] unsigned char 
;  counter         1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4    6[BANK0 ] long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1      14       0       0       0
;      Temp:     1
;      Total:   15
; This function calls:
;		Nothing
; This function is called by:
;		_UART_Init
; This function uses a non-reentrant model
; 
psect	text218
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt stack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l30001291:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@sign)
	
l30001292:	
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u3041
	goto	u3040
u3041:
	goto	l30001295
u3040:
	
l30001293:	
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
	
l30001294:	
	line	12
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	
l30001295:	
	line	14
	btfss	(___aldiv@dividend+3),7
	goto	u3051
	goto	u3050
u3051:
	goto	l30001298
u3050:
	
l30001296:	
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
	
l30001297:	
	line	16
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	xorwf	(___aldiv@sign),f
	
l30001298:	
	line	18
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	
l30001299:	
	line	19
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u3061
	goto	u3060
u3061:
	goto	l30001309
u3060:
	
l30001300:	
	line	20
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	goto	l30001302
	
l30001301:	
	line	22
	movlw	01h
	movwf	(??___aldiv+0+0)
u3075:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0+0)
	goto	u3075
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0+0)
	movf	(??___aldiv+0+0),w
	addwf	(___aldiv@counter),f
	
l30001302:	
	line	21
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l30001301
u3080:
	
l30001303:	
	line	26
	movlw	01h
	movwf	(??___aldiv+0+0)
u3095:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0+0)
	goto	u3095
	
l30001304:	
	line	27
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3105
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3105
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3105
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3105:
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l30001307
u3100:
	
l30001305:	
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
	
l30001306:	
	line	29
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	
l30001307:	
	line	31
	movlw	01h
u3115:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3115

	
l30001308:	
	line	32
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l30001303
u3120:
	
l30001309:	
	line	34
	movf	(___aldiv@sign),w
	skipz
	goto	u3130
	goto	l30001311
u3130:
	
l30001310:	
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
	
l30001311:	
	line	36
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	
l369:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
; =============== function ___aldiv ends ============

psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:
	line	37
	signat	___aldiv,8316
	global	___lltoft

; *************** function ___lltoft *****************
; Defined at:
;		line 36 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lltoft.c"
; Parameters:    Size  Location     Type
;  c               4    6[BANK0 ] unsigned long 
; Auto vars:     Size  Location     Type
;  exp             1    5[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3    6[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       5       0       0       0
;      Temp:     1
;      Total:    6
; This function calls:
;		___ftpack
; This function is called by:
;		_Read_ADC
; This function uses a non-reentrant model
; 
psect	text219
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l30001600:	
	movlw	(08Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lltoft@exp)
	goto	l30001602
	
l30001601:	
	line	42
	movlw	01h
u4255:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u4255

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0+0)
	movf	(??___lltoft+0+0),w
	addwf	(___lltoft@exp),f
	
l30001602:	
	line	41
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u4261
	goto	u4260
u4261:
	goto	l30001601
u4260:
	
l30001603:	
	line	45
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0+0)
	movf	(??___lltoft+0+0),w
	movwf	0+(?___ftpack)+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	
l400:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
; =============== function ___lltoft ends ============

psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:
	line	46
	signat	___lltoft,4219
	global	___ftmul

; *************** function ___ftmul *****************
; Defined at:
;		line 52 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\ftmul.c"
; Parameters:    Size  Location     Type
;  f1              3   20[BANK0 ] float 
;  f2              3   23[BANK0 ] float 
; Auto vars:     Size  Location     Type
;  f3_as_produc    3   15[BANK0 ] unsigned um
;  sign            1   19[BANK0 ] unsigned char 
;  cntr            1   18[BANK0 ] unsigned char 
;  exp             1   14[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  3   20[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0      16       0       0       0
;      Temp:     4
;      Total:   16
; This function calls:
;		___ftpack
; This function is called by:
;		_Read_ADC
; This function uses a non-reentrant model
; 
psect	text220
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l30001341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp))&07fh,f
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l30001344
u3150:
	
l30001342:	
	line	57
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l230
	
l30001344:	
	line	58
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	clrc
	rlf	(??___ftmul+0+1),w
	rlf	(??___ftmul+0+2),w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign))&07fh,f
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l30001347
u3160:
	
l30001345:	
	line	59
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l230
	
l30001347:	
	line	60
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f1+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f1+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u3175:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u3170:
	addlw	-1
	skipz
	goto	u3175
	movf	0+(??___ftmul+0+0),w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	(??___ftmul+0+0)
	movf	(___ftmul@f2+1),w
	movwf	(??___ftmul+0+0+1)
	movf	(___ftmul@f2+2),w
	movwf	(??___ftmul+0+0+2)
	movlw	010h
u3185:
	clrc
	rrf	(??___ftmul+0+2),f
	rrf	(??___ftmul+0+1),f
	rrf	(??___ftmul+0+0),f
u3180:
	addlw	-1
	skipz
	goto	u3185
	movf	0+(??___ftmul+0+0),w
	movwf	(??___ftmul+3+0)
	movf	(??___ftmul+3+0),w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	andwf	(___ftmul@sign),f
	
l30001348:	
	line	64
	bsf	(___ftmul@f1)+(15/8),(15)&7
	
l30001349:	
	line	66
	bsf	(___ftmul@f2)+(15/8),(15)&7
	
l30001350:	
	line	67
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	
l30001351:	
	line	68
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	
l30001352:	
	line	69
	movlw	(07h)
	movwf	(___ftmul@cntr)
	
l30001353:	
	line	71
	btfss	(___ftmul@f1),(0)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l30001355
u3190:
	
l30001354:	
	line	72
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3201
	addwf	(___ftmul@f3_as_product+1),f
u3201:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3202
	addwf	(___ftmul@f3_as_product+2),f
u3202:

	
l30001355:	
	line	73
	movlw	01h
u3215:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3215

	
l30001356:	
	line	74
	movlw	01h
u3225:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3225
	
l30001357:	
	line	75
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l30001353
u3230:
	
l30001358:	
	line	76
	movlw	(09h)
	movwf	(___ftmul@cntr)
	
l30001359:	
	line	78
	btfss	(___ftmul@f1),(0)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l30001361
u3240:
	
l30001360:	
	line	79
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3251
	addwf	(___ftmul@f3_as_product+1),f
u3251:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3252
	addwf	(___ftmul@f3_as_product+2),f
u3252:

	
l30001361:	
	line	80
	movlw	01h
u3265:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3265

	
l30001362:	
	line	81
	movlw	01h
u3275:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3275

	
l30001363:	
	line	82
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l30001359
u3280:
	
l30001364:	
	line	83
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0+0)
	movf	(??___ftmul+0+0),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1+0)
	movf	(??___ftmul+1+0),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	
l230:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
; =============== function ___ftmul ends ============

psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:
	line	84
	signat	___ftmul,8315
	global	___llmod

; *************** function ___llmod *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\llmod.c"
; Parameters:    Size  Location     Type
;  dividend        4    0[BANK0 ] unsigned long 
;  divisor         4    4[BANK0 ] unsigned long 
; Auto vars:     Size  Location     Type
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  4    0[BANK0 ] unsigned long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       8       0       0       0
;      Temp:     1
;      Total:   10
; This function calls:
;		Nothing
; This function is called by:
;		_send_dec
; This function uses a non-reentrant model
; 
psect	text221
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt stack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l30001221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2731
	goto	u2730
u2731:
	goto	l314
u2730:
	
l30001222:	
	line	9
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	goto	l30001224
	
l30001223:	
	line	11
	movlw	01h
	movwf	(??___llmod+0+0)
u2745:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0+0)
	goto	u2745
	line	12
	movlw	(01h)
	movwf	(??___llmod+0+0)
	movf	(??___llmod+0+0),w
	addwf	(___llmod@counter),f
	
l30001224:	
	line	10
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l30001223
u2750:
	
l30001225:	
	line	15
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2765
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2765
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2765
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2765:
	skipc
	goto	u2761
	goto	u2760
u2761:
	goto	l30001227
u2760:
	
l30001226:	
	line	16
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	
l30001227:	
	line	17
	movlw	01h
u2775:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u2775

	
l30001228:	
	line	18
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l30001225
u2780:
	
l314:	
	line	20
	
l313:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
; =============== function ___llmod ends ============

psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:
	line	21
	signat	___llmod,8316
	global	_send_config

; *************** function _send_config *****************
; Defined at:
;		line 285 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    4[BANK0 ] unsigned char 
;  test            1    6[BANK0 ] unsigned char 
;  i               1    5[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       3       0       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_delay
;		_e_pulse
; This function is called by:
;		_main
;		_lcd_clr
;		_lcd_goto
; This function uses a non-reentrant model
; 
psect	text222
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	285
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
;MVC.c: 284: void send_config(unsigned char data)
;MVC.c: 285: {
	
_send_config:	
	opt stack 4
; Regs used in _send_config: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	line	289
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_config@data)
	
l30001479:	
;MVC.c: 286: unsigned char test;
;MVC.c: 287: unsigned char i;
;MVC.c: 289: RB7 = 0;
	bcf	(55/8),(55)&7
	line	290
;MVC.c: 290: for(i = 0; i < 8; i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_config@i)
	
l30001482:	
	line	292
;MVC.c: 291: {
;MVC.c: 292: test = (data >> i) & 0b00000001;
	movf	(send_config@data),w
	movwf	(??_send_config+0+0)
	incf	(send_config@i),w
	goto	u3584
u3585:
	clrc
	rrf	(??_send_config+0+0),f
u3584:
	addlw	-1
	skipz
	goto	u3585
	movf	0+(??_send_config+0+0),w
	andlw	01h
	movwf	(send_config@test)
	goto	l30001499
	
l30001483:	
	line	296
;MVC.c: 296: if(test == 1) RD0 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l43
u3590:
	
l30001484:	
	bsf	(64/8),(64)&7
	goto	l30001485
	
l43:	
	line	297
;MVC.c: 297: else RD0 = 0;
	bcf	(64/8),(64)&7
	
l30001485:	
	line	299
;MVC.c: 299: if(test == 1) RD1 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l46
u3600:
	
l30001486:	
	bsf	(65/8),(65)&7
	goto	l30001487
	
l46:	
	line	300
;MVC.c: 300: else RD1 = 0;
	bcf	(65/8),(65)&7
	
l30001487:	
	line	302
;MVC.c: 302: if(test == 1) RD2 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l49
u3610:
	
l30001488:	
	bsf	(66/8),(66)&7
	goto	l30001489
	
l49:	
	line	303
;MVC.c: 303: else RD2 = 0;
	bcf	(66/8),(66)&7
	
l30001489:	
	line	305
;MVC.c: 305: if(test == 1) RD3 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l52
u3620:
	
l30001490:	
	bsf	(67/8),(67)&7
	goto	l30001491
	
l52:	
	line	306
;MVC.c: 306: else RD3 = 0;
	bcf	(67/8),(67)&7
	
l30001491:	
	line	308
;MVC.c: 308: if(test == 1) RD4 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l55
u3630:
	
l30001492:	
	bsf	(68/8),(68)&7
	goto	l30001493
	
l55:	
	line	309
;MVC.c: 309: else RD4 = 0;
	bcf	(68/8),(68)&7
	
l30001493:	
	line	311
;MVC.c: 311: if(test == 1) RD5 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l58
u3640:
	
l30001494:	
	bsf	(69/8),(69)&7
	goto	l30001495
	
l58:	
	line	312
;MVC.c: 312: else RD5 = 0;
	bcf	(69/8),(69)&7
	
l30001495:	
	line	314
;MVC.c: 314: if(test == 1) RD6 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l61
u3650:
	
l30001496:	
	bsf	(70/8),(70)&7
	goto	l30001497
	
l61:	
	line	315
;MVC.c: 315: else RD6 = 0;
	bcf	(70/8),(70)&7
	
l30001497:	
	line	317
;MVC.c: 317: if(test == 1) RD7 = 1;
	movf	(send_config@test),w
	xorlw	01h
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l64
u3660:
	
l30001498:	
	bsf	(71/8),(71)&7
	goto	l30001500
	
l64:	
	line	318
;MVC.c: 318: else RD7 = 0;
	bcf	(71/8),(71)&7
	goto	l30001500
	
l30001499:	
	line	293
	movf	(send_config@i),w
		xorlw	0^0
	skipnz
	goto	l30001483
	xorlw	1^0
	skipnz
	goto	l30001485
	xorlw	2^1
	skipnz
	goto	l30001487
	xorlw	3^2
	skipnz
	goto	l30001489
	xorlw	4^3
	skipnz
	goto	l30001491
	xorlw	5^4
	skipnz
	goto	l30001493
	xorlw	6^5
	skipnz
	goto	l30001495
	xorlw	7^6
	skipnz
	goto	l30001497
	goto	l30001500

	
l30001500:	
	line	290
	movlw	(01h)
	movwf	(??_send_config+0+0)
	movf	(??_send_config+0+0),w
	addwf	(send_config@i),f
	
l30001501:	
	movlw	(08h)
	subwf	(send_config@i),w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l30001482
u3670:
	
l30001502:	
	line	321
;MVC.c: 320: }
;MVC.c: 321: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	322
;MVC.c: 322: e_pulse();
	fcall	_e_pulse
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
; =============== function _send_config ends ============

psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:
	line	323
	signat	_send_config,4216
	global	___lldiv

; *************** function ___lldiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lldiv.c"
; Parameters:    Size  Location     Type
;  dividend        4    5[BANK0 ] unsigned long 
;  divisor         4    9[BANK0 ] unsigned long 
; Auto vars:     Size  Location     Type
;  quotient        4    0[BANK0 ] unsigned long 
;  counter         1    4[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  4    5[BANK0 ] unsigned long 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1      13       0       0       0
;      Temp:     1
;      Total:   14
; This function calls:
;		Nothing
; This function is called by:
;		_send_dec
; This function uses a non-reentrant model
; 
psect	text223
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt stack 4
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l30001503:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3681
	goto	u3680
u3681:
	goto	l30001513
u3680:
	
l30001504:	
	line	11
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	goto	l30001506
	
l30001505:	
	line	13
	movlw	01h
	movwf	(??___lldiv+0+0)
u3695:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0+0)
	goto	u3695
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0+0)
	movf	(??___lldiv+0+0),w
	addwf	(___lldiv@counter),f
	
l30001506:	
	line	12
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l30001505
u3700:
	
l30001507:	
	line	17
	movlw	01h
	movwf	(??___lldiv+0+0)
u3715:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0+0)
	goto	u3715
	
l30001508:	
	line	18
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3725
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3725
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3725
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3725:
	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l30001511
u3720:
	
l30001509:	
	line	19
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	
l30001510:	
	line	20
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	
l30001511:	
	line	22
	movlw	01h
u3735:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3735

	
l30001512:	
	line	23
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l30001507
u3740:
	
l30001513:	
	line	25
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	
l348:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
; =============== function ___lldiv ends ============

psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:
	line	26
	signat	___lldiv,8316
	global	_UART_Write

; *************** function _UART_Write *****************
; Defined at:
;		line 517 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
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
;		_kirim_data
;		_UART_Write_Text
; This function uses a non-reentrant model
; 
psect	text224
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	517
	global	__size_of_UART_Write
	__size_of_UART_Write	equ	__end_of_UART_Write-_UART_Write
;MVC.c: 516: void UART_Write(char data)
;MVC.c: 517: {
	
_UART_Write:	
	opt stack 4
; Regs used in _UART_Write: [wreg]
;UART_Write@data stored from wreg
	movwf	(UART_Write@data)
	
l30001617:	
	
l130:	
	line	518
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l130
u4310:
	
l30001618:	
	line	519
;MVC.c: 519: TXREG = data;
	movf	(UART_Write@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l129:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Write
	__end_of_UART_Write:
; =============== function _UART_Write ends ============

psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:
	line	520
	signat	_UART_Write,4216
	global	___lwmod

; *************** function ___lwmod *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwmod.c"
; Parameters:    Size  Location     Type
;  dividend        2    0[BANK0 ] unsigned int 
;  divisor         2    2[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  counter         1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  2    0[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       4       0       0       0
;      Temp:     1
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_utoa
; This function uses a non-reentrant model
; 
psect	text225
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l30001241:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l172
u2860:
	
l30001242:	
	line	9
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	goto	l30001245
	
l30001243:	
	line	11
	movlw	01h
u2875:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2875
	
l30001244:	
	line	12
	movlw	(01h)
	movwf	(??___lwmod+0+0)
	movf	(??___lwmod+0+0),w
	addwf	(___lwmod@counter),f
	
l30001245:	
	line	10
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l30001243
u2880:
	
l30001246:	
	line	15
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2895
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2895:
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l30001248
u2890:
	
l30001247:	
	line	16
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	
l30001248:	
	line	17
	movlw	01h
u2905:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2905
	
l30001249:	
	line	18
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l30001246
u2910:
	
l172:	
	line	20
	
l171:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
; =============== function ___lwmod ends ============

psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:
	line	21
	signat	___lwmod,8314
	global	___lwdiv

; *************** function ___lwdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    3[BANK0 ] unsigned int 
;  divisor         2    5[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  quotient        2    1[BANK0 ] unsigned int 
;  counter         1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    3[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       7       0       0       0
;      Temp:     1
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		_utoa
; This function uses a non-reentrant model
; 
psect	text226
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l30001515:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l30001525
u3750:
	
l30001516:	
	line	11
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	goto	l30001519
	
l30001517:	
	line	13
	movlw	01h
u3765:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3765
	
l30001518:	
	line	14
	movlw	(01h)
	movwf	(??___lwdiv+0+0)
	movf	(??___lwdiv+0+0),w
	addwf	(___lwdiv@counter),f
	
l30001519:	
	line	12
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l30001517
u3770:
	
l30001520:	
	line	17
	movlw	01h
u3785:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3785
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3795
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3795:
	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l30001523
u3790:
	
l30001521:	
	line	19
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	
l30001522:	
	line	20
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	
l30001523:	
	line	22
	movlw	01h
u3805:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3805
	
l30001524:	
	line	23
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3811
	goto	u3810
u3811:
	goto	l30001520
u3810:
	
l30001525:	
	line	25
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l162:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
; =============== function ___lwdiv ends ============

psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:
	line	26
	signat	___lwdiv,8314
	global	_send_char

; *************** function _send_char *****************
; Defined at:
;		line 361 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  data            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data            1    5[BANK0 ] unsigned char 
;  test            1    7[BANK0 ] unsigned char 
;  i               1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       0       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_delay
;		_e_pulse
; This function is called by:
;		_send_string
;		_send_dec
; This function uses a non-reentrant model
; 
psect	text227
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	361
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
;MVC.c: 360: void send_char(unsigned char data)
;MVC.c: 361: {
	
_send_char:	
	opt stack 4
; Regs used in _send_char: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	line	364
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_char@data)
	
l30001405:	
;MVC.c: 362: unsigned char test;
;MVC.c: 363: unsigned char i;
;MVC.c: 364: RB7 = 1;
	bsf	(55/8),(55)&7
	line	365
;MVC.c: 365: for(i = 0; i < 8; i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_char@i)
	
l30001408:	
	line	367
;MVC.c: 366: {
;MVC.c: 367: test = (data >> i) & 0b00000001;
	movf	(send_char@data),w
	movwf	(??_send_char+0+0)
	incf	(send_char@i),w
	goto	u3334
u3335:
	clrc
	rrf	(??_send_char+0+0),f
u3334:
	addlw	-1
	skipz
	goto	u3335
	movf	0+(??_send_char+0+0),w
	andlw	01h
	movwf	(send_char@test)
	goto	l30001425
	
l30001409:	
	line	371
;MVC.c: 371: if(test == 1) RD0 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l77
u3340:
	
l30001410:	
	bsf	(64/8),(64)&7
	goto	l30001411
	
l77:	
	line	372
;MVC.c: 372: else RD0 = 0;
	bcf	(64/8),(64)&7
	
l30001411:	
	line	374
;MVC.c: 374: if(test == 1) RD1 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l80
u3350:
	
l30001412:	
	bsf	(65/8),(65)&7
	goto	l30001413
	
l80:	
	line	375
;MVC.c: 375: else RD1 = 0;
	bcf	(65/8),(65)&7
	
l30001413:	
	line	377
;MVC.c: 377: if(test == 1) RD2 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l83
u3360:
	
l30001414:	
	bsf	(66/8),(66)&7
	goto	l30001415
	
l83:	
	line	378
;MVC.c: 378: else RD2 = 0;
	bcf	(66/8),(66)&7
	
l30001415:	
	line	380
;MVC.c: 380: if(test == 1) RD3 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l86
u3370:
	
l30001416:	
	bsf	(67/8),(67)&7
	goto	l30001417
	
l86:	
	line	381
;MVC.c: 381: else RD3 = 0;
	bcf	(67/8),(67)&7
	
l30001417:	
	line	383
;MVC.c: 383: if(test == 1) RD4 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l89
u3380:
	
l30001418:	
	bsf	(68/8),(68)&7
	goto	l30001419
	
l89:	
	line	384
;MVC.c: 384: else RD4 = 0;
	bcf	(68/8),(68)&7
	
l30001419:	
	line	386
;MVC.c: 386: if(test == 1) RD5 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l92
u3390:
	
l30001420:	
	bsf	(69/8),(69)&7
	goto	l30001421
	
l92:	
	line	387
;MVC.c: 387: else RD5 = 0;
	bcf	(69/8),(69)&7
	
l30001421:	
	line	389
;MVC.c: 389: if(test == 1) RD6 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l95
u3400:
	
l30001422:	
	bsf	(70/8),(70)&7
	goto	l30001423
	
l95:	
	line	390
;MVC.c: 390: else RD6 = 0;
	bcf	(70/8),(70)&7
	
l30001423:	
	line	392
;MVC.c: 392: if(test == 1) RD7 = 1;
	movf	(send_char@test),w
	xorlw	01h
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l98
u3410:
	
l30001424:	
	bsf	(71/8),(71)&7
	goto	l30001426
	
l98:	
	line	393
;MVC.c: 393: else RD7 = 0;
	bcf	(71/8),(71)&7
	goto	l30001426
	
l30001425:	
	line	368
	movf	(send_char@i),w
		xorlw	0^0
	skipnz
	goto	l30001409
	xorlw	1^0
	skipnz
	goto	l30001411
	xorlw	2^1
	skipnz
	goto	l30001413
	xorlw	3^2
	skipnz
	goto	l30001415
	xorlw	4^3
	skipnz
	goto	l30001417
	xorlw	5^4
	skipnz
	goto	l30001419
	xorlw	6^5
	skipnz
	goto	l30001421
	xorlw	7^6
	skipnz
	goto	l30001423
	goto	l30001426

	
l30001426:	
	line	365
	movlw	(01h)
	movwf	(??_send_char+0+0)
	movf	(??_send_char+0+0),w
	addwf	(send_char@i),f
	
l30001427:	
	movlw	(08h)
	subwf	(send_char@i),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l30001408
u3420:
	
l30001428:	
	line	396
;MVC.c: 395: }
;MVC.c: 396: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	398
;MVC.c: 398: e_pulse();
	fcall	_e_pulse
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
; =============== function _send_char ends ============

psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:
	line	399
	signat	_send_char,4216
	global	___ftpack

; *************** function ___ftpack *****************
; Defined at:
;		line 63 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\float.c"
; Parameters:    Size  Location     Type
;  arg             3    0[BANK0 ] unsigned um
;  exp             1    3[BANK0 ] unsigned char 
;  sign            1    4[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  3    0[BANK0 ] float 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       5       0       0       0
;      Temp:     3
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		___ftadd
;		___ftmul
;		___lltoft
; This function uses a non-reentrant model
; 
psect	text228
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l30001585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u4130
	goto	l30001587
u4130:
	
l30001586:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u4141
	goto	u4140
u4141:
	goto	l30001590
u4140:
	
l30001587:	
	line	65
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l486
	
l30001589:	
	line	67
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u4155:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4155

	
l30001590:	
	line	66
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4161
	goto	u4160
u4161:
	goto	l30001589
u4160:
	goto	l491
	
l30001591:	
	line	71
	movlw	(01h)
	movwf	(??___ftpack+0+0)
	movf	(??___ftpack+0+0),w
	addwf	(___ftpack@exp),f
	
l30001592:	
	line	72
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4171
	addwf	(___ftpack@arg+1),f
u4171:
	movlw	0
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u4172
	addwf	(___ftpack@arg+2),f
u4172:

	
l30001593:	
	line	73
	movlw	01h
u4185:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u4185

	
l491:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l30001591
u4190:
	goto	l30001595
	
l30001594:	
	line	76
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u4205:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u4205
	
l30001595:	
	line	75
	btfss	(___ftpack@arg+1),(15)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l30001594
u4210:
	
l496:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l497
u4220:
	
l30001596:	
	line	80
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l497:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	
l30001597:	
	line	82
	movf	(___ftpack@exp),w
	movwf	(??___ftpack+0+0)
	clrf	(??___ftpack+0+0+1)
	clrf	(??___ftpack+0+0+2)
	movlw	010h
u4235:
	clrc
	rlf	(??___ftpack+0+0),f
	rlf	(??___ftpack+0+1),f
	rlf	(??___ftpack+0+2),f
u4230:
	addlw	-1
	skipz
	goto	u4235
	movf	0+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0+0),w
	iorwf	(___ftpack@arg+2),f
	
l30001598:	
	line	83
	movf	(___ftpack@sign),w
	skipz
	goto	u4240
	goto	l498
u4240:
	
l30001599:	
	line	84
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l498:	
	line	85
	
l486:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
; =============== function ___ftpack ends ============

psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:
	line	86
	signat	___ftpack,12411
	global	_e_pulse

; *************** function _e_pulse *****************
; Defined at:
;		line 276 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_delay
; This function is called by:
;		_send_config
;		_send_char
; This function uses a non-reentrant model
; 
psect	text229
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	276
	global	__size_of_e_pulse
	__size_of_e_pulse	equ	__end_of_e_pulse-_e_pulse
;MVC.c: 275: void e_pulse(void)
;MVC.c: 276: {
	
_e_pulse:	
	opt stack 3
; Regs used in _e_pulse: [wreg+status,2+status,0+pclath+cstack]
	line	277
	
l30001476:	
;MVC.c: 277: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	
l30001477:	
	line	278
;MVC.c: 278: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	
l30001478:	
	line	279
;MVC.c: 279: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	280
;MVC.c: 280: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	
l35:	
	return
	opt stack 0
GLOBAL	__end_of_e_pulse
	__end_of_e_pulse:
; =============== function _e_pulse ends ============

psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:
	line	281
	signat	_e_pulse,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 269 in file "C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
; Parameters:    Size  Location     Type
;  data            4    0[BANK0 ] unsigned long 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         4       4       0       0       0
;      Temp:     4
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		_Read_ADC
;		_e_pulse
;		_send_config
;		_lcd_clr
;		_lcd_goto
;		_send_char
;		_send_string
; This function uses a non-reentrant model
; 
psect	text230
	file	"C:\Users\LENOVO\Desktop\ReadAbsEncoder\MVC.c"
	line	269
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;MVC.c: 268: void delay(unsigned long data)
;MVC.c: 269: {
	
_delay:	
	opt stack 2
; Regs used in _delay: [wreg]
	line	270
	
l30001605:	
;MVC.c: 270: for( ; data > 0; data -= 1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u4271
	goto	u4270
u4271:
	goto	l30001607
u4270:
	goto	l31
	
l30001607:	
	movlw	low(01h)
	movwf	(??_delay+0+0)
	movlw	high(01h)
	movwf	(??_delay+0+0+1)
	movlw	low highword(01h)
	movwf	(??_delay+0+0+2)
	movlw	high highword(01h)
	movwf	(??_delay+0+0+3)
	movf	0+(??_delay+0+0),w
	subwf	(delay@data),f
	movf	1+(??_delay+0+0),w
	skipc
	incfsz	1+(??_delay+0+0),w
	goto	u4285
	goto	u4286
u4285:
	subwf	(delay@data+1),f
u4286:
	movf	2+(??_delay+0+0),w
	skipc
	incfsz	2+(??_delay+0+0),w
	goto	u4287
	goto	u4288
u4287:
	subwf	(delay@data+2),f
u4288:
	movf	3+(??_delay+0+0),w
	skipc
	incfsz	3+(??_delay+0+0),w
	goto	u4289
	goto	u4280
u4289:
	subwf	(delay@data+3),f
u4280:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u4291
	goto	u4290
u4291:
	goto	l30001607
u4290:
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text231,local,class=CODE,delta=2
global __ptext231
__ptext231:
	line	271
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
