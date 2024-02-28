#include <8052.h>


			// Define the common cathode seven-segment display connections
#define SEG_A  P2_0
#define SEG_B  P2_1
#define SEG_C  P2_2
#define SEG_D  P2_3
#define SEG_E  P2_4
#define SEG_F  P2_5
#define SEG_G  P2_6
#define SEG_DP P2_7

		// Defne the display select lines
#define DISP1  P1_1
#define DISP2  P1_2
#define DISP3  P1_3
#define DISP4  P1_4

#define SDA P3_7
#define SCL P3_6

#define nop __asm__("nop")





volatile unsigned char displayData[] = {
    0xC0, // '0'
    0xF9, // '1'
    0xA4, // '2'
    0xB0, // '3'
    0x99, // '4'
    0x92, // '5'
    0x82, // '6'
    0xF8, // '7'
    0x80, // '8'
    0x90,  // '9'
    0xBF //'-' 11

};

 #define BUTTON1 P3_0
 #define BUTTON2 P3_1
 #define BUTTON3 P0_2

unsigned char lastButtonStat = 1;
unsigned char buttonStat = 1;

volatile unsigned char stat = 1;
volatile  unsigned int delayTime = 2000;
volatile unsigned char currentDigit = 0;
unsigned long dispalay_data = 0;
unsigned int longPressTime = 0;
unsigned int acceleration = 1;
unsigned long interrupt_counter = 0;
volatile void displayDigit(unsigned char digit) {
    P2 = displayData[digit];
}

void saving(void);
void delay(unsigned int count) {
    while (count--);
}

void I2C_Start(void) {
    SDA = 1;
    nop;
    SCL = 1;
    nop;
    SDA = 0;
    nop;
    SCL = 0;
}

void I2C_Stop(void) {
    SDA = 0;
    nop;
    SCL = 1;
    nop;
    SDA = 1;
    nop;
}
void acknowledge(void){
    SCL = 1;
    nop;
    SCL = 0;
}
//write byte of data from master to slave
void I2C_DataWrite(unsigned char Data)//0xA0 1010 0000--> 0100 0000
{
unsigned char i;
	//
for(i=0;i<8;i++)
{
	SDA= (Data & 0x80)?1:0;
    Data=Data<<1;
    nop;
    SCL=1;
	nop;
    SCL=0;
    nop;
}
SDA=1;
SCL=1;
nop;
while(SDA==1); //waiting until SDA=0 this should be set by the slave 
SCL=0;
nop;
}
unsigned char I2C_DataRead(void)///1010 0000     1|0=1...101
{
    unsigned char reead = 0;
    SDA = 1;
    for(int i=0;i<8;i++){
       reead = reead << 1;
       SCL = 1;
       nop;
       nop;
       if(SDA ==1 ){
        reead++;
       }
       SCL = 0;
    }
    SDA = 0;
    return reead;
}




void timer0Init(void) {
    // Set Timer 0 in 16-bit mode
    TMOD |= 0x01; 
    // Set the initial value for Timer 1 for multiplexing 
    TH0 = 0xED;  // You may need to adjust this value based on your requirements
    TL0 = 0xFF;
    ET0 = 1;		// Enable Timer 0 overflow interrupt
    TR0 = 1;		// Start Timer 0
}
volatile void timer1Init(void) {
    // Set Timer 0 in 16-bit mode
    TMOD |= 0x10; 
    // Set the initial value for Timer 1 for multiplexing 
    TH1 = 0xFC;  // You may need to adjust this value based on your requirements
    TL1 = 0x17;
    ET1 = 1;		// Enable Timer 0 overflow interrupt
    TR1 = 1;		// Start Timer 0
}
void int0Init(void) {
    // Configure INT0 for falling edge trigger
    IT0 = 1;
    // Enable external interrupt 0
    EX0 = 1;
    // Enable global interrupts
    EA = 1;
}
void Timer0_ISR(void) __interrupt (1)
{
	//P1_0 = ! P1_0;
	TH0 = 0xED;  // You may need to adjust this value based on your requirements
    TL0 = 0xFF;
	// Increment the digit counter
    currentDigit++;

    // Reset the digit counter if it exceeds the number of digits
    if (currentDigit > 3) {
        currentDigit = 0;
    }
	P2 = 0xff;
	if(P1_0==0){
	dispalay_data = interrupt_counter;
	}else{
	    dispalay_data = delayTime;	
    }
    
    // Update the display based on the current digit
    switch (currentDigit) {
        case 0:
            DISP1 = 1;
            DISP2 = DISP3 = DISP4 = 0;
            displayDigit(dispalay_data%10);  // Change this value based on the desired number to display
            break;
        case 1:
            DISP2 = 1;
            DISP1 = DISP3 = DISP4 = 0;
            displayDigit((dispalay_data/10)%10);  // Change this value based on the desired number to display
            break;
        case 2:
            DISP3 = 1;
            DISP1 = DISP2 = DISP4 = 0;
            displayDigit((dispalay_data/100)%10);  // Change this value based on the desired number to display
            break;
        case 3:
            DISP4 = 1;
            DISP1 = DISP2 = DISP3 = 0;
            displayDigit((dispalay_data/1000)%10);  // Change this value based on the desired number to display
            break;
    }

}


volatile void delay_ms(int ms) {
    unsigned int i, j;
    for (i = 0; i < ms; i++){
		for (j = 0; j < 112; j++){

		}
	}
        
}


