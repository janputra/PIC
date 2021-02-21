#include<pic.h>
#include<stdlib.h>
#include<stdio.h>


__CONFIG(0x3f32);

#define _XTAL_FREQ 11059200
#include "uart.h"


#define	io_clk					RC3				//clock on port C bit 3
#define	io_clk_dir				TRISC3			//clock on port c bit 3
#define	ad_data_in				RC5
#define	ad_data_in_dir			TRISC5

#define	ad_data_out				RC4				//data on port C bit 4
#define	ad_data_out_dir			TRISC4			//data on port C bit 4
#define	ad_cs					RA0
#define	ad_cs_dir				TRISA0

#define port_out				0
#define	port_in					1


//call this once to set it up
void ad_setup()
{
	//these in/outs are a bit confusing - its from the TLC2543's perspective
	ad_data_in_dir = port_out;	
	ad_data_out_dir = port_in;
	
	io_clk_dir = port_out;
	ad_cs_dir = port_out;
}

unsigned int ad_setgetchannel(unsigned char channel) // the channel is between 0-10
{
	signed char i;
	unsigned int data = 0x0;
	unsigned int ch_config;

	ch_config = channel<<8;
	
	io_clk = 0;															//ensure clock is low
	ad_cs = 0;
	for(i=11; i>=0; i--)
	{

		ad_data_in = ((ch_config>>i) & 0x01);	//bit to send

		data <<= 1;														//read the next bit
		data |= ad_data_out;											// get bit with MSB first
		io_clk = 1;														//ensure clock is high
		io_clk = 0;														//ensure clock is low
	}
	ad_cs = 1;
	return data;                                      
}


unsigned int read_ad(unsigned char channel) //better result of reading which the void above being called twice
{											//before return the value
	unsigned int temp;
	
	temp=ad_setgetchannel(channel);	
	temp=ad_setgetchannel(channel);	
   	return temp;
}


void main()
{	ADCON1=0b00000111;     // set PORTA as digital input/output
	TRISC=0b00010000;
	TRISB=0b00000001;
	TRISA=0b00000000;
	ad_setup();           // set the port that will be used as port for SPI bit banging
	int channel;
	int ready=0;
	char buff[4];
	char buff1[3];
	char buff2[4];
	int temp,temp1,i;
	UART_Init(9600);     //initialize UART (check the uart.h)

		while(1)
		{


	
		if(UART_Data_Ready())     //ensure there is incoming data in in buffer
		{
				for(i=0;i<4;i++){
				buff[i] =UART_Read();	//read the serial and store the char into char array
										//data format to be received --> the char as id and 2 digits number of channel (ex. channel 1 in first PIC -->"A01" 
				}
				ready=1;
		}
			
		if (ready){	
		
			if (buff[0]=='A')    	//	identification the PIC, A for channel 0-10    
			//if (buff[0]=='B')		//	B for channel 11-21
			{
				for (i=0;i<3;i++)
				{	
					buff1[i]=buff[i+1]; 	//store the char of channel that want to be read
				
				}
			}	

			channel= atoi(buff1);	 //the channel we got from serial incoming data is char type, so it should be converted to int		
		    temp=read_ad(channel); 	 //read the ADC 
			itoa(buff2,temp,10);
			UART_Write_Text(buff2);
			UART_Write('\n');
			UART_Write_Text(buff2);
			UART_Write('\n');
			ready =0;

		
		}
}
}
