;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module monostable
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _Timer1_ISR
	.globl _int_ISR
	.globl _delay_ms
	.globl _Timer0_ISR
	.globl _int0Init
	.globl _timer1Init
	.globl _timer0Init
	.globl _I2C_DataRead
	.globl _I2C_DataWrite
	.globl _acknowledge
	.globl _I2C_Stop
	.globl _I2C_Start
	.globl _delay
	.globl _displayDigit
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _interrupt_counter
	.globl _acceleration
	.globl _longPressTime
	.globl _dispalay_data
	.globl _currentDigit
	.globl _delayTime
	.globl _stat
	.globl _buttonStat
	.globl _lastButtonStat
	.globl _displayData
	.globl _saving
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_displayData::
	.ds 11
_lastButtonStat::
	.ds 1
_buttonStat::
	.ds 1
_stat::
	.ds 1
_delayTime::
	.ds 2
_currentDigit::
	.ds 1
_dispalay_data::
	.ds 4
_longPressTime::
	.ds 2
_acceleration::
	.ds 2
_interrupt_counter::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int_ISR
	.ds	5
	ljmp	_Timer0_ISR
	.ds	5
	reti
	.ds	7
	ljmp	_Timer1_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	monostable.c:29: volatile unsigned char displayData[] = {
	mov	_displayData,#0xc0
	mov	(_displayData + 0x0001),#0xf9
	mov	(_displayData + 0x0002),#0xa4
	mov	(_displayData + 0x0003),#0xb0
	mov	(_displayData + 0x0004),#0x99
	mov	(_displayData + 0x0005),#0x92
	mov	(_displayData + 0x0006),#0x82
	mov	(_displayData + 0x0007),#0xf8
	mov	(_displayData + 0x0008),#0x80
	mov	(_displayData + 0x0009),#0x90
	mov	(_displayData + 0x000a),#0xbf
;	monostable.c:48: unsigned char lastButtonStat = 1;
	mov	_lastButtonStat,#0x01
;	monostable.c:49: unsigned char buttonStat = 1;
	mov	_buttonStat,#0x01
;	monostable.c:51: volatile unsigned char stat = 1;
	mov	_stat,#0x01
;	monostable.c:52: volatile  unsigned int delayTime = 2000;
	mov	_delayTime,#0xd0
	mov	(_delayTime + 1),#0x07
;	monostable.c:53: volatile unsigned char currentDigit = 0;
	mov	_currentDigit,#0x00
;	monostable.c:54: unsigned long dispalay_data = 0;
	clr	a
	mov	_dispalay_data,a
	mov	(_dispalay_data + 1),a
	mov	(_dispalay_data + 2),a
	mov	(_dispalay_data + 3),a
;	monostable.c:55: unsigned int longPressTime = 0;
	mov	_longPressTime,a
	mov	(_longPressTime + 1),a
;	monostable.c:56: unsigned int acceleration = 1;
	mov	_acceleration,#0x01
	mov	(_acceleration + 1),a
;	monostable.c:57: unsigned long interrupt_counter = 0;
	mov	_interrupt_counter,a
	mov	(_interrupt_counter + 1),a
	mov	(_interrupt_counter + 2),a
	mov	(_interrupt_counter + 3),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'displayDigit'
;------------------------------------------------------------
;digit                     Allocated to registers r7 
;------------------------------------------------------------
;	monostable.c:58: volatile void displayDigit(unsigned char digit) {
;	-----------------------------------------
;	 function displayDigit
;	-----------------------------------------
_displayDigit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	monostable.c:59: P2 = displayData[digit];
	mov	a,dpl
	add	a, #_displayData
	mov	r1,a
	mov	_P2,@r1
;	monostable.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;count                     Allocated to registers 
;------------------------------------------------------------
;	monostable.c:63: void delay(unsigned int count) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6, dpl
	mov	r7, dph
;	monostable.c:64: while (count--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00113$
	dec	r7
00113$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	monostable.c:65: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Start'
;------------------------------------------------------------
;	monostable.c:67: void I2C_Start(void) {
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
;	monostable.c:68: SDA = 1;
;	assignBit
	setb	_P3_7
;	monostable.c:69: nop;
	nop
;	monostable.c:70: SCL = 1;
;	assignBit
	setb	_P3_6
;	monostable.c:71: nop;
	nop
;	monostable.c:72: SDA = 0;
;	assignBit
	clr	_P3_7
;	monostable.c:73: nop;
	nop
;	monostable.c:74: SCL = 0;
;	assignBit
	clr	_P3_6
;	monostable.c:75: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Stop'
;------------------------------------------------------------
;	monostable.c:77: void I2C_Stop(void) {
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
;	monostable.c:78: SDA = 0;
;	assignBit
	clr	_P3_7
;	monostable.c:79: nop;
	nop
;	monostable.c:80: SCL = 1;
;	assignBit
	setb	_P3_6
;	monostable.c:81: nop;
	nop
;	monostable.c:82: SDA = 1;
;	assignBit
	setb	_P3_7
;	monostable.c:83: nop;
	nop
;	monostable.c:84: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'acknowledge'
;------------------------------------------------------------
;	monostable.c:85: void acknowledge(void){
;	-----------------------------------------
;	 function acknowledge
;	-----------------------------------------
_acknowledge:
;	monostable.c:86: SCL = 1;
;	assignBit
	setb	_P3_6
;	monostable.c:87: nop;
	nop
;	monostable.c:88: SCL = 0;
;	assignBit
	clr	_P3_6
;	monostable.c:89: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_DataWrite'
;------------------------------------------------------------
;Data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	monostable.c:91: void I2C_DataWrite(unsigned char Data)//0xA0 1010 0000--> 0100 0000
;	-----------------------------------------
;	 function I2C_DataWrite
;	-----------------------------------------
_I2C_DataWrite:
	mov	r7, dpl
;	monostable.c:95: for(i=0;i<8;i++)
	mov	r6,#0x00
00105$:
;	monostable.c:97: SDA= (Data & 0x80)?1:0;
	mov	ar5,r7
	anl	ar5,#0x80
;	assignBit
	mov	a,r5
	add	a,#0xff
	mov	_P3_7,c
;	monostable.c:98: Data=Data<<1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	monostable.c:99: nop;
	nop
;	monostable.c:100: SCL=1;
;	assignBit
	setb	_P3_6
;	monostable.c:101: nop;
	nop
;	monostable.c:102: SCL=0;
;	assignBit
	clr	_P3_6
;	monostable.c:103: nop;
	nop
;	monostable.c:95: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00134$
00134$:
	jc	00105$
;	monostable.c:105: SDA=1;
;	assignBit
	setb	_P3_7
;	monostable.c:106: SCL=1;
;	assignBit
	setb	_P3_6
;	monostable.c:107: nop;
	nop
;	monostable.c:108: while(SDA==1); //waiting until SDA=0 this should be set by the slave 
00102$:
	jb	_P3_7,00102$
;	monostable.c:109: SCL=0;
;	assignBit
	clr	_P3_6
;	monostable.c:110: nop;
	nop
;	monostable.c:111: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_DataRead'
;------------------------------------------------------------
;reead                     Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	monostable.c:112: unsigned char I2C_DataRead(void)///1010 0000     1|0=1...101
;	-----------------------------------------
;	 function I2C_DataRead
;	-----------------------------------------
_I2C_DataRead:
;	monostable.c:114: unsigned char reead = 0;
	mov	r7,#0x00
;	monostable.c:115: SDA = 1;
;	assignBit
	setb	_P3_7
;	monostable.c:116: for(int i=0;i<8;i++){
	mov	r6,#0x00
00105$:
	cjne	r6,#0x08,00128$
00128$:
	jnc	00103$
;	monostable.c:117: reead = reead << 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	monostable.c:118: SCL = 1;
;	assignBit
	setb	_P3_6
;	monostable.c:119: nop;
	nop
;	monostable.c:120: nop;
	nop
;	monostable.c:121: if(SDA ==1 ){
	jnb	_P3_7,00102$
;	monostable.c:122: reead++;
	inc	r7
00102$:
;	monostable.c:124: SCL = 0;
;	assignBit
	clr	_P3_6
;	monostable.c:116: for(int i=0;i<8;i++){
	inc	r6
	sjmp	00105$
00103$:
;	monostable.c:126: SDA = 0;
;	assignBit
	clr	_P3_7
;	monostable.c:127: return reead;
	mov	dpl, r7
;	monostable.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0Init'
;------------------------------------------------------------
;	monostable.c:133: void timer0Init(void) {
;	-----------------------------------------
;	 function timer0Init
;	-----------------------------------------
_timer0Init:
;	monostable.c:135: TMOD |= 0x01; 
	orl	_TMOD,#0x01
;	monostable.c:137: TH0 = 0xED;  // You may need to adjust this value based on your requirements
	mov	_TH0,#0xed
;	monostable.c:138: TL0 = 0xFF;
	mov	_TL0,#0xff
;	monostable.c:139: ET0 = 1;		// Enable Timer 0 overflow interrupt
;	assignBit
	setb	_ET0
;	monostable.c:140: TR0 = 1;		// Start Timer 0
;	assignBit
	setb	_TR0
;	monostable.c:141: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1Init'
;------------------------------------------------------------
;	monostable.c:142: volatile void timer1Init(void) {
;	-----------------------------------------
;	 function timer1Init
;	-----------------------------------------
_timer1Init:
;	monostable.c:144: TMOD |= 0x10; 
	orl	_TMOD,#0x10
;	monostable.c:146: TH1 = 0xFC;  // You may need to adjust this value based on your requirements
	mov	_TH1,#0xfc
;	monostable.c:147: TL1 = 0x17;
	mov	_TL1,#0x17
;	monostable.c:148: ET1 = 1;		// Enable Timer 0 overflow interrupt
;	assignBit
	setb	_ET1
;	monostable.c:149: TR1 = 1;		// Start Timer 0
;	assignBit
	setb	_TR1
;	monostable.c:150: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int0Init'
;------------------------------------------------------------
;	monostable.c:151: void int0Init(void) {
;	-----------------------------------------
;	 function int0Init
;	-----------------------------------------
_int0Init:
;	monostable.c:153: IT0 = 1;
;	assignBit
	setb	_IT0
;	monostable.c:155: EX0 = 1;
;	assignBit
	setb	_EX0
;	monostable.c:157: EA = 1;
;	assignBit
	setb	_EA
;	monostable.c:158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;	monostable.c:159: void Timer0_ISR(void) __interrupt (1)
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	monostable.c:162: TH0 = 0xED;  // You may need to adjust this value based on your requirements
	mov	_TH0,#0xed
;	monostable.c:163: TL0 = 0xFF;
	mov	_TL0,#0xff
;	monostable.c:165: currentDigit++;
	mov	a,_currentDigit
	inc	a
	mov	_currentDigit,a
;	monostable.c:168: if (currentDigit > 3) {
	mov	a,_currentDigit
	add	a,#0xff - 0x03
	jnc	00102$
;	monostable.c:169: currentDigit = 0;
	mov	_currentDigit,#0x00
00102$:
;	monostable.c:171: P2 = 0xff;
	mov	_P2,#0xff
;	monostable.c:172: if(P1_0==0){
	jb	_P1_0,00104$
;	monostable.c:173: dispalay_data = interrupt_counter;
	mov	_dispalay_data,_interrupt_counter
	mov	(_dispalay_data + 1),(_interrupt_counter + 1)
	mov	(_dispalay_data + 2),(_interrupt_counter + 2)
	mov	(_dispalay_data + 3),(_interrupt_counter + 3)
	sjmp	00105$
00104$:
;	monostable.c:175: dispalay_data = delayTime;	
	mov	_dispalay_data,_delayTime
	mov	(_dispalay_data + 1),(_delayTime + 1)
	mov	(_dispalay_data + 2),#0x00
	mov	(_dispalay_data + 3),#0x00
00105$:
;	monostable.c:179: switch (currentDigit) {
	mov	a,_currentDigit
	mov	r7,a
	add	a,#0xff - 0x03
	jnc	00133$
	ljmp	00111$
00133$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00134$
	jmp	@a+dptr
00134$:
	ljmp	00106$
	ljmp	00107$
	ljmp	00108$
	ljmp	00109$
;	monostable.c:180: case 0:
00106$:
;	monostable.c:181: DISP1 = 1;
;	assignBit
	setb	_P1_1
;	monostable.c:182: DISP2 = DISP3 = DISP4 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_3,c
;	assignBit
	mov	c,_P1_3
	mov	_P1_2,c
;	monostable.c:183: displayDigit(dispalay_data%10);  // Change this value based on the desired number to display
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl, _dispalay_data
	mov	dph, (_dispalay_data + 1)
	mov	b, (_dispalay_data + 2)
	mov	a, (_dispalay_data + 3)
	lcall	__modulong
	mov	r4, dpl
	mov	dpl,r4
	lcall	_displayDigit
;	monostable.c:184: break;
	ljmp	00111$
;	monostable.c:185: case 1:
00107$:
;	monostable.c:186: DISP2 = 1;
;	assignBit
	setb	_P1_2
;	monostable.c:187: DISP1 = DISP3 = DISP4 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_3,c
;	assignBit
	mov	c,_P1_3
	mov	_P1_1,c
;	monostable.c:188: displayDigit((dispalay_data/10)%10);  // Change this value based on the desired number to display
	mov	__divulong_PARM_2,#0x0a
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl, _dispalay_data
	mov	dph, (_dispalay_data + 1)
	mov	b, (_dispalay_data + 2)
	mov	a, (_dispalay_data + 3)
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__modulong
	mov	r4, dpl
	mov	dpl,r4
	lcall	_displayDigit
;	monostable.c:189: break;
	ljmp	00111$
;	monostable.c:190: case 2:
00108$:
;	monostable.c:191: DISP3 = 1;
;	assignBit
	setb	_P1_3
;	monostable.c:192: DISP1 = DISP2 = DISP4 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_2,c
;	assignBit
	mov	c,_P1_2
	mov	_P1_1,c
;	monostable.c:193: displayDigit((dispalay_data/100)%10);  // Change this value based on the desired number to display
	mov	__divulong_PARM_2,#0x64
	clr	a
	mov	(__divulong_PARM_2 + 1),a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl, _dispalay_data
	mov	dph, (_dispalay_data + 1)
	mov	b, (_dispalay_data + 2)
	mov	a, (_dispalay_data + 3)
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__modulong
	mov	r4, dpl
	mov	dpl,r4
	lcall	_displayDigit
;	monostable.c:194: break;
;	monostable.c:195: case 3:
	sjmp	00111$
00109$:
;	monostable.c:196: DISP4 = 1;
;	assignBit
	setb	_P1_4
;	monostable.c:197: DISP1 = DISP2 = DISP3 = 0;
;	assignBit
	clr	_P1_3
;	assignBit
	mov	c,_P1_3
	mov	_P1_2,c
;	assignBit
	mov	c,_P1_2
	mov	_P1_1,c
;	monostable.c:198: displayDigit((dispalay_data/1000)%10);  // Change this value based on the desired number to display
	mov	__divulong_PARM_2,#0xe8
	mov	(__divulong_PARM_2 + 1),#0x03
	clr	a
	mov	(__divulong_PARM_2 + 2),a
	mov	(__divulong_PARM_2 + 3),a
	mov	dpl, _dispalay_data
	mov	dph, (_dispalay_data + 1)
	mov	b, (_dispalay_data + 2)
	mov	a, (_dispalay_data + 3)
	lcall	__divulong
	mov	r4, dpl
	mov	r5, dph
	mov	r6, b
	mov	r7, a
	mov	__modulong_PARM_2,#0x0a
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl, r4
	mov	dph, r5
	mov	b, r6
	mov	a, r7
	lcall	__modulong
	mov	r4, dpl
	mov	dpl,r4
	lcall	_displayDigit
;	monostable.c:200: }
00111$:
;	monostable.c:202: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;ms                        Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	monostable.c:205: volatile void delay_ms(int ms) {
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r6, dpl
	mov	r7, dph
;	monostable.c:207: for (i = 0; i < ms; i++){
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	mov	ar2,r6
	mov	ar3,r7
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	00109$
;	monostable.c:208: for (j = 0; j < 112; j++){
	mov	r2,#0x70
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xff,00138$
	dec	r3
00138$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	monostable.c:207: for (i = 0; i < ms; i++){
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	monostable.c:213: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'int_ISR'
;------------------------------------------------------------
;	monostable.c:216: void int_ISR(void) __interrupt (0)
;	-----------------------------------------
;	 function int_ISR
;	-----------------------------------------
_int_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	monostable.c:218: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	monostable.c:220: timer1Init();
	lcall	_timer1Init
;	monostable.c:222: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1_ISR'
;------------------------------------------------------------
;	monostable.c:223: void Timer1_ISR(void) __interrupt (3){
;	-----------------------------------------
;	 function Timer1_ISR
;	-----------------------------------------
_Timer1_ISR:
	push	acc
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	psw
	mov	psw,#0x00
;	monostable.c:224: TH1 = 0xFC;  // You may need to adjust this value based on your requirements
	mov	_TH1,#0xfc
;	monostable.c:225: TL1 = 0x17;
	mov	_TL1,#0x17
;	monostable.c:226: interrupt_counter++;
	inc	_interrupt_counter
	clr	a
	cjne	a,_interrupt_counter,00111$
	inc	(_interrupt_counter + 1)
	cjne	a,(_interrupt_counter + 1),00111$
	inc	(_interrupt_counter + 2)
	cjne	a,(_interrupt_counter + 2),00111$
	inc	(_interrupt_counter + 3)
00111$:
;	monostable.c:227: if(interrupt_counter >= delayTime){
	mov	r4,_delayTime
	mov	r5,(_delayTime + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_interrupt_counter
	subb	a,r4
	mov	a,(_interrupt_counter + 1)
	subb	a,r5
	mov	a,(_interrupt_counter + 2)
	subb	a,r6
	mov	a,(_interrupt_counter + 3)
	subb	a,r7
	jc	00103$
;	monostable.c:228: P1_0 =1;
;	assignBit
	setb	_P1_0
;	monostable.c:229: TR1 = 0;
;	assignBit
	clr	_TR1
;	monostable.c:230: interrupt_counter = 0;
	clr	a
	mov	_interrupt_counter,a
	mov	(_interrupt_counter + 1),a
	mov	(_interrupt_counter + 2),a
	mov	(_interrupt_counter + 3),a
00103$:
;	monostable.c:232: }
	pop	psw
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	acc
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;rx_first_byte             Allocated to registers r7 
;rx_second_byte            Allocated to registers r6 
;txfirstByte               Allocated to registers r6 
;txsecondByte              Allocated to registers r7 
;------------------------------------------------------------
;	monostable.c:235: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	monostable.c:263: I2C_Start();
	lcall	_I2C_Start
;	monostable.c:264: I2C_DataWrite(0xA0);
	mov	dpl, #0xa0
	lcall	_I2C_DataWrite
;	monostable.c:265: I2C_DataWrite(0x00);
	mov	dpl, #0x00
	lcall	_I2C_DataWrite
;	monostable.c:266: I2C_DataWrite(0x01);
	mov	dpl, #0x01
	lcall	_I2C_DataWrite
;	monostable.c:267: I2C_Start();
	lcall	_I2C_Start
;	monostable.c:268: I2C_DataWrite(0xA1);
	mov	dpl, #0xa1
	lcall	_I2C_DataWrite
;	monostable.c:269: rx_first_byte = I2C_DataRead();
	lcall	_I2C_DataRead
	mov	r7, dpl
;	monostable.c:270: acknowledge();
	push	ar7
	lcall	_acknowledge
;	monostable.c:271: rx_second_byte = I2C_DataRead();
	lcall	_I2C_DataRead
	mov	r6, dpl
;	monostable.c:272: acknowledge();
	push	ar6
	lcall	_acknowledge
;	monostable.c:273: I2C_Stop();
	lcall	_I2C_Stop
	pop	ar6
	pop	ar7
;	monostable.c:285: delayTime = (rx_first_byte << 8) | rx_second_byte;
	mov	ar5,r7
	clr	a
	mov	r7,a
	mov	r4,a
	mov	a,r6
	orl	a,r7
	mov	_delayTime,a
	mov	a,r4
	orl	a,r5
	mov	(_delayTime + 1),a
;	monostable.c:288: timer0Init();
	lcall	_timer0Init
;	monostable.c:289: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	monostable.c:291: int0Init();
	lcall	_int0Init
;	monostable.c:293: while (1)
00139$:
;	monostable.c:297: if (BUTTON1 == 0 ) {  // Button is pressed
	jnb	_P3_0,00245$
	ljmp	00115$
00245$:
;	monostable.c:298: if(delayTime > 9999){
	clr	c
	mov	a,#0x0f
	subb	a,_delayTime
	mov	a,#0x27
	subb	a,(_delayTime + 1)
	jnc	00102$
;	monostable.c:299: delayTime =0;
	clr	a
	mov	_delayTime,a
	mov	(_delayTime + 1),a
	sjmp	00103$
00102$:
;	monostable.c:302: delayTime +=1;
	mov	a,#0x01
	add	a, _delayTime
	mov	_delayTime,a
	clr	a
	addc	a, (_delayTime + 1)
	mov	(_delayTime + 1),a
00103$:
;	monostable.c:305: delay_ms(50);  // Debouncing delay
	mov	dptr,#0x0032
	lcall	_delay_ms
;	monostable.c:306: while (BUTTON1 == 0) {
00111$:
	jb	_P3_0,00116$
;	monostable.c:307: if(longPressTime > 5000-acceleration){
	mov	a,#0x88
	clr	c
	subb	a,_acceleration
	mov	r6,a
	mov	a,#0x13
	subb	a,(_acceleration + 1)
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,_longPressTime
	mov	a,r7
	subb	a,(_longPressTime + 1)
	jnc	00110$
;	monostable.c:308: longPressTime = 0;
	clr	a
	mov	_longPressTime,a
	mov	(_longPressTime + 1),a
;	monostable.c:310: if(delayTime > 9999){
	clr	c
	mov	a,#0x0f
	subb	a,_delayTime
	mov	a,#0x27
	subb	a,(_delayTime + 1)
	jnc	00105$
;	monostable.c:311: delayTime =1 ;
	mov	_delayTime,#0x01
	mov	(_delayTime + 1),#0x00
	sjmp	00106$
00105$:
;	monostable.c:314: delayTime +=1;
	mov	a,#0x01
	add	a, _delayTime
	mov	_delayTime,a
	clr	a
	addc	a, (_delayTime + 1)
	mov	(_delayTime + 1),a
00106$:
;	monostable.c:316: if(acceleration < 4500){
	clr	c
	mov	a,_acceleration
	subb	a,#0x94
	mov	a,(_acceleration + 1)
	subb	a,#0x11
	jnc	00110$
;	monostable.c:317: acceleration = 30 +acceleration;
	mov	a,#0x1e
	add	a, _acceleration
	mov	_acceleration,a
	clr	a
	addc	a, (_acceleration + 1)
	mov	(_acceleration + 1),a
00110$:
;	monostable.c:320: longPressTime++;
	inc	_longPressTime
	clr	a
	cjne	a,_longPressTime,00111$
	inc	(_longPressTime + 1)
	sjmp	00111$
00115$:
;	monostable.c:326: longPressTime = 0;
	clr	a
	mov	_longPressTime,a
	mov	(_longPressTime + 1),a
;	monostable.c:327: acceleration =  0;
	mov	_acceleration,a
	mov	(_acceleration + 1),a
00116$:
;	monostable.c:329: if (BUTTON2 == 0) {  // Button is pressed
	jb	_P3_1,00131$
;	monostable.c:330: if(delayTime <= 1){
	clr	c
	mov	a,#0x01
	subb	a,_delayTime
	clr	a
	subb	a,(_delayTime + 1)
	jc	00118$
;	monostable.c:331: delayTime = 9999;
	mov	_delayTime,#0x0f
	mov	(_delayTime + 1),#0x27
	sjmp	00119$
00118$:
;	monostable.c:333: delayTime-=1;
	dec	_delayTime
	mov	a,#0xff
	cjne	a,_delayTime,00254$
	dec	(_delayTime + 1)
00254$:
00119$:
;	monostable.c:335: delay_ms(50);  // Debouncing delay
	mov	dptr,#0x0032
	lcall	_delay_ms
;	monostable.c:336: while (BUTTON2 == 0 ) {
00127$:
	jb	_P3_1,00132$
;	monostable.c:337: if(longPressTime > 5000-acceleration){
	mov	a,#0x88
	clr	c
	subb	a,_acceleration
	mov	r6,a
	mov	a,#0x13
	subb	a,(_acceleration + 1)
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,_longPressTime
	mov	a,r7
	subb	a,(_longPressTime + 1)
	jnc	00126$
;	monostable.c:338: longPressTime = 0;
	clr	a
	mov	_longPressTime,a
	mov	(_longPressTime + 1),a
;	monostable.c:339: if(delayTime < 1){
	clr	c
	mov	a,_delayTime
	subb	a,#0x01
	mov	a,(_delayTime + 1)
	subb	a,#0x00
	jnc	00121$
;	monostable.c:340: delayTime = 9999;
	mov	_delayTime,#0x0f
	mov	(_delayTime + 1),#0x27
	sjmp	00122$
00121$:
;	monostable.c:342: delayTime-=1;
	dec	_delayTime
	mov	a,#0xff
	cjne	a,_delayTime,00258$
	dec	(_delayTime + 1)
00258$:
00122$:
;	monostable.c:344: if(acceleration < 4500){
	clr	c
	mov	a,_acceleration
	subb	a,#0x94
	mov	a,(_acceleration + 1)
	subb	a,#0x11
	jnc	00126$
;	monostable.c:345: acceleration = 30 +acceleration;
	mov	a,#0x1e
	add	a, _acceleration
	mov	_acceleration,a
	clr	a
	addc	a, (_acceleration + 1)
	mov	(_acceleration + 1),a
00126$:
;	monostable.c:348: longPressTime++;
	inc	_longPressTime
	clr	a
	cjne	a,_longPressTime,00127$
	inc	(_longPressTime + 1)
	sjmp	00127$
00131$:
;	monostable.c:354: longPressTime = 0;
	clr	a
	mov	_longPressTime,a
	mov	(_longPressTime + 1),a
;	monostable.c:355: acceleration =  0;
	mov	_acceleration,a
	mov	(_acceleration + 1),a
00132$:
;	monostable.c:358: buttonStat = BUTTON3;
	mov	c,_P0_2
	clr	a
	rlc	a
;	monostable.c:359: if(lastButtonStat != buttonStat){
	mov	_buttonStat,a
	cjne	a,_lastButtonStat,00261$
	sjmp	00137$
00261$:
;	monostable.c:360: TR0  = 0;
;	assignBit
	clr	_TR0
;	monostable.c:362: txsecondByte = delayTime ;
	mov	r7,_delayTime
;	monostable.c:363: txfirstByte = delayTime >> 8; 
	mov	r6,(_delayTime + 1)
;	monostable.c:365: if(buttonStat == 1){
	mov	a,#0x01
	cjne	a,_buttonStat,00134$
;	monostable.c:366: I2C_Start(); 
	push	ar7
	push	ar6
	lcall	_I2C_Start
;	monostable.c:367: I2C_DataWrite(0xA0);
	mov	dpl, #0xa0
	lcall	_I2C_DataWrite
;	monostable.c:368: I2C_DataWrite(0x00);
	mov	dpl, #0x00
	lcall	_I2C_DataWrite
;	monostable.c:369: I2C_DataWrite(0x01);
	mov	dpl, #0x01
	lcall	_I2C_DataWrite
	pop	ar6
;	monostable.c:370: I2C_DataWrite(txfirstByte);
	mov	dpl, r6
	lcall	_I2C_DataWrite
	pop	ar7
;	monostable.c:371: I2C_DataWrite(txsecondByte);
	mov	dpl, r7
	lcall	_I2C_DataWrite
;	monostable.c:372: I2C_Stop();
	lcall	_I2C_Stop
;	monostable.c:373: saving();
	lcall	_saving
;	monostable.c:374: TR0 = 1;
;	assignBit
	setb	_TR0
	sjmp	00137$
00134$:
;	monostable.c:377: P2 = displayData[10];
	mov	_P2,(_displayData + 0x000a)
;	monostable.c:378: DISP1=DISP2=DISP3=DISP4 = 1;
;	assignBit
	setb	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_3,c
;	assignBit
	mov	c,_P1_3
	mov	_P1_2,c
;	assignBit
	mov	c,_P1_2
	mov	_P1_1,c
00137$:
;	monostable.c:382: lastButtonStat = buttonStat;
	mov	_lastButtonStat,_buttonStat
;	monostable.c:387: }
	ljmp	00139$
;------------------------------------------------------------
;Allocation info for local variables in function 'saving'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	monostable.c:389: void saving(void){
;	-----------------------------------------
;	 function saving
;	-----------------------------------------
_saving:
;	monostable.c:390: for(int i=0;i<7;i++){
	mov	r7,#0x00
00112$:
	cjne	r7,#0x07,00166$
00166$:
	jnc	00114$
;	monostable.c:391: for(int j=3;j>=0;j--){
	mov	r6,#0x03
00109$:
	mov	a,r6
	jb	acc.7,00113$
;	monostable.c:392: switch(j)
	cjne	r6,#0x00,00169$
	sjmp	00101$
00169$:
	cjne	r6,#0x01,00170$
	sjmp	00102$
00170$:
	cjne	r6,#0x02,00171$
	sjmp	00103$
00171$:
;	monostable.c:394: case 0:
	cjne	r6,#0x03,00105$
	sjmp	00104$
00101$:
;	monostable.c:395: DISP1 = 1;
;	assignBit
	setb	_P1_1
;	monostable.c:396: DISP2 = DISP3 = DISP4 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_3,c
;	assignBit
	mov	c,_P1_3
	mov	_P1_2,c
;	monostable.c:398: break;
;	monostable.c:399: case 1:
	sjmp	00105$
00102$:
;	monostable.c:400: DISP2 = 1;
;	assignBit
	setb	_P1_2
;	monostable.c:401: DISP1 = DISP3 = DISP4 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_3,c
;	assignBit
	mov	c,_P1_3
	mov	_P1_1,c
;	monostable.c:403: break;
;	monostable.c:404: case 2:
	sjmp	00105$
00103$:
;	monostable.c:405: DISP3 = 1;
;	assignBit
	setb	_P1_3
;	monostable.c:406: DISP1 = DISP2 = DISP4 = 0;
;	assignBit
	clr	_P1_4
;	assignBit
	mov	c,_P1_4
	mov	_P1_2,c
;	assignBit
	mov	c,_P1_2
	mov	_P1_1,c
;	monostable.c:408: break;
;	monostable.c:409: case 3:
	sjmp	00105$
00104$:
;	monostable.c:410: DISP4 = 1;
;	assignBit
	setb	_P1_4
;	monostable.c:411: DISP1 = DISP2 = DISP3 = 0;
;	assignBit
	clr	_P1_3
;	assignBit
	mov	c,_P1_3
	mov	_P1_2,c
;	assignBit
	mov	c,_P1_2
	mov	_P1_1,c
;	monostable.c:414: }
00105$:
;	monostable.c:415: delay_ms(70);
	mov	dptr,#0x0046
	push	ar7
	push	ar6
	lcall	_delay_ms
	pop	ar6
	pop	ar7
;	monostable.c:391: for(int j=3;j>=0;j--){
	dec	r6
	sjmp	00109$
00113$:
;	monostable.c:390: for(int i=0;i<7;i++){
	inc	r7
	sjmp	00112$
00114$:
;	monostable.c:419: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