void int_ISR(void) __interrupt (0)
{
	P1_0 = 0;
	// Set the values for Timer 1
	timer1Init();
	
}
void Timer1_ISR(void) __interrupt (3){
	TH1 = 0xFC;  // You may need to adjust this value based on your requirements
    TL1 = 0x17;
	interrupt_counter++;
	if(interrupt_counter >= delayTime){
		P1_0 =1;
		TR1 = 0;
		interrupt_counter = 0;
	}
}


void main(void)
{ 
   
    // unsigned char x;
    // I2C_Start();
	// I2C_DataWrite(0xA0); //1010 0000
	// I2C_DataWrite(0x00); //register address or memory address
	// I2C_DataWrite(36); 
    // I2C_Stop();
    // delay(500);
    // 	//reading Data from a Slave Device
    // I2C_Start();
    // I2C_DataWrite(0xA0); //1010 0000
    // I2C_DataWrite(10); //register address or memory address
    // I2C_Start();
    // I2C_DataWrite(0xA1); //1010 0001 read
    // x=I2C_DataRead();
    // delayTime = x;
    // I2C_Stop();


    // I2C_Start(); 
    // I2C_DataWrite(0xA0);
    // I2C_DataWrite(0x00);
    // I2C_DataWrite(0x01);
    // I2C_DataWrite(0x01);
    // I2C_Stop();
    unsigned char rx_first_byte,rx_second_byte;
    I2C_Start();
    I2C_DataWrite(0xA0);
    I2C_DataWrite(0x00);
    I2C_DataWrite(0x01);
    I2C_Start();
    I2C_DataWrite(0xA1);
    rx_first_byte = I2C_DataRead();
    acknowledge();
    rx_second_byte = I2C_DataRead();
    acknowledge();
    I2C_Stop();
    
    // I2C_Start();
    // I2C_DataWrite(0xA0);
    // I2C_DataWrite(0x00);
    // I2C_DataWrite(0x02);
    // I2C_Start();
    // I2C_DataWrite(0xA1);
    // rx_second_byte = I2C_DataRead();
    // acknowledge();
    // I2C_Stop();

    delayTime = (rx_first_byte << 8) | rx_second_byte;
   
   // Initialize Timer 0 for multiplexing 7-segment display
    timer0Init();
    delay_ms(1000);
    // Initialize INT0 for external interrupt
    int0Init();
    
    while (1)
    {
		// TH1  = delayTime >> 8 ;
		// TL1  = delayTime;	
	if (BUTTON1 == 0 ) {  // Button is pressed
		if(delayTime > 9999){
			delayTime =0;
		}
		else{
			delayTime +=1;
		}
		//P1_0 = 0;
		delay_ms(50);  // Debouncing delay
		while (BUTTON1 == 0) {
			if(longPressTime > 5000-acceleration){
				longPressTime = 0;
				
				if(delayTime > 9999){
					delayTime =1 ;
				}
				else{
					delayTime +=1;
				}
				if(acceleration < 4500){
				acceleration = 30 +acceleration;
				}
			}
				longPressTime++;
		}  // Wait for the button to be released
		
	}
	else{
		//P1_0 = 1;
		longPressTime = 0;
		acceleration =  0;
	}
	if (BUTTON2 == 0) {  // Button is pressed
		if(delayTime <= 1){
			delayTime = 9999;
		}else{
			delayTime-=1;
		}
		delay_ms(50);  // Debouncing delay
		while (BUTTON2 == 0 ) {
			if(longPressTime > 5000-acceleration){
				longPressTime = 0;
				if(delayTime < 1){
					delayTime = 9999;
				}else{
					delayTime-=1;
				}
				if(acceleration < 4500){
				acceleration = 30 +acceleration;
				}
			}
				longPressTime++;
		}  // Wait for the button to be released
		
	}
	else{
		//P1_0 = 1;
		longPressTime = 0;
		acceleration =  0;
	}

    buttonStat = BUTTON3;
    if(lastButtonStat != buttonStat){
        TR0  = 0;
        unsigned char txfirstByte,txsecondByte;
        txsecondByte = delayTime ;
        txfirstByte = delayTime >> 8; 

        if(buttonStat == 1){
        I2C_Start(); 
        I2C_DataWrite(0xA0);
        I2C_DataWrite(0x00);
        I2C_DataWrite(0x01);
        I2C_DataWrite(txfirstByte);
        I2C_DataWrite(txsecondByte);
        I2C_Stop();
        saving();
        TR0 = 1;
        }else{
           // P1_5 = !P1_5;
            P2 = displayData[10];
            DISP1=DISP2=DISP3=DISP4 = 1;
        }
        
    }
    lastButtonStat = buttonStat;
	
	
	//displayDigit(7);
    }
}

void saving(void){
    for(int i=0;i<7;i++){
        for(int j=3;j>=0;j--){
            switch(j)
            {
                case 0:
                    DISP1 = 1;
                    DISP2 = DISP3 = DISP4 = 0;
                  //  displayDigit(dispalay_data%10);  // Change this value based on the desired number to display
                    break;
                case 1:
                    DISP2 = 1;
                    DISP1 = DISP3 = DISP4 = 0;
                    //displayDigit((dispalay_data/10)%10);  // Change this value based on the desired number to display
                    break;
                case 2:
                    DISP3 = 1;
                    DISP1 = DISP2 = DISP4 = 0;
                    //displayDigit((dispalay_data/100)%10);  // Change this value based on the desired number to display
                    break;
                case 3:
                    DISP4 = 1;
                    DISP1 = DISP2 = DISP3 = 0;
                    //displayDigit((dispalay_data/1000)%10);  // Change this value based on the desired number to display
                    break;
            }
            delay_ms(70);
        }
    }

}