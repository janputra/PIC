/*
 * File:   main.c
 * Author: Jan Putra Bahtra Agung Sembiring 
 *
 * Created on July 20, 2020, 2:21 PM
 */


// PIC16F1938 Configuration Bit Settings

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


/**
 * *******************************************************************
 * THIS SECTION IS FOR DECLARING I/O AND VARIABLE USED IN THIS PROJECT
 * I/O is declared based on schematic drawing 
 * *******************************************************************
 */

#include <xc.h> 
#define _XTAL_FREQ 8000000
#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <math.h>

//declaration of pin for LCD
#define D7 RA6
#define D6 RA7
#define D5 RA5
#define D4 RA4 
#define EN RA3
#define RS RA2

//declaration of input pin
#define reset RC6           // Reset Button
#define up_but RC4          // UP button
#define down_but RB0        // DOWN Butoon              
#define lock_on RB3         // Lock on input
#define ss_sw RC5           // start/stop switch             
#define test_but RC7        // test button

//declaration of output pin
#define relay1 RA0          // Relay 1
#define relay2 RA1          // Realy 2
#define VCO RB2             // VCO
#define buzz RC3            // Buzzer
#define e_led RC0           // Error LED

// declaration static value used for power control 
#define v3 40
#define v4 50


//declaration of flags as boolean 
bool pwmcon_flag;           // PWM control enable Flag 
bool pause;                 // Pause/break condition  Flag
bool e_lock;                // Lock on error Flag
bool e_overvolt;            // Overload erro Flag
bool h_voltage_flag;        // High voltage V1 flag (F2 on flowchart)
bool start_flag;            // Start Flag to inform VCO operation is done 
bool maintenance_f;         // Maintenance Mode enable Flag
bool f2;                    // F2 flag in maintenance mode
bool f1;                    // F1 flag in maintenance mode

//declaration of variables 
uint16_t period,dutycycle,j,temp;
int last_pwm_lvl,pwm_lvl,adcbuff;
char buff[8];
float v1,v2,frequency,last_v1,last_v2, last_frequency,diff; 


/**
 * *******************************************************************
 * THIS SECTION IS CONTAIN ALL THE ROUTINE USED FOR ALL PROCESS:
 * 1. LCD PROCESSING 
 * 2. FREQUENCY COUNTER
 * 3. PWM CONTROL  
 * 4. I/O CONTROL 
 * 5. ADC READING 
 * *******************************************************************
 */


/**
 * This routine is for initialization setting regarding all of the process:
 * - I/O pin register
 * - PWM
 * - ADC (Analog to Digital Converter)
 * - External Interrupt
 * - Capture module for frequency counting
 * - Timer
 */

