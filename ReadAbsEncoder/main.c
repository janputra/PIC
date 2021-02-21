#include <pic.h>
#define _XTAL_FREQ 11059200
#include <string.h>
__CONFIG(0x3F32);

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
#define in				RE2


int CountPulse(int pin, int state);
void delay(unsigned long data);	
void e_pulse(void);
void lcd_clr(void);
void lcd_goto(unsigned char data);
void send_char(unsigned char data);
void send_config(unsigned char data);
void send_string(const char *s);
void send_dec(unsigned long data,unsigned char num_dig);

void main()
{
	ADCON1 	=0b00000111;
	TRISB	=	0b00000000;

	TRISD	=	0b00000000;
	TRISE  	= 	0xFF;
	PORTB = 0;
	PORTE = 0;
	PORTD = 0;
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


	int jumlah;
	while(1)
	{
		jumlah = CountPulse(in,1);
		lcd_goto(20);
		send_dec(jumlah,4);

	} 

}

int CountPulse(int pin, int state)
	{	int count=0;
		
		do{
			count++;
			__delay_us(10);
		  }	
		while(pin = state);
		return count;
		
	}
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