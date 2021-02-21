
#include <pic.h>
#define _XTAL_FREQ 11059200
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
//#include "uart.h"
__CONFIG ( 0x3F32 );



//===========================================================================================================

//	Define
//============================================================================================================
#define	rs				RB7				// RS pin of the LCD.
#define	e				RB6				// E pin of the LCD.
#define	d7				RD7				// DB7 pin of the LCD.
#define	d6				RD6					// DB6 pin of the LCD.
#define	d5				RD5			// DB5 pin of the LCD.
#define	d4				RD4				// DB4 pin of the LCD.
#define	d3				RD3				// DB3 pin of the LCD.
#define	d2				RD2			// DB2 pin of the LCD.
#define	d1				RD1				// DB1 pin of the LCD.
#define	d0				RD0				// DB0 pin of the LCD.
#define BackLight		RC0				// backlight pin

/////////////////////////////////////////////////////////////////////////////
char kata[16];
char kata1[16];
int j,k;
unsigned long A,B;
unsigned char ai_read(unsigned char an_sel);
unsigned long AN_CH0_L, AN_CH0_H, AN_CH1_L, AN_CH1_H, iDelay, iDelay_L, iDelay_H = 0;
unsigned long time, counter_pulsa, posisi_NOW, posisi_LAST, Baca_ADC1 = 0;
bit flag_output_pulsa_Pin, flag_baca_pulsa, flag_ADC = 0;

////////////////////////////////////////////////////////////////////////////////
void delay(unsigned long data);	
void e_pulse(void);
void lcd_clr(void);
void lcd_goto(unsigned char data);
void send_char(unsigned char data);
void send_config(unsigned char data);
void send_string(const char *s);
void send_dec(unsigned long data,unsigned char num_dig);
void tamp(void);
void kirim_data(void);
void reset(void);
void mode1(void);
void mode2(void);
void Read_ADC(void);
char UART_Init(const long int baudrate);
char UART_TX_Empty();
void UART_Write(char data);
void UART_Write_Text(char *text);

/////////////////////////////////////////////////////////////////////////////////
void main(void)
{	
    UART_Init(9600);
  //lcd_init();
	// Set the I/O direction.
    TRISA	=	0b00011111;
	TRISB	=	0b00000001;
	TRISC	=	0b10000000;
	TRISD	=	0b00000000;
	TRISE	=	0b00000000;
	// Initialize the p1orts.
	PORTA = 0;
	PORTB = 0;
	PORTC = 0;
	PORTD = 0;
	PORTE = 0;
	// Initialize the INTERRUPT
	INTEDG	=	0;		//;FALLING EDGE INT 
	GIE 	= 	1;		//;INTERRUPT SETUP, ENABLE GLOBAL INTERRUPT
	INTE	=	1;		//;EXTERNAL INTERRUPT FROM RB0 ENABLE
	INTF	=	0;		//;MUST BE CLEAR TO ENABLE NEXT INTERRUPT
		
	BackLight = 1;		// Turn on The LCD Backligh
	
	//Configure the LCD
	send_config(0b00000001);			// Clear the LCD.
	send_config(0b00000010);			// Return cursor to home. 
	send_config(0b00000110);			// Entry mode - cursor increase 1.
	send_config(0b00001100);			// Display on, cursor off and cursor blink off.
	send_config(0b00111000);			// Function set.
	
	// Setup ADC.
	ADCON1 = 0b10000000;					//ALL PORTA AND PORTE AS ANALOG INPUT WITH VREF+ = VDD AND VREF- = VSS ; LEFT JUSTIFIED	
	ADCON0 = 0b00000001;					// A/D converter module powered up.
   	
	lcd_goto(0);
	send_string("    RND DAQ    ");					

while(1)

{
	//char str[80];	
	Read_ADC();
	itoa(kata,A,10);
	itoa(kata1,B,10);
	kirim_data();
	tamp();
	reset();

		//lcd_gotoxy(0,1);
		//sprintf(str,"SPD:%f",B);
		//puts(str);
		//delay(200);
		//ftoa(kata,A,3);
		//lcd_goto(x,y);	
		//sprintf(kata, "%d", A);	
		//sprintf(kata1,"%d", B);	
		//itoa(kata,A,10);
		//itoa(kata1,B,10);
		//kirim_data();
		//tamp();
		//reset();
		//A = ai_read(0)*2;
		//B = ai_read(1)*40;
		//mode1();
		//mode2();		
}    
}