void init_setting()
{
    
    OSCCON=0b01110000;  //Set the internal clock with clock speed 8MHz
    
    
    // TRIS -> Set Direction of PIN (1 : Input / 0: Output)
    // ANS -> enable or disable ADC ( 1 : enable/ 0 : disable) 
    //Refer to PIC16(L)F1938/9 data sheet 
    TRISA0=0;                  
    TRISA1=0;                   
    TRISA2=0;                   
    TRISA3=0;                   
    TRISA4=0;
    TRISA5=0;
    TRISA6=0;
    TRISA7=0;
    ANSA0=0;
    ANSA1=0;
    ANSA2=0;
    ANSA3=0;
    ANSA4=0;
    ANSA5=0;

    TRISC0=0;
    TRISC1=0;
    TRISC2=1;
    TRISC3=0;
    TRISC4=1;
    TRISC5=1;
    TRISC6=1;
    TRISC7=1;
    
    TRISB0=1;
    TRISB1=1;
    TRISB2=0;
    TRISB3=1;
    TRISB5=1;
    ANSB0=0;
    ANSB1=1;
    ANSB2=0;
    ANSB3=0;
    ANSB5=1;
       
    // ADC configuration
    ADCON1=0b10100000;    // ADC configuration : 
                          // -Right justified. Six Most Significant bits of ADRESH are set to ?0? when the conversion result is loaded.)
                          // -ADC conversion rate FOSC/32 
    ADIE=0;               //  ADC Interrupt is disabled 
    ADON=1;               // Turning on ADC module  
    
    
    //interrupt configuration
    INTEDG	=1;	         // Falling edge INT
    GIE     =1;          //Enable Global Interrupt
    PEIE    =1;          //Enable the Peripheral Interrupt
    INTF    =0;          // flag Cleared 
    INTE    =1;          //Enable RB0 as external Interrupt pin
 
    
//    // capture module configuration
     /// capture mode rising edge
    T1CON=0b01000001;        // Set timer with clock as same as system clock (F0SC)
    TMR1=0;                  // clear register that store counting value for capture module               
    TMR1GE=0;                // Disable Timer1 Gate 
    CCP1IE=1;                // Enable CCP1 Module for frequency counter   
    CCP1IF=0;                // Clear CCP1IF flag to start counting    
    
//      
   // PWM module configuration (10 bits with freq. of ~0.5 kHz. Refer to PIC16(L)F1938/9 data sheet for detailed PWM freq. calculation
    PR2=0xFF;               // Set PWM with 10 bits duty cycle 
    CCP2CON=0b00001100;     // SET pin RC1 as single output PWM
    C2TSEL0=0;              //  Select Timer 2 for PWM operation
    C2TSEL1=0;              //  Select Timer 2 for PWM operation
    
    // set duty cycle as 0
    DC2B1=0;
    DC2B0=0;
    CCPR2L=0x00;
    
    //
    TMR2IF=0;               // PWM operation without interrupt pending 
    T2CKPS1=1;              // Configuring Timer 2 prescaler as 16  
    T2CKPS0=0;              // Configuring Timer 2 prescaler as 16
    TMR2ON=1;               // Turning on TImer 2 for PWM 

    // Default value for all variable 
    D7=0;
    D6=0;
    D5=0;
    D4=0;
    EN=0;
    RS=0;
    relay1=0;
    relay2=0;
    VCO=0;
    buzz=0;
    last_pwm_lvl=100;
    last_v1=100;
    last_v2=100;
    last_frequency=1.0;
      
}

//////////// LCD ROUTINE///////////////////
//Sending 4 bit data 
/**
 * This routine is used to send bit data to lCD in LCD 4 bit data operation
 * 
 * @param data -> binary input (character)
 */
void data_write(unsigned char data)
{   
    if (data & 0b1000) D7=1;
    else D7=0;
    if (data & 0b0100) D6=1;
    else D6=0;
    if (data & 0b0010) D5=1;
    else D5=0;
    if (data & 0b0001) D4=1;
    else D4=0;
    EN=1;
    __delay_us(200);
    EN=0;
    __delay_us(200);
}

/**
 * This routine is used to send binary of 1 character that want to be displayed
 * - Sending displaying data is started when RS = 1 
 * - binary data was 8 bits, therefore in 4 bits LCD operation the data was send twice after shifting 4 bits 
 * @param data -> binary of character
 */
void lcd_data(unsigned char data)
{  
    RS=1;
    __delay_us(150);
    data_write(data>>4);
    __delay_us(150);
    data_write(data);
}

/**
 * This routine is used for sending command for configuration of LCD operation:
 * How to configure LCD can be seen in LCD display data sheet
 * - Sending command is started when RS = 0 
 * - binary data was 8 bits, therefore in 4 bits LCD operation the data was send twice after shifting 4 bits 
 * @param data -> Command that will be send to LCD 
 */
void lcd_cmd(unsigned char data)
{
    RS=0;
    __delay_us(150);
    data_write(data>>4);
    __delay_us(150);
    data_write(data);
}

/**
 * This routine is used for sending LCD command for initialization of LCD
 * Refer to LCD display controller data sheet for configurations
 */
