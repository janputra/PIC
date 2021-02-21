#include <pic.h>
#include "delay.c"
#define _XTAL_FREQ 4000000
#include"uart.h"
__CONFIG(0x3F32);



#define FAULT1 RC5 
#define FAULT2 RB3 
#define FAULT3 RB7 
#define FAULT4 RC4
#define FAULT5 RB2
#define FAULT6 RB6
#define LEDCTRL RB0
#define FAULT7 RC0
#define FAULT8 RB1
#define FAULT9 RB5
#define FAULT10 RC1
#define RESVOLT RB4
#define RESET RC3

#define Tx RC6



void UART_Stop() // disable transmitter and serial and clear pin RC6
{
TXEN=0 ;CREN=0; SPEN=0;TRISC6=0;
}

void main()
 {
 	TRISB=0xFF;     // set PORTB as input
 	TRISC=0b10111011;  // set rc6,rc2 as output and the rest of it as input 
 	PORTC=0;		// clear PORTC


//--------------set pwm with 38khz and 100% duty cycle--------------// 
   	PR2 = 0b00011001 ;  		
    T2CON = 0b00000100 ;
    CCPR1L = 0b00011001 ;
    CCP1CON = 0b00111100 ;
	
	while(1)
 	{
	/	if (FAULT2==0){UART_Stop();}
*/	
    if(FAULT1==0){    

		UART_Init(4800);
		CCPR1L = 0b00001100 ;      //  and set 50% pwm's duty cycle 
		UART_Write('A');			// send char 'A' throught serial
       do{}
       while(FAULT1==0);
		UART_Stop();			// disable serial
		CCPR1L = 0b00011001 ;    // set 100% pwm's duty cycle 
    }
	
 	if(FAULT2==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('B');
       do{}
       while(FAULT2==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
    }
 	if(FAULT3==0){
		UART_Init(4800)	;
		CCPR1L = 0b00001100 ;
		UART_Write('C');
       do{}
       while(FAULT3==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
    }
 	if(FAULT4==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('D');
       	do{}
       	while(FAULT4==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
    }
 	if(FAULT5==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('E');
       do{}
       while(FAULT5==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
    }
  if(FAULT6==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('F');
       do{}
       while(FAULT6==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
    }
 if(FAULT7==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('G');
       do{}
       while(FAULT7==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
    }
 	if(LEDCTRL==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('K');
       do{}
       while(LEDCTRL==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
		
    }
 	if(FAULT8==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('H');
       do{}
       while(FAULT8==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;	
	
    }
 	if(FAULT9==0){
	
	UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('I');
       do{}
       while(FAULT9==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
		
    }
 	if(FAULT10==0){
	UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('J');
       do{}
       while(FAULT10==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;		

    }
 	if(RESVOLT==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
	UART_Write('L');
       do{}
       while(RESVOLT==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;	
	
    }
 	if(RESET==0){
		UART_Init(4800);
		CCPR1L = 0b00001100 ;
		UART_Write('M');
       do{}
       while(RESET==0);
		UART_Stop();
		CCPR1L = 0b00011001 ;
	
    }
	}
 }
 



	