void mode1()
{
	if (RB1==0)
	{
		UART_Write_Text("#1 SMODE:1;");
	do	{} while (RB1 == 0);	
	} 
}

void mode2()
{
	if (RB2==0)
	{
		UART_Write_Text("#1 SMODE:2;");
	//do	{} while (RB2 == 0);	
	} 
}

void kirim_data()
{

///////////////////////////////////posisi
	UART_Write_Text("#1 SPOS:");
	UART_Write_Text(kata1);
	UART_Write(',');
///////////////////////////////////speed
	UART_Write_Text("SV:");
	UART_Write_Text(kata);
	UART_Write(';');
}

void reset()
{
	{
	if (RB3==0)
	{
		UART_Write_Text("#1 RESET;");
		lcd_clr();
	do	{} while (RB3 == 0);	
	} 
}


}
void tamp()
{
	lcd_goto(20);
	send_string("Spd:");					
	lcd_goto(24);
	send_dec(A,3);
	//delay(50);
	lcd_goto(28);
	send_string("Pos:");					
	lcd_goto(32);
	send_dec(B,4);
	//delay(50);
}

void Read_ADC (void)
{
	ADCON0 = 0b01000001;		//CH_0
	delay(100);
	ADGO=1;						// Start conversion and wait until it is completed.
	while(ADGO==1);
	iDelay_L = ADRESL;
	iDelay_H = (ADRESH << 8);
	A = (iDelay_L + iDelay_H) ;

	ADCON0 = 0b01001001;		//CH_1
	delay(100);
	ADGO=1;						// Start conversion and wait until it is completed.
	while(ADGO==1);
	AN_CH1_L = ADRESL;
	AN_CH1_H = (ADRESH << 8);
	B = (((AN_CH1_H + AN_CH1_L)*7.8)+30);
//
//	ADCON0 = 0b01010001;		//CH_2
//	delay(10);
//	ADGO=1;						// Start conversion and wait until it is completed.
//	while(ADGO==1);
//	AN_CH2_L = ADRESL;
//	AN_CH2_H = ADRESH;
//
//	ADCON0 = 0b01011001;		//CH_3
//	delay(10);
//	ADGO=1;						// Start conversion and wait until it is completed.
//	while(ADGO==1);
//	AN_CH3_L = ADRESL;
//	AN_CH3_H = ADRESH;
//
//	ADCON0 = 0b01100001;		//CH_4
//	delay(10);
//	ADGO=1;						// Start conversion and wait until it is completed.
//	while(ADGO==1);
//	AN_CH4_L = ADRESL;
//	AN_CH4_H = ADRESH;
//
//	ADCON0 = 0b01101001;		//CH_5
//	delay(10);
//	ADGO=1;						// Start conversion and wait until it is completed.
//	while(ADGO==1);
//	AN_CH5_L = ADRESL;
//	AN_CH5_H = ADRESH;
//
//	ADCON0 = 0b01110001;		//CH_6
//	delay(10);
//	ADGO=1;						// Start conversion and wait until it is completed.
//	while(ADGO==1);
//	AN_CH6_L = ADRESL;
//	AN_CH6_H = ADRESH;
//
//	ADCON0 = 0b01111001;		//CH_7
//	delay(10);
//	ADGO=1;						// Start conversion and wait until it is completed.
//	while(ADGO==1);
//	AN_CH7_L = ADRESL;
//	AN_CH7_H = ADRESH;
}

// Read the ADC.
/*unsigned char ai_read(unsigned char an_sel)
{
	if(an_sel == 0)			ADCON0 = 0b00000001;	// AN0 is selected, set ADCON0.	set_value
	else if(an_sel == 1)	ADCON0 = 0b00001001;	// AN1 is selected, set ADCON0.	feedback_value
	else if(an_sel == 2)	ADCON0 = 0b00010001;	// AN2 is selected, set ADCON0.	kp
	else if(an_sel == 3)	ADCON0 = 0b00011001;	// AN3 is selected, set ADCON0.	ki
	else if(an_sel == 4)	ADCON0 = 0b00100001;	// AN4 is selected, set ADCON0.	kd
	else if(an_sel == 5)	ADCON0 = 0b00101001;	// AN5 is selected, set ADCON0.
	else if(an_sel == 6)	ADCON0 = 0b00110001;	// AN6 is selected, set ADCON0.
	else if(an_sel == 7)	ADCON0 = 0b00111001;	// AN7 is selected, set ADCON0.
	
	delay(100);										// Wait until the sampling capacitor is charged.
	
	ADGO=1;											// Start conversion and wait until it is completed.
	while(ADGO==1);
	
	if(an_sel == 2 || an_sel == 3 || an_sel == 4)	return ADRESH * 99 / 255;	// Limit the kp,ki and kd to the value of 0 to 100.	
	else return ADRESH ;					// Limit the kp,ki and kd to the value of 0 to 100.	
}*/