void lcd_init(void)
{
     __delay_us(30000);
    
    data_write(0x03);
    __delay_us(7000);

    data_write(0x03);
    
    __delay_us(500);
    
    data_write(0x03);
    __delay_us(850);
        
    data_write(0x02);
    __delay_us(400);

    lcd_cmd(0x28);   //entry mode
    __delay_us(300);
    __delay_us(300);
    lcd_cmd(0x0C);   // display on. cursor off
    __delay_us(300);
    lcd_cmd(0x06);   //entry mode
    __delay_us(300);
    lcd_cmd(0x80);   // return to home
    __delay_us(300); 
}

/**
 * This routine is used to send command to clear LCD Display
 */
void lcd_clear(void)
{     
    lcd_cmd(0x01);  //entry mode
     __delay_us(2000);
}

/**
 * This routine is used to send data with string type for displaying
 * 
 * @param s -> array of string data
 */
void lcd_send_string(const char *s)
{
      unsigned int i=0;
      for(;s[i]!=0;i++)  lcd_data(s[i]);
}

/**
 * This routine is used to send data with integer type for displaying
 * 
 * @param data ->  integer value to be displayed
 */
void lcd_send_int(int data){
        sprintf(buff,"%d",data);
        lcd_send_string(buff);
}

/**
 * This routine is used to send data with floating point for displaying
 * 
 * @param data -> floating point value to be displayed
 */

void lcd_send_float1(float data){
     sprintf(buff,"%.1f",data);
     lcd_send_string(buff);     
}

/**
 * This routine is used for set the position of LCD input
 * 
 * @param pos -> position of displayed character (for easy operation position is in hexadecimal)
 * 
 * Position in LCD (16x4):
 *                  |00|01|02|03|04|05|06|07|08|09|0A|0B|0C|0D|0E|0F|
 *                  |40|41|42|43|44|45|46|47|48|49|4A|4B|4C|4D|4E|4F|
 *                  |10|11|12|13|14|15|16|17|18|19|1A|1B|1C|1D|1E|1F|
 *                  |50|51|52|53|54|55|56|57|58|59|5A|5B|5C|5D|5E|5F|
 * 
 */
void lcd_set_pos(int pos){
    lcd_cmd(pos+0x80);
}

/**
 * This routine is used as main routine for LCD displaying. The content is determined by parameter x 
 * @param x -> the value determines the display mode:
 *              -x = 0 : For LCD 1 and LCD 2 (Main Display) [LCD 1 with initlal value and LCD 2 with updated value]
 *              -x = 1 : For LCD 3 (Stall Error)
 *              -x = 2 : For LCD 4 (Overload Error)
 *              -x = 3 : For LCD 5 (Break)
 */
void lcd_show(int x)
{
    
    switch (x)
    {
        case 0:
            lcd_clear();
            lcd_set_pos(0x02);
            lcd_send_string("FREQ.");

            lcd_set_pos(0x0C);
            lcd_send_string("KHz");

            lcd_set_pos(0x44);
            lcd_send_string("BLT"); 

            lcd_set_pos(0x4C);
            lcd_send_string("Vp-p");

            lcd_set_pos(0x12);
            lcd_send_string("DRIVE");

            lcd_set_pos(0x1C);
            lcd_send_string("V"); 

            lcd_set_pos(0x52);
            lcd_send_string("POWER");

            lcd_set_pos(0x5C);
            lcd_send_string("%");
          
            break;
            
            
        case 1:
            
            lcd_set_pos(0x02);
             lcd_send_string("     ");
             lcd_set_pos(0x42);
             lcd_send_string("STALL");
             lcd_set_pos(0x12);
             lcd_send_string("ERROR");
             lcd_set_pos(0x52);
            lcd_send_string("     ");
            
            break;
        case 2:
             
             lcd_set_pos(0x02);
             lcd_send_string(" OVER");
             lcd_set_pos(0x42);
             lcd_send_string(" LOAD");
             lcd_set_pos(0x12);
             lcd_send_string("ERROR");
             lcd_set_pos(0x52);
             lcd_send_string("     ");
            break;
        case 3:
            lcd_clear();
            lcd_set_pos(0x46);
            lcd_send_string("BREAK");
            lcd_set_pos(0x52);
            lcd_send_string("POWER");

            lcd_set_pos(0x5C);
            lcd_send_string("%");
            
            break;         
    }     
}


