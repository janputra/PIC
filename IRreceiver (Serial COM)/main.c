#include <pic.h>
#include "delay.c"

#define _XTAL_FREQ 4000000
#include "uart.h"

__CONFIG(0x3F32);


#define Rx RC7
#define F1 RB7
#define F2 RB6
#define F3 RB5
#define F4 RB4
#define F5 RB3
#define F6 RB2
#define F7 RB1
#define F8 RD7


unsigned char input1;


void main()
{
TRISC=0xFF;
TRISD=0x00;
TRISB=0x00; 

UART_Init(4800);

	while(1)
	{
	
		if(UART_Data_Ready())
		{
			input1=UART_Read();
		}

		if (input1=='A')
		{
			F1=1;
			F2=0;
			F3=0;
			F4=0;
			F5=0;
			F6=0;
			F7=0;
			F8=0;
		}
		if (input1=='B')
		{
			F1=0;
			F2=1;
			F3=0;
			F4=0;
			F5=0;
			F6=0;
			F7=0;
			F8=0;
		}
		if (input1=='C')
		{
			F1=0;
			F2=0;
			F3=1;
			F4=0;
			F5=0;
			F6=0;
			F7=0;
			F8=0;
		}
		if (input1=='D')
		{
			F1=0;
			F2=0;
			F3=0;
			F4=1;
			F5=0;
			F6=0;
			F7=0;
			F8=0;
		}
		if (input1=='E')
		{
			F1=0;
			F2=0;
			F3=0;
			F4=0;
			F5=1;
			F6=0;
			F7=0;
			F8=0;
		}	 
	if (input1=='F')
		{
			F1=0;
			F2=0;
			F3=0;
			F4=0;
			F5=0;
			F6=1;
			F7=0;
			F8=0;
		}
		if (input1=='G')
		{
			F1=0;
			F2=0;
			F3=0;
			F4=0;
			F5=0;
			F6=0;
			F7=1;
			F8=0;
		}
		if (input1=='H')
		{
			F1=0;
			F2=0;
			F3=0;
			F4=0;
			F5=0;
			F6=0;
			F7=0;
			F8=1;
		}
		if (input1=='I')
		{
			F1=1;
			F2=0;
			F3=1;
			F4=0;
			F5=1;
			F6=0;
			F7=1;
			F8=0;
		}
		if (input1=='J')
		{
			F1=0;
			F2=1;
			F3=0;
			F4=1;
			F5=0;
			F6=1;
			F7=0;
			F8=1;
		}
	if (input1=='K')
		{
			F1=1;
			F2=1;
			F3=0;
			F4=0;
			F5=1;
			F6=1;
			F7=0;
			F8=0;
		}
		if (input1=='L')
		{
			F1=0;
			F2=0;
			F3=1;
			F4=1;
			F5=0;
			F6=0;
			F7=1;
			F8=1;
		}	 

	if (input1=='M')
		{
			F1=0;
			F2=0;
			F3=0;
			F4=0;
			F5=0;
			F6=0;
			F7=0;
			F8=0;
		}	 
}
}