void delay(unsigned long data)
{
	for( ; data > 0; data -= 1);
}


// Send a pulse to the E pin of the LCD.
void e_pulse(void)
{
	e = 1;
	delay(50);
	e = 0;
	delay(50);
}

// Send the configuration the the LCD.
void send_config(unsigned char data)
{
	unsigned char test;
	unsigned char i;
	
	rs = 0;													// Clear RS pin for config mode.
	for(i = 0; i < 8; i++)									// Loop for 8 times. 
	{
		test = (data >> i) & 0b00000001;					// Shift data to right.
		switch(i)											// Detect a byte of data one bit by one bit.
		{
			case 0:
				if(test == 1)	d0 = 1;
				else			d0 = 0;
			case 1:
				if(test == 1)	d1 = 1;
				else			d1 = 0;
			case 2:
				if(test == 1)	d2 = 1;
				else			d2 = 0;
			case 3:
				if(test == 1)	d3 = 1;
				else			d3 = 0;
			case 4:
				if(test == 1)	d4 = 1;
				else			d4 = 0;
			case 5:
				if(test == 1)	d5 = 1;
				else			d5 = 0;
			case 6:
				if(test == 1)	d6 = 1;
				else			d6 = 0;
			case 7:
				if(test == 1)	d7 = 1;
				else			d7 = 0;
		}
	}
	delay(50);
	e_pulse();
}


// Clear the LCD.
void lcd_clr(void)
{
 	send_config(0x01);
	delay(600);
	//delay(1800);	
}


// Set the location of the LCD cursor.
// If the given value is (0-15) the cursor will be at the upper line.
// If the given value is (20-35) the cursor will be at the lower line.
// Location of the lcd cursor (2X16):
// -----------------------------------------------------
// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
// -----------------------------------------------------
void lcd_goto(unsigned char data)
{
 	if(data < 16)
	{
	 	send_config(0x80 + data);
	}
	else
	{
	 	data = data - 20;
		send_config(0xc0 + data);
	}
	delay(200);
	//delay(600);
}


// Send a character to the LCD.
void send_char(unsigned char data)
{
	unsigned char test;
	unsigned char i;
	rs = 1;													// Set rs for data mode.
	for(i = 0; i < 8; i++)									// Loop for 8 times.
	{
		test = (data >> i) & 0b00000001;					// Shift data to right.
		switch(i)											// Detect data one bit by one bit.
		{
			case 0:
				if(test == 1)	d0 = 1;
				else			d0 = 0;
			case 1:
				if(test == 1)	d1 = 1;
				else			d1 = 0;
			case 2:
				if(test == 1)	d2 = 1;
				else			d2 = 0;
			case 3:
				if(test == 1)	d3 = 1;
				else			d3 = 0;
			case 4:
				if(test == 1)	d4 = 1;
				else			d4 = 0;
			case 5:
				if(test == 1)	d5 = 1;
				else			d5 = 0;
			case 6:
				if(test == 1)	d6 = 1;
				else			d6 = 0;
			case 7:
				if(test == 1)	d7 = 1;
				else			d7 = 0;
		}
	}
	delay(50);
	//delay(150);
	e_pulse();
}




// Send a string to the LCD.
void send_string(const char *s)
{          
	unsigned char i = 0;
  	while (s && *s)	send_char (*s++);
	delay(300);
	//delay(900);
}