/**
 * This routine is used for update display of frequency, PWM Level (Power), V1 and V2 (especially for displaying LCD 2)
 *
 * @param cmd -> set the update mode:
 *              -cmd = 'd' : Default display for initial display for LCD 1 display
 *                          (FREQ 00.0, BLT 0000Vp-p, DRIVE 000V, POWER 20%)
 *              -cmd = 'v' : updating V1 and V2
 *              -cmd = 'f' : updating frequency
 *              -cmd = 'p' : updating PWM level (POWER %)
 */

void lcd_update(char cmd)
{
    
    switch (cmd)
    {
        case 'v':
            
            
            diff=fabs(v2-last_v2);         //variable diff is used to store the difference of current reading and previous reading 
            
            if (diff>10)                    // the value of V2 will be updated when difference of the reading is big enough. the threshold value can be change
            {
            lcd_set_pos(0x48);
                if (v2>999.9){
         
                    lcd_send_int((int)v2);
                }
                else if (v2>99.9){
                    lcd_send_string(" ");
                    lcd_send_int((int)v2);
                }
                else if (v2>9.9){
                    lcd_send_string("  ");
                    lcd_send_int((int)v2); 
                }
                else{
                    lcd_send_string("    ");
                    lcd_send_int((int)v2);
                } 
                last_v2=v2;
            }
            
            
            
            diff=fabs(v1-last_v1);              //variable diff is used to store the difference of current reading and previous reading 
            if (diff>0.1)                       // the value of V1 will be updated when difference of the reading is big enough. the threshold value can be change
            {
                lcd_set_pos(0x19);          

                if (v1>9.9)
                {
                    lcd_send_string(" ");
                    lcd_send_int((int)v1);
                }
                else if (v1>99.9) 
                {

                    lcd_send_int((int)v1);
                }
                else
                {
                    lcd_send_string("  ");
                    lcd_send_int((int)v1);
                } 
                last_v1=v1;
            }
             
            
            break;
        
        case 'f':
            
          
              diff=fabs(last_frequency-frequency);          //variable diff is used to store the difference of current reading and previous reading 
            
            if (diff>0.05)                                  // the value of frequency will be updated when difference of the reading is big enough. the threshold value can be change
            {
              lcd_set_pos(0x08);
              lcd_send_float1(frequency);
              last_frequency=frequency;
         
             } 
             
            break;     
            
        case 'p':
            lcd_set_pos(0x59);
            
            if (pwm_lvl>9){
                lcd_send_string(" ");
                lcd_send_int(pwm_lvl);
            }
            else if (pwm_lvl>99){
        
                lcd_send_int(pwm_lvl);
            }
            else
            {
                lcd_send_string("  ");
                lcd_send_int(pwm_lvl);
            } 
            
            break;
         
        case 'd':
            
            lcd_set_pos(0x08);
            lcd_send_string("00.0");
            lcd_set_pos(0x48);
            lcd_send_string("0000");
            lcd_set_pos(0x18);
            lcd_send_string(" 000");
            
            
            
            lcd_set_pos(0x59);
            if (pwm_lvl>9){
                lcd_send_string(" ");
                lcd_send_int(pwm_lvl);
            }
            else if (pwm_lvl>99){
        
                lcd_send_int(pwm_lvl);
            }
            else{
                lcd_send_string("  ");
                lcd_send_int(pwm_lvl);
            } 
            
            break;
        
    }           
}


/**
 * This routine is used for read V1 and V2 via ADC module 
 * To read the voltage with ADC, the ADC channel should be selected first. Refer to PIC16(L)F1938/9 data sheet for channel information
 * Channel selection is controlled using CHS<4:0> register:
 *          - V1 -> RB5 Channel: AN13 (register : CHS0=1,CHS1=0,CHS2=1,CHS3=1,CHS4=0)
 *          - V2 -> RB1 Channel: AN10 (register : CHS0=0,CHS1=1,CHS2=0,CHS3=1,CHS4=0)
 * 
 * ADC Operation:
 *          -Select Channel
 *          -Wait for acquisition/ reading (delay 10 microseconds)
 *          -Set register GO=1 to start conversion to digital value
 *          -Wait the conversion until GO is cleared (GO=0 -> conversion is finished)
 *          -Read ADC result 
 * 
 * Refer to init_setting() routine for ADC port configuration
 */
