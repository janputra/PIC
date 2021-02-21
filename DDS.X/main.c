/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.65.2
        Device            :  PIC16LF1937
        Driver Version    :  2.00
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "mcc_generated_files/mcc.h"

// Declare pin which is used for SPI
#define F_SYNC RE0 
#define SDATA  RE2
#define SCLK   RE1


//Declare variable
int32_t freq;
uint16_t freqMSB ;
uint16_t freqLSB ;
uint16_t RESET ;
uint16_t SET ;
uint16_t PHASE ;


 // sending data with SPI Bit banging with MSB fist to be send
void spi_write(unsigned int data)
{ F_SYNC=0;
__delay_us(1);
    for(uint8_t i=0; i<16; i++)
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
void CalculateFreq(float input) 
{
    freq= input/0.0596;
    
    freqMSB = freq &~0xC000; // blanking the first two bits.
    freqMSB |=0x4000; //set the top two bits according to the reg parameter(FREQ0)
    
    freqLSB = freq>>14; //shifting bits
    freqLSB = freqLSB &~0xC000; // blanking the first two bits.
    freqLSB |=0x4000; //set the top two bits according to the reg parameter(FREQ0)
    

}


void main(void)
{
    // initialize the device
    SYSTEM_Initialize();
    
    //setting pin for SPI as output
    TRISE0 = 0; 
    TRISE1 = 0;
    TRISE2 = 0;
    F_SYNC = 1; // set F_SYINC HIGH
    SCLK = 1; // set SCLK HIGH
    
    
    RESET=0x2100;    //bit data for reset condition before setting frequency and phase
    SET=0x2000;     //bit data to set the setting and start generating signal
    PHASE=0xC000;   //set 0 phase shifting
    CalculateFreq(21000);    // calculating frequency register bit
    
    
    
    spi_write(RESET);   //sending RESET bit through SPI
    spi_write(freqLSB);  //sending LSB bit through SPI
    spi_write(freqMSB); //sending MSB bit through SPI
    spi_write(PHASE);   //sending signal phase bit through SPI
    spi_write(SET);     //sending SET bit through SPI 
   
    while(1)
    {
    
    }
    
}
/**
 End of File
*/