// PIC16F886 Configuration Bit Settings

// 'C' source line config statements

// CONFIG1
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator: High-speed crystal/resonator on RA6/OSC2/CLKOUT and RA7/OSC1/CLKIN)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled and can be enabled by SWDTEN bit of the WDTCON register)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config MCLRE = ON       // RE3/MCLR pin function select bit (RE3/MCLR pin function is MCLR)
#pragma config CP = OFF         // Code Protection bit (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Code Protection bit (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown Out Reset Selection bits (BOR enabled)
#pragma config IESO = OFF       // Internal External Switchover bit (Internal/External Switchover mode is disabled)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enabled bit (Fail-Safe Clock Monitor is disabled)
#pragma config LVP = OFF        // Low Voltage Programming Enable bit (RB3 pin has digital I/O, HV on MCLR must be used for programming)

// CONFIG2
#pragma config BOR4V = BOR40V   // Brown-out Reset Selection bit (Brown-out Reset set to 4.0V)
#pragma config WRT = OFF        // Flash Program Memory Self Write Enable bits (Write protection off)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 20000000
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>

#define CS   RC5 
#define CLK  RC3
#define SDI  RC4

void spi_write(unsigned int data)
{ CS=0;
__delay_us(1);
    for(char i=0; i<6; i++)
	{
        if (data&0b100000) SDI=1;
        else SDI=0;
        __delay_us(1);          
       CLK=0;
       __delay_us(1);          
       CLK=1;
       data=data<<1;
	}
    SDI=0;
    __delay_us(1); 
     CS=1;
    __delay_us(1);
}



void main(void) {
    TRISC3=0;
    TRISC4=0;
    TRISC5=0;
  
    SDI=0;
    CS=1;
    CLK=1;
    __delay_us(100);
    
    spi_write(32);
    
    while(1)
    {
    
    }
}