void read_volt(void)
{
    // read V1 ( RB5 Channel: AN13 (register : CHS0=1,CHS1=0,CHS2=1,CHS3=1,CHS4=0))
        CHS0=1;
        CHS1=0;
        CHS2=1;
        CHS3=1;
    __delay_us(10);    // Reading 
    GO=1;              // Starting conversion
    while(GO==1);      // Waiting for the conversion 
    
    // process of transfer the conversion result from the PIC register to variable
    adcbuff=0;
    adcbuff=ADRESH;                 // get the MSB 
    adcbuff=adcbuff<<8;             // shifting bits to prepare the LSB
    adcbuff=adcbuff|ADRESL;         // get the LSB
        
    v1=adcbuff;
    v1 = (v1*5/1023)*38;            // calculate V1
    
   // read V2 ( RB1 Channel: AN10 (register : CHS0=0,CHS1=1,CHS2=0,CHS3=1,CHS4=0))
        CHS0=0;
        CHS1=1;
        CHS2=0;
        CHS3=1;
    __delay_us(10);   // Reading
    GO=1;             // Starting conversion  
    while(GO==1);     // Waiting for the conversion  
    
     // process of transfer the conversion result from the PIC register to variable
    adcbuff=0;
    adcbuff=ADRESH;             // get the MSB 
    adcbuff=adcbuff<<8;         // shifting bits to prepare the LSB
    adcbuff=adcbuff|ADRESL;     // get the LSB
    
    v2=adcbuff;
    v2=((v2*5/1023)*1298)+285;  // calculate V2
      
}

/**
 * This routine is for frequency counting. 
 * CCP1 (pin RC2) as capture module is used for this operation
 * Capture module will get the duration between two rising edge of digital signal for frequency counting
 * Timer1 is used for measure the duration. 
 * Because there is no external oscillator, the duration is not accurate. 
 * duration is calculated by comparing with the actual measurement 
 * Count from capture operation can be acquired by reading CCPR1H & CCPR1L register
 * 
 *  duration = count * val 
 *  val= measured period / count
 *  frequency = 1000/ duration (in KHz)
 * 
 *  ******** For Generator 27 KHZ******
 *  measured period =36.6 microsecond
 *  Capture module count = 223
 *  val= 0.164
 * 
 * ******** For Generator 20 KHZ******
 * measured period =50.3 microsecond
 * Capture module count = 331
 * val= 0.152
 */
void freq_count(void)
{ 
    //Process to get the value of counting from PIC register 
     period=CCPR1H<<8;                  // get the 8 MSB(Most significant bits) and shifting the bits
     period|=CCPR1L;                    // get LSB (Least significant bits) 
     
    if (period!=0)                      
    {
      frequency=1000/(period*0.164);   // calculate frequency
    }
}

/**
 * This routine is used to enable or disable external interrupt for controlling PWM level.
 *  
 * @param state -> -state = true : enable external interrupt (Up & Down button function can be used) 
 *                 -state = false : disable external interrupt (Up & Down button function cannot be used)
 */                
void interrupt_enable(bool state)
{
    if (state)
    {
          INTE    =1; // INT (external interrupt RB0) enable 
          
    }
    else
    {        
          INTE    =0; // INT (external interrupt RB0) disable
                  
    }
}

/**
 * This routine is for starting up operation
 *      -I/O : VCO and Relay 1 pin
 *      -Turn on CCP1 module for frequency counter
 * 
 */