// Send a decimal number to the LCD.
void send_dec(unsigned long data, unsigned char num_dig)
{	
	if(num_dig >= 10)
	{
		data = data % 10000000000;
		send_char(data / 1000000000 + 0x30);
	}	
	if(num_dig >= 9)
	{
		data = data % 1000000000;
		send_char(data / 100000000 + 0x30);
	}	
	if(num_dig >= 8)
	{
		data = data % 100000000;
		send_char(data / 10000000 + 0x30);
	}	
	if(num_dig >= 7)
	{
		data = data % 10000000;
		send_char(data / 1000000 + 0x30);
	}	
	if(num_dig >= 6)
	{
		data = data % 1000000;
		send_char(data / 100000 + 0x30);
	}	
	if(num_dig >= 5)
	{
		data = data % 100000;
		send_char(data / 10000 + 0x30);
	}	
	if(num_dig >= 4)
	{
		data = data % 10000;
		send_char(data / 1000 + 0x30);
	}
	if(num_dig >= 3)
	{
		data = data % 1000;
		send_char(data / 100 + 0x30);
	}
	if(num_dig >= 2)
	{
		data=data % 100;
		send_char(data / 10 + 0x30);
	}
	if(num_dig >= 1)
	{
		data = data % 10;
		send_char(data + 0x30);
	}
}


char UART_Init(const long int baudrate)
{
	unsigned int x;
	x = (_XTAL_FREQ - baudrate*64)/(baudrate*64);
	if(x>255)
	{
		x = (_XTAL_FREQ - baudrate*16)/(baudrate*16);
		BRGH = 1;
	}
	if(x<256)
	{
	  SPBRG = x;
	  SYNC = 0;
	  SPEN = 1;
      TRISC7 = 1;
      TRISC6 = 1;
      CREN = 1;
      TXEN = 1;
	  return 1;
	}
	return 0;
}

char UART_TX_Empty()
{
  return TRMT;
}

char UART_Data_Ready()
{
   return RCIF;
}
char UART_Read()
{
 
  while(!RCIF);
  return RCREG;
}

void UART_Read_Text(char *Output, unsigned int length)
{
	int m;
	for(int m=0;m<length;m++)
		Output[m] = UART_Read();
}

void UART_Write(char data)
{
  while(!TRMT);
  TXREG = data;
}

void UART_Write_Text(char *text)
{
  int n;
  for(n=0;text[n]!='\0';n++)
	  UART_Write(text[n]);
}





/*void delay(unsigned long data)
{

	for( ; data >= 0; data -= 1);
}*/

/*	
void 

delay(400);

	if(d4==1)
	{
		motor_2=1;
     	motor_speed=20;
		delay(20);
	}
	if(d3==1)
	{
		motor_2=1;
     	motor_speed=50;
		delay(20);
	}

		if(d2==1)
	{
		motor_2=1;
     	motor_speed=80;
		delay(20);
	}
	*/
/*
	feedback_value = ai_read(1);						// Get the feedback value.
	lcd_goto(30);										// Put cursor on position 28.
	send_dec(feedback_value, 3);						// Put the 3 decimal kd value on position 29.
	
	set_value = ai_read(0);								// Get the set value.
	lcd_goto(20);										// Put cursor on position 28.
	send_dec(set_value, 3);								// Put the 3 decimal kd value on position 21.

  	Limit_Atas = set_value + 1;
	Limit_Bawah = set_value - 1;
	
	if (set_value <= 5) {
		set_value = 5; 
		Limit_Atas = 8; 
		Limit_Bawah = 3;
		} 
		
	if (set_value >= 250) {
		set_value = 250; 
		Limit_Atas = 252; 
		Limit_Bawah = 248;
		}
	
	if (feedback_value >= set_value) goto motor_tutup;
	if (feedback_value <= set_value) goto motor_buka;
	
	motor_tutup:
	do
		{
		RD0 = 1 ;
		RD1 = 0 ;
		feedback_value = ai_read(1);
		set_value = ai_read(0);
		if (set_value >= 26 )
			{
			set_value = set_value - 21;
			Limit_Atas = set_value + 1;
			Limit_Bawah = set_value - 1;
			}
		else 
			{
			set_value = 26;
			Limit_Atas = 27;
			Limit_Bawah = 25;
			}
		} while (feedback_value >= Limit_Atas);		
	RD0 = 0 ;
	RD1 = 0 ;
	goto	START;		
			
	motor_buka:
	do
		{
		RD0 = 0 ;
		RD1 = 1 ;
		feedback_value = ai_read(1);
		set_value = ai_read(0);
		if (set_value >= 229) 
			{
			set_value = 229; 
			Limit_Atas = 230; 
			Limit_Bawah = 228;
			}
		else
			{
			set_value = set_value ; 
			Limit_Atas = set_value + 1; 
			Limit_Bawah = set_value - 1;
			}
		}	while (feedback_value <= Limit_Bawah) ;
	RD0 = 0 ;
	RD1 = 0 ;

		

*/

