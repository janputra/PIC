/*
 * File:   newmain.c
 * Author: LENOVO
 *
 * Created on December 25, 2018, 11:45 AM
 */

// 'C' source line config statements

// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable (PWRT disabled)
#pragma config MCLRE = ON       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = OFF       // Internal/External Switchover (Internal/External Switchover mode is disabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config VCAPEN = OFF     // Voltage Regulator Capacitor Enable (All VCAP pin functionality is disabled)
#pragma config PLLEN = OFF      // PLL Enable (4x PLL disabled)
#pragma config STVREN = OFF     // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will not cause a Reset)
#pragma config BORV = HI        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), high trip point selected.)
#pragma config LVP = OFF        // Low-Voltage Programming Enable (High-voltage on MCLR/VPP must be used for programming)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>
#define _XTAL_FREQ 8000000
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>


// Declare pin which is used for SPI
#define F_SYNC RC4 
#define SDATA  RC5
#define SCLK   RC6

//Declare variable for SPI
uint32_t temp;
uint16_t freqMSB ;
uint16_t freqLSB ;
uint16_t RESET ;
uint16_t SET_0 ;
uint16_t SET_1 ;
uint16_t PHASE ;


//Declare variable
uint32_t freq, last_freq;

char buff[8];
char F_FREQ;
char cursor_dir;

// SPI ROUTINE
// sending data with SPI Bit banging with MSB fist to be send
void spi_write(unsigned int data)
{ F_SYNC=0;
__delay_us(1);
    for(char i=0; i<16; i++)
	{
        if (data&0x8000) SDATA=1;
        else SDATA=0;
        __delay_us(1);          
       SCLK=0;
       __delay_us(1);          
       SCLK=1;
       data=data<<1;
	}
    SDATA=0;
    __delay_us(1); 
     F_SYNC=1;
    __delay_us(1);
}
//this routine is for calculating 28 bits frequency register as desired input
//then also to split 28 bits into 14bits MSB and 14bits LSB for sending the bits to FREQ0

// routine for setting frequency of DDS 
// routine for setting frequency of DDS 
void DDS(uint32_t input,char reg)
{  
    freqLSB = input &~0xC000; // blanking the first two bits.
    
    freqMSB = input>>14; //shifting bits
    freqMSB &=~0xC000; // blanking the first two bits.
    
    if (reg==0){
    freqLSB |=0x4000; //set the top two bits according to the reg parameter(FREQ0)
    freqMSB |=0x4000; //set the top two bits according to the reg parameter(FREQ0)
    }
    else if(reg==1)
    {
    freqLSB |=0x8000; //set the top two bits according to the reg parameter(FREQ1)
    freqMSB |=0x8000; //set the top two bits according to the reg parameter(FREQ1)
    }
    
    spi_write(freqLSB);  //sending LSB bit through SPI
    spi_write(freqMSB); //sending MSB bit through SPI
}

void DDS_init()
{
    spi_write(RESET);   //sending RESET bit through SPI
    DDS(335572,0);
    spi_write(PHASE);   //sending signal phase bit through SPI
    spi_write(SET_0);     //sending SET bit through SPI 
}



void main(void) {
//    
   //    
    //setting pin for SPI 
    RESET=0x2100;    //bit data for reset condition before setting frequency and phase
    SET_0=0x2000;     //bit data to set the setting and start generating signal
    SET_1=0x2800;     //bit data to set the setting and start generating signal
    PHASE=0xC000;   //set 0 phase shifting
    TRISC6 = 0; 
    TRISC5 = 0;
    TRISC4 = 0;
    F_FREQ=0;
    F_SYNC = 1; // set F_SYINC HIGH
    SCLK = 1; // set SCLK HIGH
    
   
    //last_freq=214748;

    freq=214748;
        
    INTEDG	=0;	     // Falling edge int
    GIE     =1;          //Enable Global Interrupt
    PEIE    =1;         //Enable the Peripheral Interrupt
    INTF    =0;         // flag Cleared 
    INTE    =1;       //Enable RB0 as external Interrupt pin
    
    DDS_init();      
      while(1)
      {
        ////         
               
          
            if (freq!=last_freq)
          {
              if (F_FREQ==1)
              {
              DDS(freq,0);      //set DDS frequency
              spi_write(SET_0); 
              F_FREQ=0;
              }
              else
              {
              DDS(freq,1);      //set DDS frequency
              spi_write(SET_1); 
              F_FREQ=1;
              }
              last_freq=freq;
          }
         
        
      }
}