void start_up(void)
{
    VCO=1;                          // VCO on
    __delay_ms(1000);               // delay 1000 ms
    relay1=1;                       // relay1 on
    __delay_ms(1000);               /// delay 1000 ms
    VCO=0;                          // VCO off
    __delay_ms(1000);               // delay 1000 ms
    
    start_flag=true;                // start flag is raised to tell the system the start up process is done
    CCP1CON=0b00000101;            // Start Capture Module (CCP1)
    
}

/**
 * This routine is for break / pause:
 *      -relay 1 off
 *      -pwm control enable (pwm flag - true & interrupt enable)
 *      -pause flag - true 
 *      -Turn off CCP1 module
 *      -freq,V1,V@ -> 0
 * 
 */
void shut_down(void)
{
          relay1=0;                 // relay 1 off
          interrupt_enable(true);   // Enable interrupt to change power percentage (pwm)
          pwmcon_flag=true;         // pwm control flag raised (pwm control is enabled)
          pause=true;               // pause flag is raised to tell the system is on break or pause
          CCP1CON=0b00000000;       // Stop Capture Module (CCP1)
          
          
          // set the variable to default value
          period=0;
          v1=0;
          last_v1=1;
          v2=0;
          last_v2=1;
}

/**
 * This routine is used for pwm control.
 * PWM resolution : 10bit
 * Refer to init_setting() routine for PWm configuration
 *               
 * PWM duty cycle is controlled by variable pwm_level and is multiplied by 10 to meet approx. 10 bit. 
 * max pwm_level :100 -> 100 x10 = 1000 (approx ~10235)
 *                          0 = 0 volt
 *                          1023 = ~5 volt
 * 
 * To set duty cycle, 10 bit value of duty cycle should be applied to CCPR2L, DC2B1,DC2B0:
 *                                   - 2 Least Significant Bits on DC2B1 & DC2B0
 *                                   - 8 Most Significant Bits on CCPR2L
 *  10 bits duty cycle on the PIC register can be seen below (Example PWM duty cycle  80% : approx 818)
 *                                 | 1 1 0 0 1 1 0 0 |   1   |   0   |  
 *                                 |      CCPR2L     | DC2B1 | DC2B0 |     
 * 
 */
void pwm_con(void)
{
    if (pwmcon_flag)
    {        
        
        if (last_pwm_lvl!=pwm_lvl)    // checking if the pwm_lvl is changed
        {
            lcd_update('p');          // update power percentage   
            dutycycle=(pwm_lvl*10);   // set pwm duty cycle based on the power percentage  

            DC2B0=dutycycle & 0x01;   // 1st LSB
            DC2B1=dutycycle & 0x02;   // 2nd LSB
            CCPR2L=dutycycle>>2&0xFF; // shifting 2 bits for other 8 MSBs

            last_pwm_lvl=pwm_lvl;     // storing the pwm_lvl value for next loop
            read_volt();              // reading V1 and V2   
            
            if (v1>100 || v2>4000)    // checking if V1 or V2 are over than threshold     
            {
                buzz=1;               // buzzer on  
            }
            else
            {
                buzz=0;              // buzzer off
            }
        }
   }

}



/**
 * This routine is used during operation to control relay 2 based on  the value of V1
 * The static value of V3 and V4 are used for conditional requirements
 * 
 * **h_voltage_flag is F2 flag on flow chart
 */
void power_con(void)
{
    
    if (h_voltage_flag)
    {
        
        if (v1<v3)
        {
          h_voltage_flag=false;  
          relay2=0;
        }
        
    }
    else
    {
        if (v1>v4)
        {
          h_voltage_flag=true;  
          relay2=1;
        }
        
    }    
}

/**
 * This routine is to check if V1 or V2 are overload
 * When overload is detected, it will raise e_overvolt flag (flag for error due to overload)
 * When this flag is raised, it will be passed to error handling
 */
void check_overload(void)
{
    if (v1>120||v2>4500)   
    {
        e_overvolt=true;
    }
}

/**
 * This routine is used as the main process :
 *  - Start from displaying LCD 1 when system is turned on  
 *  - Wait the ss_sw (start/stop switch) and test button input signal
 *  - start up operation
 *  - Updating Freq., V1, V2
 *  - Error Checking ( LOck on error, overload error) 
 */