//for mv control	(end)	
	




/*


// Read the ADC.
unsigned char ai_read(unsigned char an_sel)
{
	if(an_sel == 0)			ADCON0 = 0b00000001;	// AN0 is selected, set ADCON0.	set_value
	else if(an_sel == 1)	ADCON0 = 0b00001001;	// AN1 is selected, set ADCON0.	feedback_value
	else if(an_sel == 2)	ADCON0 = 0b00010001;	// AN2 is selected, set ADCON0.	kp
	else if(an_sel == 3)	ADCON0 = 0b00011001;	// AN3 is selected, set ADCON0.	ki
	else if(an_sel == 4)	ADCON0 = 0b00100001;	// AN4 is selected, set ADCON0.	kd
	else if(an_sel == 5)	ADCON0 = 0b00101001;	// AN5 is selected, set ADCON0.
	else if(an_sel == 6)	ADCON0 = 0b00110001;	// AN6 is selected, set ADCON0.
	else if(an_sel == 7)	ADCON0 = 0b00111001;	// AN7 is selected, set ADCON0.
	
	delay(100);										// Wait until the sampling capacitor is charged.
	
	ADGO=1;											// Start conversion and wait until it is completed.
	while(ADGO==1);
	
	if(an_sel == 2 || an_sel == 3 || an_sel == 4)	return ADRESH * 99 / 255;	// Limit the kp,ki and kd to the value of 0 to 100.	
	else return ADRESH ;					// Limit the kp,ki and kd to the value of 0 to 100.	
}


// Rotate the motor to the right.
void motor_right(unsigned char speed)
{	
	RD0 = 0 ;
	RD1 = 1 ;
	//motor_1 = 0;			// Set the direction of the motor to right.
	//motor_2 = 1;
	//motor_speed = speed;	// Set the PWM value to control the speed.
}


// Rotate the motor to the left.
void motor_left(unsigned char speed)
{	
	RD0 = 1 ;
	RD1 = 0 ;
	//motor_1 = 1;			// Set the direction of the motor to left.
	//motor_2 = 0;
	//motor_speed = speed;	// Set the PWM value to control the speed.
}


// Brake the motor.
void motor_stop(void)
{
	RD0 = 0 ;
	RD1 = 0 ;
	//motor_1 = 0;			// Brake the motor.
	//motor_2 = 0;
	//motor_speed = 0;		// Set the PWM value to 0.
}


// Delay function. The delay time depends on the given value.
/*void delay(unsigned long data)
{

	for( ; data > 0; data -= 1);
}


// Send a pulse to the E pin of the LCD.
void e_pulse(void)
{
	e = 1;
	delay(50);
	e = 0;
	delay(50);
}


// Send the configuration the the LCD.
void send_config(unsigned char data)
{
	unsigned char test;
	unsigned char i;
	
	rs = 0;													// Clear RS pin for config mode.
	for(i = 0; i < 8; i++)									// Loop for 8 times. 
	{
		test = (data >> i) & 0b00000001;					// Shift data to right.
		switch(i)											// Detect a byte of data one bit by one bit.
		{
			case 0:
				if(test == 1)	d0 = 1;
				else			d0 = 0;
			case 1:
				if(test == 1)	d1 = 1;
				else			d1 = 0;
			case 2:
				if(test == 1)	d2 = 1;
				else			d2 = 0;
			case 3:
				if(test == 1)	d3 = 1;
				else			d3 = 0;
			case 4:
				if(test == 1)	d4 = 1;
				else			d4 = 0;
			case 5:
				if(test == 1)	d5 = 1;
				else			d5 = 0;
			case 6:
				if(test == 1)	d6 = 1;
				else			d6 = 0;
			case 7:
				if(test == 1)	d7 = 1;
				else			d7 = 0;
		}
	}
	delay(50);
	e_pulse();
}


// Clear the LCD.
void lcd_clr(void)
{
 	send_config(0x01);
	delay(600);
	//delay(1800);	
}


// Set the location of the LCD cursor.
// If the given value is (0-15) the cursor will be at the upper line.
// If the given value is (20-35) the cursor will be at the lower line.
// Location of the lcd cursor (2X16):
// -----------------------------------------------------
// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
// -----------------------------------------------------
void lcd_goto(unsigned char data)
{
 	if(data < 16)
	{
	 	send_config(0x80 + data);
	}
	else
	{
	 	data = data - 20;
		send_config(0xc0 + data);
	}
	delay(200);
	//delay(600);
}


// Send a character to the LCD.
void send_char(unsigned char data)
{
	unsigned char test;
	unsigned char i;
	rs = 1;													// Set rs for data mode.
	for(i = 0; i < 8; i++)									// Loop for 8 times.
	{
		test = (data >> i) & 0b00000001;					// Shift data to right.
		switch(i)											// Detect data one bit by one bit.
		{
			case 0:
				if(test == 1)	d0 = 1;
				else			d0 = 0;
			case 1:
				if(test == 1)	d1 = 1;
				else			d1 = 0;
			case 2:
				if(test == 1)	d2 = 1;
				else			d2 = 0;
			case 3:
				if(test == 1)	d3 = 1;
				else			d3 = 0;
			case 4:
				if(test == 1)	d4 = 1;
				else			d4 = 0;
			case 5:
				if(test == 1)	d5 = 1;
				else			d5 = 0;
			case 6:
				if(test == 1)	d6 = 1;
				else			d6 = 0;
			case 7:
				if(test == 1)	d7 = 1;
				else			d7 = 0;
		}
	}
	delay(50);
	//delay(150);
	e_pulse();
}


// Send a string to the LCD.
void send_string(const char *s)
{          
	unsigned char i = 0;
  	while (s && *s)	send_char (*s++);
	delay(300);
	//delay(900);
}


// Send a decimal number to the LCD.
void send_dec(unsigned long data, unsigned char num_dig)
{	
	if(num_dig >= 10)
	{
		data = data % 10000000000;
		send_char(data / 1000000000 + 0x30);
	}	
	if(num_dig >= 9)
	{
		data = data % 1000000000;
		send_char(data / 100000000 + 0x30);
	}	
	if(num_dig >= 8)
	{
		data = data % 100000000;
		send_char(data / 10000000 + 0x30);
	}	
	if(num_dig >= 7)
	{
		data = data % 10000000;
		send_char(data / 1000000 + 0x30);
	}	
	if(num_dig >= 6)
	{
		data = data % 1000000;
		send_char(data / 100000 + 0x30);
	}	
	if(num_dig >= 5)
	{
		data = data % 100000;
		send_char(data / 10000 + 0x30);
	}	
	if(num_dig >= 4)
	{
		data = data % 10000;
		send_char(data / 1000 + 0x30);
	}
	if(num_dig >= 3)
	{
		data = data % 1000;
		send_char(data / 100 + 0x30);
	}
	if(num_dig >= 2)
	{
		data=data % 100;
		send_char(data / 10 + 0x30);
	}
	if(num_dig >= 1)
	{
		data = data % 10;
		send_char(data + 0x30);
	}
}

//	Interrupt function
//==========================================================================

static void interrupt isr(void)
 
{

	if(INTF == 1)															// If TMR1 register overflowed.

		{
			while	(!RCIF);

			coba_reg1 = RCREG;
			
	
			if(coba_reg1 == 0x59)
				{
					TXREG = 0x5A;			
					while(!TXIF);
					while(!TXIF);
					TXREG = 0x5B;			
					while(!TXIF);
					while(!TXIF);
					TXREG = 0x5C;			
					while(!TXIF);
					while(!TXIF);
					TXREG = 0x5D;			
					while(!TXIF);
					while(!TXIF);
					TXREG = 0x5E;			
					while(!TXIF);
					while(!TXIF);
					TXREG = 0x6F;
					while(!TXIF);
					while(!TXIF);
				}

			 if(coba_reg1 == 0x54)
				{
					TXREG = set_value;			
					while(!TXIF);
					while(!TXIF);
					TXREG = feedback_value;			
					while(!TXIF);
					while(!TXIF);
					TXREG = kp;			
					while(!TXIF);
					while(!TXIF);
					TXREG = ki;			
					while(!TXIF);
					while(!TXIF);
					TXREG = kd;			
					while(!TXIF);
					while(!TXIF);
					TXREG = output;			
					while(!TXIF);
					while(!TXIF);
				}

//		delay(100);	
		INTF = 0;															// Clear RB0 INTERRUPT FLAG, TO ENABLE NEXT INTERRUPT
		
	
		}
}


*/