void process_loop(void){
    
    if (pause)
    {
        pause=false;
        lcd_show(0);
        lcd_update('d');
    }    
    
    while(1)
    {    
        if (ss_sw || test_but)
      {
         if(test_but)            
            {
                if(!pwmcon_flag)
                 {
                   interrupt_enable(true);
                   pwmcon_flag=true;
                 }
            }
        else
          {
                if(pwmcon_flag)
                {
                  interrupt_enable(false);
                  pwmcon_flag=false;
                }
          }
        }
      else 
      {
         
          shut_down();     // pause/break sequences
          
          break;
      } 
    
        if (!start_flag)
        {
            start_up();         // Starting up sequence (VCO and Relay 1)
        }
    
        if (!lock_on)
        {
            e_lock=true; // Raised e_lock flag and will be passed to error handling
            break;
        }
    
        pwm_con();             // PWM Control                
        freq_count();          // Frequency Counting
        lcd_update('f');       // update for LCD 2 
        read_volt();           // Read V1 and V2 
        lcd_update('v');       // update for LCD 2
        power_con();           // Power Control (Relay 2) 

        check_overload();

    
        if (e_overvolt) //when e_overvolt raised, it will be passed to error handling
        {
            break;  
        }
   }
}

/**
 * This routine is for the buzzer operation
 */
void buzz_op(void)
{
     buzz=1;            // buzzer on
     __delay_ms(1000);  // delay 1000 ms
     buzz=0;            // buzzer off
     
}

/**
 * This routine is used for error handling
 * When e_lock or e_overvolt are raised (value = true), these value are passed to this routine and error handling sequences are executed respectively.
 * -Reset button has to be pressed to reset the system and go back to main routine 
 */

void error_handling(void)
{
    e_led=1;
    
    if (e_lock)            // if lock on error is detected,  show stall error display with 1x buzzer
    {
        lcd_show(1);       // stall error display     
        buzz_op();          // buzz operation
       
        
    }
    if(e_overvolt)       // if over load error is detected,  show overload display with 3x buzzer
    {   
         lcd_show(2);    // overload display   
         
         for (int i=0;i<3;i++)
         {
             buzz_op();     // buzz operation
         }
    }
    
    relay1=0;           // relay 1 off
    
    while(e_lock||e_overvolt)       // while error signal detected, wait for reset to be pressed
    {
        if (reset)                 // if reset is pressed then:
        {
            e_lock= false;          // error flag is return to false
            e_overvolt=false;       // error flag is return to false
            interrupt_enable(true); // enable interrupt for pwm operation
            pwmcon_flag=true;       // enable  pwm operation    
            e_led=0;                // error led off
            pause=false;            // pause flag is false because the system is not on pause 
        }    
    }
}


/**
 * This routine contains the sequences for maintenance operation
 */
void maintenance(void){
    
    if (pause){                 // IF system is paused, displaying the main display for maintenance
        lcd_show(0);        
        lcd_update('d');        // update with default value 
    }
    relay1=0;                   // relay 1 off
    relay2=0;                   // relay 2 off
    VCO=0;                      // VCO off
    buzz=0;                     // buzzer off
    pwm_lvl=10;                 // default pwm level( duty cycle))
    CCP1CON=0b00000101;         // start capture module for frequency counting 
    while(1){    
        
        if (ss_sw){              //  if ss_sw is on then relay1 is on   
                     
            relay1=1;
            
        }
        else{                   //  if ss_sw is off then relay1 is off 
                    
            relay1=0;

        }
        
         if (test_but){          // if test button pressed
            
            if (!f2){            // if the f2 flag false
                VCO=1;           // VCO on
                f2=true;         // set f2 flag to true
                buzz=1;          // buzzer on
                while(test_but); // wait for button debounce 
            }
            else{                // if the f2 flag true   
                VCO=0;           // VCO off    
                f2=false;       // clear f2 flag to false 
                buzz=0;         // buzzer off
                while(test_but); // wait for button debounce
            }
        }
        
        pwm_con();              // pwm control process based on power percentage
        freq_count();           // frequency counter
        lcd_update('f');        // update freq. display
        read_volt();            // read V1 and V2
        lcd_update('v');        // update V1 and V2 display
        
        if (reset){             // if reset is pressed again back to control mode        
            lcd_show(0);        // main display    
            lcd_update('d');    // update with default value    
            e_led=0;            // error led off
            CCP1CON=0b00000000; // turn off capture module    
            break;              // break the loop
        }
        
    }
      
}


/**
 * ***************************************************************************
 * THIS SECTION CONTAINS THE INTERRUPT OPERATION AND MAIN ROUTINE 
 * **************************************************************************
 */


/**
 * This interrupt routine handles the external interrupt RB0 (up & down button interrupt and CCP1 capture mode interrupt for frequency counter
 * Capture mode will raised interrupt flag whenever rising edge of input signal is detected  
 * 
 */
void __interrupt() ISR()
{
  if (INTF){      // detect the INT (External interrupt of Pin RB0)
      
    if (up_but)   // increasing pwm_level value
        {
            temp=0;
            j=0;
            while (down_but)  // wait until the button released (not pressed)
            {
                j++;                    /// counting 
                
                if (j==20000)
                {
                    temp++;             // duration of pressed button
                    j=0;
                }
            }
            if (temp<2)
            {
                if(pwm_lvl<100)
                    {
                         pwm_lvl++;            // short pressed
                    }    
                }
            else
            {
                 if(pwm_lvl<100)
                    {
                         pwm_lvl+=5;          // long pressed

                    }
            }
        }
    else            // decreasing pwm_level value
        {
           temp=0;
            j=0;
            while (down_but)  // wait until the button released (not pressed)
            {
                j++;                    /// counting
                
                if (j==20000)
                {
                    temp++;              // duration of pressed button
                    j=0;
                }
            }
            if (temp<2)
            {
                if(pwm_lvl>0)
                 {
                        pwm_lvl--;         // short pressed

                 }   
            }
            else
            {
                if(pwm_lvl>0)
                 {
                    pwm_lvl-=5;            // long pressed
                 } 
            } 
        }     
 
    INTF = 0;         // Clear INT flag to wait the next interrupt 
     
    }    
   if (CCP1IF)       // Detect rising edge from signal for frequency counter
    {
        TMR1=0;      // Clear the register for next counting
        CCP1IF=0;    // Clear the flag to start next counting process    
    }  
}


/**
 * Main Routine  
 */
void main(void) {
    init_setting();     // initial configuration
    lcd_init();         // LCD configuration
    lcd_clear();        // Clearing LCD Display 
    
    
    // Initial condition for flag and interrupt
    interrupt_enable(true); 
    pwmcon_flag=true;
    pause=false;
    start_flag=false;
    pwm_lvl=20;
    


   //main loop    
    while(1)
    {
        if (!pause)                 // check if the system is on a break or start up 
        {
            //Displaying LCD 1
            lcd_show(0);            // main display 
            lcd_update('d');        // set the default value
        }
        else
        {
            //Displaying LCD 5          
            lcd_show(3);            //set break/pause display
            lcd_update('p');        // update power percentage
        }
        
        while(1)
        {
            if (reset)     // Maintenance Mode ()
            {
                e_led=1;        // error led on
                while(reset);  // wait until reset button released
                
                maintenance();  // execute maintenance mode
            
            }
            
            
            pwm_con();
            if (ss_sw ||test_but) // waiting start/stop switch or test button before execute main process
            {
                            
                break;              // break the loop when ss_swith or test_but input detected and passing to main process loop
            }
            
        }
             
        process_loop(); //main process
        
        start_flag=false;  // start_flag was changed to false whenever pause/break or error detected 
        
        if (e_lock||e_overvolt)  // raised error flag execute error handling routine 
        {
           error_handling();    // execute error handling        
       
        }
    }
}


