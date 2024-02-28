                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module monostable
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _Timer1_ISR
                                     13 	.globl _int_ISR
                                     14 	.globl _delay_ms
                                     15 	.globl _Timer0_ISR
                                     16 	.globl _int0Init
                                     17 	.globl _timer1Init
                                     18 	.globl _timer0Init
                                     19 	.globl _I2C_DataRead
                                     20 	.globl _I2C_DataWrite
                                     21 	.globl _acknowledge
                                     22 	.globl _I2C_Stop
                                     23 	.globl _I2C_Start
                                     24 	.globl _delay
                                     25 	.globl _displayDigit
                                     26 	.globl _TF2
                                     27 	.globl _EXF2
                                     28 	.globl _RCLK
                                     29 	.globl _TCLK
                                     30 	.globl _EXEN2
                                     31 	.globl _TR2
                                     32 	.globl _C_T2
                                     33 	.globl _CP_RL2
                                     34 	.globl _T2CON_7
                                     35 	.globl _T2CON_6
                                     36 	.globl _T2CON_5
                                     37 	.globl _T2CON_4
                                     38 	.globl _T2CON_3
                                     39 	.globl _T2CON_2
                                     40 	.globl _T2CON_1
                                     41 	.globl _T2CON_0
                                     42 	.globl _PT2
                                     43 	.globl _ET2
                                     44 	.globl _CY
                                     45 	.globl _AC
                                     46 	.globl _F0
                                     47 	.globl _RS1
                                     48 	.globl _RS0
                                     49 	.globl _OV
                                     50 	.globl _F1
                                     51 	.globl _P
                                     52 	.globl _PS
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _EA
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _P1_7
                                     96 	.globl _P1_6
                                     97 	.globl _P1_5
                                     98 	.globl _P1_4
                                     99 	.globl _P1_3
                                    100 	.globl _P1_2
                                    101 	.globl _P1_1
                                    102 	.globl _P1_0
                                    103 	.globl _TF1
                                    104 	.globl _TR1
                                    105 	.globl _TF0
                                    106 	.globl _TR0
                                    107 	.globl _IE1
                                    108 	.globl _IT1
                                    109 	.globl _IE0
                                    110 	.globl _IT0
                                    111 	.globl _P0_7
                                    112 	.globl _P0_6
                                    113 	.globl _P0_5
                                    114 	.globl _P0_4
                                    115 	.globl _P0_3
                                    116 	.globl _P0_2
                                    117 	.globl _P0_1
                                    118 	.globl _P0_0
                                    119 	.globl _TH2
                                    120 	.globl _TL2
                                    121 	.globl _RCAP2H
                                    122 	.globl _RCAP2L
                                    123 	.globl _T2CON
                                    124 	.globl _B
                                    125 	.globl _ACC
                                    126 	.globl _PSW
                                    127 	.globl _IP
                                    128 	.globl _P3
                                    129 	.globl _IE
                                    130 	.globl _P2
                                    131 	.globl _SBUF
                                    132 	.globl _SCON
                                    133 	.globl _P1
                                    134 	.globl _TH1
                                    135 	.globl _TH0
                                    136 	.globl _TL1
                                    137 	.globl _TL0
                                    138 	.globl _TMOD
                                    139 	.globl _TCON
                                    140 	.globl _PCON
                                    141 	.globl _DPH
                                    142 	.globl _DPL
                                    143 	.globl _SP
                                    144 	.globl _P0
                                    145 	.globl _interrupt_counter
                                    146 	.globl _acceleration
                                    147 	.globl _longPressTime
                                    148 	.globl _dispalay_data
                                    149 	.globl _currentDigit
                                    150 	.globl _delayTime
                                    151 	.globl _stat
                                    152 	.globl _buttonStat
                                    153 	.globl _lastButtonStat
                                    154 	.globl _displayData
                                    155 	.globl _saving
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0	=	0x0080
                           000081   162 _SP	=	0x0081
                           000082   163 _DPL	=	0x0082
                           000083   164 _DPH	=	0x0083
                           000087   165 _PCON	=	0x0087
                           000088   166 _TCON	=	0x0088
                           000089   167 _TMOD	=	0x0089
                           00008A   168 _TL0	=	0x008a
                           00008B   169 _TL1	=	0x008b
                           00008C   170 _TH0	=	0x008c
                           00008D   171 _TH1	=	0x008d
                           000090   172 _P1	=	0x0090
                           000098   173 _SCON	=	0x0098
                           000099   174 _SBUF	=	0x0099
                           0000A0   175 _P2	=	0x00a0
                           0000A8   176 _IE	=	0x00a8
                           0000B0   177 _P3	=	0x00b0
                           0000B8   178 _IP	=	0x00b8
                           0000D0   179 _PSW	=	0x00d0
                           0000E0   180 _ACC	=	0x00e0
                           0000F0   181 _B	=	0x00f0
                           0000C8   182 _T2CON	=	0x00c8
                           0000CA   183 _RCAP2L	=	0x00ca
                           0000CB   184 _RCAP2H	=	0x00cb
                           0000CC   185 _TL2	=	0x00cc
                           0000CD   186 _TH2	=	0x00cd
                                    187 ;--------------------------------------------------------
                                    188 ; special function bits
                                    189 ;--------------------------------------------------------
                                    190 	.area RSEG    (ABS,DATA)
      000000                        191 	.org 0x0000
                           000080   192 _P0_0	=	0x0080
                           000081   193 _P0_1	=	0x0081
                           000082   194 _P0_2	=	0x0082
                           000083   195 _P0_3	=	0x0083
                           000084   196 _P0_4	=	0x0084
                           000085   197 _P0_5	=	0x0085
                           000086   198 _P0_6	=	0x0086
                           000087   199 _P0_7	=	0x0087
                           000088   200 _IT0	=	0x0088
                           000089   201 _IE0	=	0x0089
                           00008A   202 _IT1	=	0x008a
                           00008B   203 _IE1	=	0x008b
                           00008C   204 _TR0	=	0x008c
                           00008D   205 _TF0	=	0x008d
                           00008E   206 _TR1	=	0x008e
                           00008F   207 _TF1	=	0x008f
                           000090   208 _P1_0	=	0x0090
                           000091   209 _P1_1	=	0x0091
                           000092   210 _P1_2	=	0x0092
                           000093   211 _P1_3	=	0x0093
                           000094   212 _P1_4	=	0x0094
                           000095   213 _P1_5	=	0x0095
                           000096   214 _P1_6	=	0x0096
                           000097   215 _P1_7	=	0x0097
                           000098   216 _RI	=	0x0098
                           000099   217 _TI	=	0x0099
                           00009A   218 _RB8	=	0x009a
                           00009B   219 _TB8	=	0x009b
                           00009C   220 _REN	=	0x009c
                           00009D   221 _SM2	=	0x009d
                           00009E   222 _SM1	=	0x009e
                           00009F   223 _SM0	=	0x009f
                           0000A0   224 _P2_0	=	0x00a0
                           0000A1   225 _P2_1	=	0x00a1
                           0000A2   226 _P2_2	=	0x00a2
                           0000A3   227 _P2_3	=	0x00a3
                           0000A4   228 _P2_4	=	0x00a4
                           0000A5   229 _P2_5	=	0x00a5
                           0000A6   230 _P2_6	=	0x00a6
                           0000A7   231 _P2_7	=	0x00a7
                           0000A8   232 _EX0	=	0x00a8
                           0000A9   233 _ET0	=	0x00a9
                           0000AA   234 _EX1	=	0x00aa
                           0000AB   235 _ET1	=	0x00ab
                           0000AC   236 _ES	=	0x00ac
                           0000AF   237 _EA	=	0x00af
                           0000B0   238 _P3_0	=	0x00b0
                           0000B1   239 _P3_1	=	0x00b1
                           0000B2   240 _P3_2	=	0x00b2
                           0000B3   241 _P3_3	=	0x00b3
                           0000B4   242 _P3_4	=	0x00b4
                           0000B5   243 _P3_5	=	0x00b5
                           0000B6   244 _P3_6	=	0x00b6
                           0000B7   245 _P3_7	=	0x00b7
                           0000B0   246 _RXD	=	0x00b0
                           0000B1   247 _TXD	=	0x00b1
                           0000B2   248 _INT0	=	0x00b2
                           0000B3   249 _INT1	=	0x00b3
                           0000B4   250 _T0	=	0x00b4
                           0000B5   251 _T1	=	0x00b5
                           0000B6   252 _WR	=	0x00b6
                           0000B7   253 _RD	=	0x00b7
                           0000B8   254 _PX0	=	0x00b8
                           0000B9   255 _PT0	=	0x00b9
                           0000BA   256 _PX1	=	0x00ba
                           0000BB   257 _PT1	=	0x00bb
                           0000BC   258 _PS	=	0x00bc
                           0000D0   259 _P	=	0x00d0
                           0000D1   260 _F1	=	0x00d1
                           0000D2   261 _OV	=	0x00d2
                           0000D3   262 _RS0	=	0x00d3
                           0000D4   263 _RS1	=	0x00d4
                           0000D5   264 _F0	=	0x00d5
                           0000D6   265 _AC	=	0x00d6
                           0000D7   266 _CY	=	0x00d7
                           0000AD   267 _ET2	=	0x00ad
                           0000BD   268 _PT2	=	0x00bd
                           0000C8   269 _T2CON_0	=	0x00c8
                           0000C9   270 _T2CON_1	=	0x00c9
                           0000CA   271 _T2CON_2	=	0x00ca
                           0000CB   272 _T2CON_3	=	0x00cb
                           0000CC   273 _T2CON_4	=	0x00cc
                           0000CD   274 _T2CON_5	=	0x00cd
                           0000CE   275 _T2CON_6	=	0x00ce
                           0000CF   276 _T2CON_7	=	0x00cf
                           0000C8   277 _CP_RL2	=	0x00c8
                           0000C9   278 _C_T2	=	0x00c9
                           0000CA   279 _TR2	=	0x00ca
                           0000CB   280 _EXEN2	=	0x00cb
                           0000CC   281 _TCLK	=	0x00cc
                           0000CD   282 _RCLK	=	0x00cd
                           0000CE   283 _EXF2	=	0x00ce
                           0000CF   284 _TF2	=	0x00cf
                                    285 ;--------------------------------------------------------
                                    286 ; overlayable register banks
                                    287 ;--------------------------------------------------------
                                    288 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        289 	.ds 8
                                    290 ;--------------------------------------------------------
                                    291 ; overlayable bit register bank
                                    292 ;--------------------------------------------------------
                                    293 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        294 bits:
      000020                        295 	.ds 1
                           008000   296 	b0 = bits[0]
                           008100   297 	b1 = bits[1]
                           008200   298 	b2 = bits[2]
                           008300   299 	b3 = bits[3]
                           008400   300 	b4 = bits[4]
                           008500   301 	b5 = bits[5]
                           008600   302 	b6 = bits[6]
                           008700   303 	b7 = bits[7]
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
      000021                        308 _displayData::
      000021                        309 	.ds 11
      00002C                        310 _lastButtonStat::
      00002C                        311 	.ds 1
      00002D                        312 _buttonStat::
      00002D                        313 	.ds 1
      00002E                        314 _stat::
      00002E                        315 	.ds 1
      00002F                        316 _delayTime::
      00002F                        317 	.ds 2
      000031                        318 _currentDigit::
      000031                        319 	.ds 1
      000032                        320 _dispalay_data::
      000032                        321 	.ds 4
      000036                        322 _longPressTime::
      000036                        323 	.ds 2
      000038                        324 _acceleration::
      000038                        325 	.ds 2
      00003A                        326 _interrupt_counter::
      00003A                        327 	.ds 4
                                    328 ;--------------------------------------------------------
                                    329 ; overlayable items in internal ram
                                    330 ;--------------------------------------------------------
                                    331 	.area	OSEG    (OVR,DATA)
                                    332 	.area	OSEG    (OVR,DATA)
                                    333 	.area	OSEG    (OVR,DATA)
                                    334 	.area	OSEG    (OVR,DATA)
                                    335 	.area	OSEG    (OVR,DATA)
                                    336 ;--------------------------------------------------------
                                    337 ; Stack segment in internal ram
                                    338 ;--------------------------------------------------------
                                    339 	.area SSEG
      00003E                        340 __start__stack:
      00003E                        341 	.ds	1
                                    342 
                                    343 ;--------------------------------------------------------
                                    344 ; indirectly addressable internal ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area ISEG    (DATA)
                                    347 ;--------------------------------------------------------
                                    348 ; absolute internal ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area IABS    (ABS,DATA)
                                    351 	.area IABS    (ABS,DATA)
                                    352 ;--------------------------------------------------------
                                    353 ; bit data
                                    354 ;--------------------------------------------------------
                                    355 	.area BSEG    (BIT)
                                    356 ;--------------------------------------------------------
                                    357 ; paged external ram data
                                    358 ;--------------------------------------------------------
                                    359 	.area PSEG    (PAG,XDATA)
                                    360 ;--------------------------------------------------------
                                    361 ; uninitialized external ram data
                                    362 ;--------------------------------------------------------
                                    363 	.area XSEG    (XDATA)
                                    364 ;--------------------------------------------------------
                                    365 ; absolute external ram data
                                    366 ;--------------------------------------------------------
                                    367 	.area XABS    (ABS,XDATA)
                                    368 ;--------------------------------------------------------
                                    369 ; initialized external ram data
                                    370 ;--------------------------------------------------------
                                    371 	.area XISEG   (XDATA)
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT0 (CODE)
                                    374 	.area GSINIT1 (CODE)
                                    375 	.area GSINIT2 (CODE)
                                    376 	.area GSINIT3 (CODE)
                                    377 	.area GSINIT4 (CODE)
                                    378 	.area GSINIT5 (CODE)
                                    379 	.area GSINIT  (CODE)
                                    380 	.area GSFINAL (CODE)
                                    381 	.area CSEG    (CODE)
                                    382 ;--------------------------------------------------------
                                    383 ; interrupt vector
                                    384 ;--------------------------------------------------------
                                    385 	.area HOME    (CODE)
      000000                        386 __interrupt_vect:
      000000 02 00 21         [24]  387 	ljmp	__sdcc_gsinit_startup
      000003 02 03 2C         [24]  388 	ljmp	_int_ISR
      000006                        389 	.ds	5
      00000B 02 01 71         [24]  390 	ljmp	_Timer0_ISR
      00000E                        391 	.ds	5
      000013 32               [24]  392 	reti
      000014                        393 	.ds	7
      00001B 02 03 6D         [24]  394 	ljmp	_Timer1_ISR
                                    395 ;--------------------------------------------------------
                                    396 ; global & static initialisations
                                    397 ;--------------------------------------------------------
                                    398 	.area HOME    (CODE)
                                    399 	.area GSINIT  (CODE)
                                    400 	.area GSFINAL (CODE)
                                    401 	.area GSINIT  (CODE)
                                    402 	.globl __sdcc_gsinit_startup
                                    403 	.globl __sdcc_program_startup
                                    404 	.globl __start__stack
                                    405 	.globl __mcs51_genXINIT
                                    406 	.globl __mcs51_genXRAMCLEAR
                                    407 	.globl __mcs51_genRAMCLEAR
                                    408 ;	monostable.c:29: volatile unsigned char displayData[] = {
      00007A 75 21 C0         [24]  409 	mov	_displayData,#0xc0
      00007D 75 22 F9         [24]  410 	mov	(_displayData + 0x0001),#0xf9
      000080 75 23 A4         [24]  411 	mov	(_displayData + 0x0002),#0xa4
      000083 75 24 B0         [24]  412 	mov	(_displayData + 0x0003),#0xb0
      000086 75 25 99         [24]  413 	mov	(_displayData + 0x0004),#0x99
      000089 75 26 92         [24]  414 	mov	(_displayData + 0x0005),#0x92
      00008C 75 27 82         [24]  415 	mov	(_displayData + 0x0006),#0x82
      00008F 75 28 F8         [24]  416 	mov	(_displayData + 0x0007),#0xf8
      000092 75 29 80         [24]  417 	mov	(_displayData + 0x0008),#0x80
      000095 75 2A 90         [24]  418 	mov	(_displayData + 0x0009),#0x90
      000098 75 2B BF         [24]  419 	mov	(_displayData + 0x000a),#0xbf
                                    420 ;	monostable.c:48: unsigned char lastButtonStat = 1;
      00009B 75 2C 01         [24]  421 	mov	_lastButtonStat,#0x01
                                    422 ;	monostable.c:49: unsigned char buttonStat = 1;
      00009E 75 2D 01         [24]  423 	mov	_buttonStat,#0x01
                                    424 ;	monostable.c:51: volatile unsigned char stat = 1;
      0000A1 75 2E 01         [24]  425 	mov	_stat,#0x01
                                    426 ;	monostable.c:52: volatile  unsigned int delayTime = 2000;
      0000A4 75 2F D0         [24]  427 	mov	_delayTime,#0xd0
      0000A7 75 30 07         [24]  428 	mov	(_delayTime + 1),#0x07
                                    429 ;	monostable.c:53: volatile unsigned char currentDigit = 0;
      0000AA 75 31 00         [24]  430 	mov	_currentDigit,#0x00
                                    431 ;	monostable.c:54: unsigned long dispalay_data = 0;
      0000AD E4               [12]  432 	clr	a
      0000AE F5 32            [12]  433 	mov	_dispalay_data,a
      0000B0 F5 33            [12]  434 	mov	(_dispalay_data + 1),a
      0000B2 F5 34            [12]  435 	mov	(_dispalay_data + 2),a
      0000B4 F5 35            [12]  436 	mov	(_dispalay_data + 3),a
                                    437 ;	monostable.c:55: unsigned int longPressTime = 0;
      0000B6 F5 36            [12]  438 	mov	_longPressTime,a
      0000B8 F5 37            [12]  439 	mov	(_longPressTime + 1),a
                                    440 ;	monostable.c:56: unsigned int acceleration = 1;
      0000BA 75 38 01         [24]  441 	mov	_acceleration,#0x01
      0000BD F5 39            [12]  442 	mov	(_acceleration + 1),a
                                    443 ;	monostable.c:57: unsigned long interrupt_counter = 0;
      0000BF F5 3A            [12]  444 	mov	_interrupt_counter,a
      0000C1 F5 3B            [12]  445 	mov	(_interrupt_counter + 1),a
      0000C3 F5 3C            [12]  446 	mov	(_interrupt_counter + 2),a
      0000C5 F5 3D            [12]  447 	mov	(_interrupt_counter + 3),a
                                    448 	.area GSFINAL (CODE)
      0000C7 02 00 1E         [24]  449 	ljmp	__sdcc_program_startup
                                    450 ;--------------------------------------------------------
                                    451 ; Home
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area HOME    (CODE)
      00001E                        455 __sdcc_program_startup:
      00001E 02 03 C5         [24]  456 	ljmp	_main
                                    457 ;	return from main will return to caller
                                    458 ;--------------------------------------------------------
                                    459 ; code
                                    460 ;--------------------------------------------------------
                                    461 	.area CSEG    (CODE)
                                    462 ;------------------------------------------------------------
                                    463 ;Allocation info for local variables in function 'displayDigit'
                                    464 ;------------------------------------------------------------
                                    465 ;digit                     Allocated to registers r7 
                                    466 ;------------------------------------------------------------
                                    467 ;	monostable.c:58: volatile void displayDigit(unsigned char digit) {
                                    468 ;	-----------------------------------------
                                    469 ;	 function displayDigit
                                    470 ;	-----------------------------------------
      0000CA                        471 _displayDigit:
                           000007   472 	ar7 = 0x07
                           000006   473 	ar6 = 0x06
                           000005   474 	ar5 = 0x05
                           000004   475 	ar4 = 0x04
                           000003   476 	ar3 = 0x03
                           000002   477 	ar2 = 0x02
                           000001   478 	ar1 = 0x01
                           000000   479 	ar0 = 0x00
                                    480 ;	monostable.c:59: P2 = displayData[digit];
      0000CA E5 82            [12]  481 	mov	a,dpl
      0000CC 24 21            [12]  482 	add	a, #_displayData
      0000CE F9               [12]  483 	mov	r1,a
      0000CF 87 A0            [24]  484 	mov	_P2,@r1
                                    485 ;	monostable.c:60: }
      0000D1 22               [24]  486 	ret
                                    487 ;------------------------------------------------------------
                                    488 ;Allocation info for local variables in function 'delay'
                                    489 ;------------------------------------------------------------
                                    490 ;count                     Allocated to registers 
                                    491 ;------------------------------------------------------------
                                    492 ;	monostable.c:63: void delay(unsigned int count) {
                                    493 ;	-----------------------------------------
                                    494 ;	 function delay
                                    495 ;	-----------------------------------------
      0000D2                        496 _delay:
      0000D2 AE 82            [24]  497 	mov	r6, dpl
      0000D4 AF 83            [24]  498 	mov	r7, dph
                                    499 ;	monostable.c:64: while (count--);
      0000D6                        500 00101$:
      0000D6 8E 04            [24]  501 	mov	ar4,r6
      0000D8 8F 05            [24]  502 	mov	ar5,r7
      0000DA 1E               [12]  503 	dec	r6
      0000DB BE FF 01         [24]  504 	cjne	r6,#0xff,00113$
      0000DE 1F               [12]  505 	dec	r7
      0000DF                        506 00113$:
      0000DF EC               [12]  507 	mov	a,r4
      0000E0 4D               [12]  508 	orl	a,r5
      0000E1 70 F3            [24]  509 	jnz	00101$
                                    510 ;	monostable.c:65: }
      0000E3 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'I2C_Start'
                                    514 ;------------------------------------------------------------
                                    515 ;	monostable.c:67: void I2C_Start(void) {
                                    516 ;	-----------------------------------------
                                    517 ;	 function I2C_Start
                                    518 ;	-----------------------------------------
      0000E4                        519 _I2C_Start:
                                    520 ;	monostable.c:68: SDA = 1;
                                    521 ;	assignBit
      0000E4 D2 B7            [12]  522 	setb	_P3_7
                                    523 ;	monostable.c:69: nop;
      0000E6 00               [12]  524 	nop
                                    525 ;	monostable.c:70: SCL = 1;
                                    526 ;	assignBit
      0000E7 D2 B6            [12]  527 	setb	_P3_6
                                    528 ;	monostable.c:71: nop;
      0000E9 00               [12]  529 	nop
                                    530 ;	monostable.c:72: SDA = 0;
                                    531 ;	assignBit
      0000EA C2 B7            [12]  532 	clr	_P3_7
                                    533 ;	monostable.c:73: nop;
      0000EC 00               [12]  534 	nop
                                    535 ;	monostable.c:74: SCL = 0;
                                    536 ;	assignBit
      0000ED C2 B6            [12]  537 	clr	_P3_6
                                    538 ;	monostable.c:75: }
      0000EF 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'I2C_Stop'
                                    542 ;------------------------------------------------------------
                                    543 ;	monostable.c:77: void I2C_Stop(void) {
                                    544 ;	-----------------------------------------
                                    545 ;	 function I2C_Stop
                                    546 ;	-----------------------------------------
      0000F0                        547 _I2C_Stop:
                                    548 ;	monostable.c:78: SDA = 0;
                                    549 ;	assignBit
      0000F0 C2 B7            [12]  550 	clr	_P3_7
                                    551 ;	monostable.c:79: nop;
      0000F2 00               [12]  552 	nop
                                    553 ;	monostable.c:80: SCL = 1;
                                    554 ;	assignBit
      0000F3 D2 B6            [12]  555 	setb	_P3_6
                                    556 ;	monostable.c:81: nop;
      0000F5 00               [12]  557 	nop
                                    558 ;	monostable.c:82: SDA = 1;
                                    559 ;	assignBit
      0000F6 D2 B7            [12]  560 	setb	_P3_7
                                    561 ;	monostable.c:83: nop;
      0000F8 00               [12]  562 	nop
                                    563 ;	monostable.c:84: }
      0000F9 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'acknowledge'
                                    567 ;------------------------------------------------------------
                                    568 ;	monostable.c:85: void acknowledge(void){
                                    569 ;	-----------------------------------------
                                    570 ;	 function acknowledge
                                    571 ;	-----------------------------------------
      0000FA                        572 _acknowledge:
                                    573 ;	monostable.c:86: SCL = 1;
                                    574 ;	assignBit
      0000FA D2 B6            [12]  575 	setb	_P3_6
                                    576 ;	monostable.c:87: nop;
      0000FC 00               [12]  577 	nop
                                    578 ;	monostable.c:88: SCL = 0;
                                    579 ;	assignBit
      0000FD C2 B6            [12]  580 	clr	_P3_6
                                    581 ;	monostable.c:89: }
      0000FF 22               [24]  582 	ret
                                    583 ;------------------------------------------------------------
                                    584 ;Allocation info for local variables in function 'I2C_DataWrite'
                                    585 ;------------------------------------------------------------
                                    586 ;Data                      Allocated to registers r7 
                                    587 ;i                         Allocated to registers r6 
                                    588 ;------------------------------------------------------------
                                    589 ;	monostable.c:91: void I2C_DataWrite(unsigned char Data)//0xA0 1010 0000--> 0100 0000
                                    590 ;	-----------------------------------------
                                    591 ;	 function I2C_DataWrite
                                    592 ;	-----------------------------------------
      000100                        593 _I2C_DataWrite:
      000100 AF 82            [24]  594 	mov	r7, dpl
                                    595 ;	monostable.c:95: for(i=0;i<8;i++)
      000102 7E 00            [12]  596 	mov	r6,#0x00
      000104                        597 00105$:
                                    598 ;	monostable.c:97: SDA= (Data & 0x80)?1:0;
      000104 8F 05            [24]  599 	mov	ar5,r7
      000106 53 05 80         [24]  600 	anl	ar5,#0x80
                                    601 ;	assignBit
      000109 ED               [12]  602 	mov	a,r5
      00010A 24 FF            [12]  603 	add	a,#0xff
      00010C 92 B7            [24]  604 	mov	_P3_7,c
                                    605 ;	monostable.c:98: Data=Data<<1;
      00010E 8F 05            [24]  606 	mov	ar5,r7
      000110 ED               [12]  607 	mov	a,r5
      000111 2D               [12]  608 	add	a,r5
      000112 FF               [12]  609 	mov	r7,a
                                    610 ;	monostable.c:99: nop;
      000113 00               [12]  611 	nop
                                    612 ;	monostable.c:100: SCL=1;
                                    613 ;	assignBit
      000114 D2 B6            [12]  614 	setb	_P3_6
                                    615 ;	monostable.c:101: nop;
      000116 00               [12]  616 	nop
                                    617 ;	monostable.c:102: SCL=0;
                                    618 ;	assignBit
      000117 C2 B6            [12]  619 	clr	_P3_6
                                    620 ;	monostable.c:103: nop;
      000119 00               [12]  621 	nop
                                    622 ;	monostable.c:95: for(i=0;i<8;i++)
      00011A 0E               [12]  623 	inc	r6
      00011B BE 08 00         [24]  624 	cjne	r6,#0x08,00134$
      00011E                        625 00134$:
      00011E 40 E4            [24]  626 	jc	00105$
                                    627 ;	monostable.c:105: SDA=1;
                                    628 ;	assignBit
      000120 D2 B7            [12]  629 	setb	_P3_7
                                    630 ;	monostable.c:106: SCL=1;
                                    631 ;	assignBit
      000122 D2 B6            [12]  632 	setb	_P3_6
                                    633 ;	monostable.c:107: nop;
      000124 00               [12]  634 	nop
                                    635 ;	monostable.c:108: while(SDA==1); //waiting until SDA=0 this should be set by the slave 
      000125                        636 00102$:
      000125 20 B7 FD         [24]  637 	jb	_P3_7,00102$
                                    638 ;	monostable.c:109: SCL=0;
                                    639 ;	assignBit
      000128 C2 B6            [12]  640 	clr	_P3_6
                                    641 ;	monostable.c:110: nop;
      00012A 00               [12]  642 	nop
                                    643 ;	monostable.c:111: }
      00012B 22               [24]  644 	ret
                                    645 ;------------------------------------------------------------
                                    646 ;Allocation info for local variables in function 'I2C_DataRead'
                                    647 ;------------------------------------------------------------
                                    648 ;reead                     Allocated to registers r7 
                                    649 ;i                         Allocated to registers r6 
                                    650 ;------------------------------------------------------------
                                    651 ;	monostable.c:112: unsigned char I2C_DataRead(void)///1010 0000     1|0=1...101
                                    652 ;	-----------------------------------------
                                    653 ;	 function I2C_DataRead
                                    654 ;	-----------------------------------------
      00012C                        655 _I2C_DataRead:
                                    656 ;	monostable.c:114: unsigned char reead = 0;
      00012C 7F 00            [12]  657 	mov	r7,#0x00
                                    658 ;	monostable.c:115: SDA = 1;
                                    659 ;	assignBit
      00012E D2 B7            [12]  660 	setb	_P3_7
                                    661 ;	monostable.c:116: for(int i=0;i<8;i++){
      000130 7E 00            [12]  662 	mov	r6,#0x00
      000132                        663 00105$:
      000132 BE 08 00         [24]  664 	cjne	r6,#0x08,00128$
      000135                        665 00128$:
      000135 50 12            [24]  666 	jnc	00103$
                                    667 ;	monostable.c:117: reead = reead << 1;
      000137 8F 05            [24]  668 	mov	ar5,r7
      000139 ED               [12]  669 	mov	a,r5
      00013A 2D               [12]  670 	add	a,r5
      00013B FF               [12]  671 	mov	r7,a
                                    672 ;	monostable.c:118: SCL = 1;
                                    673 ;	assignBit
      00013C D2 B6            [12]  674 	setb	_P3_6
                                    675 ;	monostable.c:119: nop;
      00013E 00               [12]  676 	nop
                                    677 ;	monostable.c:120: nop;
      00013F 00               [12]  678 	nop
                                    679 ;	monostable.c:121: if(SDA ==1 ){
      000140 30 B7 01         [24]  680 	jnb	_P3_7,00102$
                                    681 ;	monostable.c:122: reead++;
      000143 0F               [12]  682 	inc	r7
      000144                        683 00102$:
                                    684 ;	monostable.c:124: SCL = 0;
                                    685 ;	assignBit
      000144 C2 B6            [12]  686 	clr	_P3_6
                                    687 ;	monostable.c:116: for(int i=0;i<8;i++){
      000146 0E               [12]  688 	inc	r6
      000147 80 E9            [24]  689 	sjmp	00105$
      000149                        690 00103$:
                                    691 ;	monostable.c:126: SDA = 0;
                                    692 ;	assignBit
      000149 C2 B7            [12]  693 	clr	_P3_7
                                    694 ;	monostable.c:127: return reead;
      00014B 8F 82            [24]  695 	mov	dpl, r7
                                    696 ;	monostable.c:128: }
      00014D 22               [24]  697 	ret
                                    698 ;------------------------------------------------------------
                                    699 ;Allocation info for local variables in function 'timer0Init'
                                    700 ;------------------------------------------------------------
                                    701 ;	monostable.c:133: void timer0Init(void) {
                                    702 ;	-----------------------------------------
                                    703 ;	 function timer0Init
                                    704 ;	-----------------------------------------
      00014E                        705 _timer0Init:
                                    706 ;	monostable.c:135: TMOD |= 0x01; 
      00014E 43 89 01         [24]  707 	orl	_TMOD,#0x01
                                    708 ;	monostable.c:137: TH0 = 0xED;  // You may need to adjust this value based on your requirements
      000151 75 8C ED         [24]  709 	mov	_TH0,#0xed
                                    710 ;	monostable.c:138: TL0 = 0xFF;
      000154 75 8A FF         [24]  711 	mov	_TL0,#0xff
                                    712 ;	monostable.c:139: ET0 = 1;		// Enable Timer 0 overflow interrupt
                                    713 ;	assignBit
      000157 D2 A9            [12]  714 	setb	_ET0
                                    715 ;	monostable.c:140: TR0 = 1;		// Start Timer 0
                                    716 ;	assignBit
      000159 D2 8C            [12]  717 	setb	_TR0
                                    718 ;	monostable.c:141: }
      00015B 22               [24]  719 	ret
                                    720 ;------------------------------------------------------------
                                    721 ;Allocation info for local variables in function 'timer1Init'
                                    722 ;------------------------------------------------------------
                                    723 ;	monostable.c:142: volatile void timer1Init(void) {
                                    724 ;	-----------------------------------------
                                    725 ;	 function timer1Init
                                    726 ;	-----------------------------------------
      00015C                        727 _timer1Init:
                                    728 ;	monostable.c:144: TMOD |= 0x10; 
      00015C 43 89 10         [24]  729 	orl	_TMOD,#0x10
                                    730 ;	monostable.c:146: TH1 = 0xFC;  // You may need to adjust this value based on your requirements
      00015F 75 8D FC         [24]  731 	mov	_TH1,#0xfc
                                    732 ;	monostable.c:147: TL1 = 0x17;
      000162 75 8B 17         [24]  733 	mov	_TL1,#0x17
                                    734 ;	monostable.c:148: ET1 = 1;		// Enable Timer 0 overflow interrupt
                                    735 ;	assignBit
      000165 D2 AB            [12]  736 	setb	_ET1
                                    737 ;	monostable.c:149: TR1 = 1;		// Start Timer 0
                                    738 ;	assignBit
      000167 D2 8E            [12]  739 	setb	_TR1
                                    740 ;	monostable.c:150: }
      000169 22               [24]  741 	ret
                                    742 ;------------------------------------------------------------
                                    743 ;Allocation info for local variables in function 'int0Init'
                                    744 ;------------------------------------------------------------
                                    745 ;	monostable.c:151: void int0Init(void) {
                                    746 ;	-----------------------------------------
                                    747 ;	 function int0Init
                                    748 ;	-----------------------------------------
      00016A                        749 _int0Init:
                                    750 ;	monostable.c:153: IT0 = 1;
                                    751 ;	assignBit
      00016A D2 88            [12]  752 	setb	_IT0
                                    753 ;	monostable.c:155: EX0 = 1;
                                    754 ;	assignBit
      00016C D2 A8            [12]  755 	setb	_EX0
                                    756 ;	monostable.c:157: EA = 1;
                                    757 ;	assignBit
      00016E D2 AF            [12]  758 	setb	_EA
                                    759 ;	monostable.c:158: }
      000170 22               [24]  760 	ret
                                    761 ;------------------------------------------------------------
                                    762 ;Allocation info for local variables in function 'Timer0_ISR'
                                    763 ;------------------------------------------------------------
                                    764 ;	monostable.c:159: void Timer0_ISR(void) __interrupt (1)
                                    765 ;	-----------------------------------------
                                    766 ;	 function Timer0_ISR
                                    767 ;	-----------------------------------------
      000171                        768 _Timer0_ISR:
      000171 C0 20            [24]  769 	push	bits
      000173 C0 E0            [24]  770 	push	acc
      000175 C0 F0            [24]  771 	push	b
      000177 C0 82            [24]  772 	push	dpl
      000179 C0 83            [24]  773 	push	dph
      00017B C0 07            [24]  774 	push	(0+7)
      00017D C0 06            [24]  775 	push	(0+6)
      00017F C0 05            [24]  776 	push	(0+5)
      000181 C0 04            [24]  777 	push	(0+4)
      000183 C0 03            [24]  778 	push	(0+3)
      000185 C0 02            [24]  779 	push	(0+2)
      000187 C0 01            [24]  780 	push	(0+1)
      000189 C0 00            [24]  781 	push	(0+0)
      00018B C0 D0            [24]  782 	push	psw
      00018D 75 D0 00         [24]  783 	mov	psw,#0x00
                                    784 ;	monostable.c:162: TH0 = 0xED;  // You may need to adjust this value based on your requirements
      000190 75 8C ED         [24]  785 	mov	_TH0,#0xed
                                    786 ;	monostable.c:163: TL0 = 0xFF;
      000193 75 8A FF         [24]  787 	mov	_TL0,#0xff
                                    788 ;	monostable.c:165: currentDigit++;
      000196 E5 31            [12]  789 	mov	a,_currentDigit
      000198 04               [12]  790 	inc	a
      000199 F5 31            [12]  791 	mov	_currentDigit,a
                                    792 ;	monostable.c:168: if (currentDigit > 3) {
      00019B E5 31            [12]  793 	mov	a,_currentDigit
      00019D 24 FC            [12]  794 	add	a,#0xff - 0x03
      00019F 50 03            [24]  795 	jnc	00102$
                                    796 ;	monostable.c:169: currentDigit = 0;
      0001A1 75 31 00         [24]  797 	mov	_currentDigit,#0x00
      0001A4                        798 00102$:
                                    799 ;	monostable.c:171: P2 = 0xff;
      0001A4 75 A0 FF         [24]  800 	mov	_P2,#0xff
                                    801 ;	monostable.c:172: if(P1_0==0){
      0001A7 20 90 0E         [24]  802 	jb	_P1_0,00104$
                                    803 ;	monostable.c:173: dispalay_data = interrupt_counter;
      0001AA 85 3A 32         [24]  804 	mov	_dispalay_data,_interrupt_counter
      0001AD 85 3B 33         [24]  805 	mov	(_dispalay_data + 1),(_interrupt_counter + 1)
      0001B0 85 3C 34         [24]  806 	mov	(_dispalay_data + 2),(_interrupt_counter + 2)
      0001B3 85 3D 35         [24]  807 	mov	(_dispalay_data + 3),(_interrupt_counter + 3)
      0001B6 80 0C            [24]  808 	sjmp	00105$
      0001B8                        809 00104$:
                                    810 ;	monostable.c:175: dispalay_data = delayTime;	
      0001B8 85 2F 32         [24]  811 	mov	_dispalay_data,_delayTime
      0001BB 85 30 33         [24]  812 	mov	(_dispalay_data + 1),(_delayTime + 1)
      0001BE 75 34 00         [24]  813 	mov	(_dispalay_data + 2),#0x00
      0001C1 75 35 00         [24]  814 	mov	(_dispalay_data + 3),#0x00
      0001C4                        815 00105$:
                                    816 ;	monostable.c:179: switch (currentDigit) {
      0001C4 E5 31            [12]  817 	mov	a,_currentDigit
      0001C6 FF               [12]  818 	mov	r7,a
      0001C7 24 FC            [12]  819 	add	a,#0xff - 0x03
      0001C9 50 03            [24]  820 	jnc	00133$
      0001CB 02 02 E7         [24]  821 	ljmp	00111$
      0001CE                        822 00133$:
      0001CE EF               [12]  823 	mov	a,r7
      0001CF 2F               [12]  824 	add	a,r7
      0001D0 2F               [12]  825 	add	a,r7
      0001D1 90 01 D5         [24]  826 	mov	dptr,#00134$
      0001D4 73               [24]  827 	jmp	@a+dptr
      0001D5                        828 00134$:
      0001D5 02 01 E1         [24]  829 	ljmp	00106$
      0001D8 02 02 0F         [24]  830 	ljmp	00107$
      0001DB 02 02 58         [24]  831 	ljmp	00108$
      0001DE 02 02 A0         [24]  832 	ljmp	00109$
                                    833 ;	monostable.c:180: case 0:
      0001E1                        834 00106$:
                                    835 ;	monostable.c:181: DISP1 = 1;
                                    836 ;	assignBit
      0001E1 D2 91            [12]  837 	setb	_P1_1
                                    838 ;	monostable.c:182: DISP2 = DISP3 = DISP4 = 0;
                                    839 ;	assignBit
      0001E3 C2 94            [12]  840 	clr	_P1_4
                                    841 ;	assignBit
      0001E5 A2 94            [12]  842 	mov	c,_P1_4
      0001E7 92 93            [24]  843 	mov	_P1_3,c
                                    844 ;	assignBit
      0001E9 A2 93            [12]  845 	mov	c,_P1_3
      0001EB 92 92            [24]  846 	mov	_P1_2,c
                                    847 ;	monostable.c:183: displayDigit(dispalay_data%10);  // Change this value based on the desired number to display
      0001ED 75 08 0A         [24]  848 	mov	__modulong_PARM_2,#0x0a
      0001F0 E4               [12]  849 	clr	a
      0001F1 F5 09            [12]  850 	mov	(__modulong_PARM_2 + 1),a
      0001F3 F5 0A            [12]  851 	mov	(__modulong_PARM_2 + 2),a
      0001F5 F5 0B            [12]  852 	mov	(__modulong_PARM_2 + 3),a
      0001F7 85 32 82         [24]  853 	mov	dpl, _dispalay_data
      0001FA 85 33 83         [24]  854 	mov	dph, (_dispalay_data + 1)
      0001FD 85 34 F0         [24]  855 	mov	b, (_dispalay_data + 2)
      000200 E5 35            [12]  856 	mov	a, (_dispalay_data + 3)
      000202 12 05 F2         [24]  857 	lcall	__modulong
      000205 AC 82            [24]  858 	mov	r4, dpl
      000207 8C 82            [24]  859 	mov	dpl,r4
      000209 12 00 CA         [24]  860 	lcall	_displayDigit
                                    861 ;	monostable.c:184: break;
      00020C 02 02 E7         [24]  862 	ljmp	00111$
                                    863 ;	monostable.c:185: case 1:
      00020F                        864 00107$:
                                    865 ;	monostable.c:186: DISP2 = 1;
                                    866 ;	assignBit
      00020F D2 92            [12]  867 	setb	_P1_2
                                    868 ;	monostable.c:187: DISP1 = DISP3 = DISP4 = 0;
                                    869 ;	assignBit
      000211 C2 94            [12]  870 	clr	_P1_4
                                    871 ;	assignBit
      000213 A2 94            [12]  872 	mov	c,_P1_4
      000215 92 93            [24]  873 	mov	_P1_3,c
                                    874 ;	assignBit
      000217 A2 93            [12]  875 	mov	c,_P1_3
      000219 92 91            [24]  876 	mov	_P1_1,c
                                    877 ;	monostable.c:188: displayDigit((dispalay_data/10)%10);  // Change this value based on the desired number to display
      00021B 75 08 0A         [24]  878 	mov	__divulong_PARM_2,#0x0a
      00021E E4               [12]  879 	clr	a
      00021F F5 09            [12]  880 	mov	(__divulong_PARM_2 + 1),a
      000221 F5 0A            [12]  881 	mov	(__divulong_PARM_2 + 2),a
      000223 F5 0B            [12]  882 	mov	(__divulong_PARM_2 + 3),a
      000225 85 32 82         [24]  883 	mov	dpl, _dispalay_data
      000228 85 33 83         [24]  884 	mov	dph, (_dispalay_data + 1)
      00022B 85 34 F0         [24]  885 	mov	b, (_dispalay_data + 2)
      00022E E5 35            [12]  886 	mov	a, (_dispalay_data + 3)
      000230 12 06 75         [24]  887 	lcall	__divulong
      000233 AC 82            [24]  888 	mov	r4, dpl
      000235 AD 83            [24]  889 	mov	r5, dph
      000237 AE F0            [24]  890 	mov	r6, b
      000239 FF               [12]  891 	mov	r7, a
      00023A 75 08 0A         [24]  892 	mov	__modulong_PARM_2,#0x0a
      00023D E4               [12]  893 	clr	a
      00023E F5 09            [12]  894 	mov	(__modulong_PARM_2 + 1),a
      000240 F5 0A            [12]  895 	mov	(__modulong_PARM_2 + 2),a
      000242 F5 0B            [12]  896 	mov	(__modulong_PARM_2 + 3),a
      000244 8C 82            [24]  897 	mov	dpl, r4
      000246 8D 83            [24]  898 	mov	dph, r5
      000248 8E F0            [24]  899 	mov	b, r6
      00024A EF               [12]  900 	mov	a, r7
      00024B 12 05 F2         [24]  901 	lcall	__modulong
      00024E AC 82            [24]  902 	mov	r4, dpl
      000250 8C 82            [24]  903 	mov	dpl,r4
      000252 12 00 CA         [24]  904 	lcall	_displayDigit
                                    905 ;	monostable.c:189: break;
      000255 02 02 E7         [24]  906 	ljmp	00111$
                                    907 ;	monostable.c:190: case 2:
      000258                        908 00108$:
                                    909 ;	monostable.c:191: DISP3 = 1;
                                    910 ;	assignBit
      000258 D2 93            [12]  911 	setb	_P1_3
                                    912 ;	monostable.c:192: DISP1 = DISP2 = DISP4 = 0;
                                    913 ;	assignBit
      00025A C2 94            [12]  914 	clr	_P1_4
                                    915 ;	assignBit
      00025C A2 94            [12]  916 	mov	c,_P1_4
      00025E 92 92            [24]  917 	mov	_P1_2,c
                                    918 ;	assignBit
      000260 A2 92            [12]  919 	mov	c,_P1_2
      000262 92 91            [24]  920 	mov	_P1_1,c
                                    921 ;	monostable.c:193: displayDigit((dispalay_data/100)%10);  // Change this value based on the desired number to display
      000264 75 08 64         [24]  922 	mov	__divulong_PARM_2,#0x64
      000267 E4               [12]  923 	clr	a
      000268 F5 09            [12]  924 	mov	(__divulong_PARM_2 + 1),a
      00026A F5 0A            [12]  925 	mov	(__divulong_PARM_2 + 2),a
      00026C F5 0B            [12]  926 	mov	(__divulong_PARM_2 + 3),a
      00026E 85 32 82         [24]  927 	mov	dpl, _dispalay_data
      000271 85 33 83         [24]  928 	mov	dph, (_dispalay_data + 1)
      000274 85 34 F0         [24]  929 	mov	b, (_dispalay_data + 2)
      000277 E5 35            [12]  930 	mov	a, (_dispalay_data + 3)
      000279 12 06 75         [24]  931 	lcall	__divulong
      00027C AC 82            [24]  932 	mov	r4, dpl
      00027E AD 83            [24]  933 	mov	r5, dph
      000280 AE F0            [24]  934 	mov	r6, b
      000282 FF               [12]  935 	mov	r7, a
      000283 75 08 0A         [24]  936 	mov	__modulong_PARM_2,#0x0a
      000286 E4               [12]  937 	clr	a
      000287 F5 09            [12]  938 	mov	(__modulong_PARM_2 + 1),a
      000289 F5 0A            [12]  939 	mov	(__modulong_PARM_2 + 2),a
      00028B F5 0B            [12]  940 	mov	(__modulong_PARM_2 + 3),a
      00028D 8C 82            [24]  941 	mov	dpl, r4
      00028F 8D 83            [24]  942 	mov	dph, r5
      000291 8E F0            [24]  943 	mov	b, r6
      000293 EF               [12]  944 	mov	a, r7
      000294 12 05 F2         [24]  945 	lcall	__modulong
      000297 AC 82            [24]  946 	mov	r4, dpl
      000299 8C 82            [24]  947 	mov	dpl,r4
      00029B 12 00 CA         [24]  948 	lcall	_displayDigit
                                    949 ;	monostable.c:194: break;
                                    950 ;	monostable.c:195: case 3:
      00029E 80 47            [24]  951 	sjmp	00111$
      0002A0                        952 00109$:
                                    953 ;	monostable.c:196: DISP4 = 1;
                                    954 ;	assignBit
      0002A0 D2 94            [12]  955 	setb	_P1_4
                                    956 ;	monostable.c:197: DISP1 = DISP2 = DISP3 = 0;
                                    957 ;	assignBit
      0002A2 C2 93            [12]  958 	clr	_P1_3
                                    959 ;	assignBit
      0002A4 A2 93            [12]  960 	mov	c,_P1_3
      0002A6 92 92            [24]  961 	mov	_P1_2,c
                                    962 ;	assignBit
      0002A8 A2 92            [12]  963 	mov	c,_P1_2
      0002AA 92 91            [24]  964 	mov	_P1_1,c
                                    965 ;	monostable.c:198: displayDigit((dispalay_data/1000)%10);  // Change this value based on the desired number to display
      0002AC 75 08 E8         [24]  966 	mov	__divulong_PARM_2,#0xe8
      0002AF 75 09 03         [24]  967 	mov	(__divulong_PARM_2 + 1),#0x03
      0002B2 E4               [12]  968 	clr	a
      0002B3 F5 0A            [12]  969 	mov	(__divulong_PARM_2 + 2),a
      0002B5 F5 0B            [12]  970 	mov	(__divulong_PARM_2 + 3),a
      0002B7 85 32 82         [24]  971 	mov	dpl, _dispalay_data
      0002BA 85 33 83         [24]  972 	mov	dph, (_dispalay_data + 1)
      0002BD 85 34 F0         [24]  973 	mov	b, (_dispalay_data + 2)
      0002C0 E5 35            [12]  974 	mov	a, (_dispalay_data + 3)
      0002C2 12 06 75         [24]  975 	lcall	__divulong
      0002C5 AC 82            [24]  976 	mov	r4, dpl
      0002C7 AD 83            [24]  977 	mov	r5, dph
      0002C9 AE F0            [24]  978 	mov	r6, b
      0002CB FF               [12]  979 	mov	r7, a
      0002CC 75 08 0A         [24]  980 	mov	__modulong_PARM_2,#0x0a
      0002CF E4               [12]  981 	clr	a
      0002D0 F5 09            [12]  982 	mov	(__modulong_PARM_2 + 1),a
      0002D2 F5 0A            [12]  983 	mov	(__modulong_PARM_2 + 2),a
      0002D4 F5 0B            [12]  984 	mov	(__modulong_PARM_2 + 3),a
      0002D6 8C 82            [24]  985 	mov	dpl, r4
      0002D8 8D 83            [24]  986 	mov	dph, r5
      0002DA 8E F0            [24]  987 	mov	b, r6
      0002DC EF               [12]  988 	mov	a, r7
      0002DD 12 05 F2         [24]  989 	lcall	__modulong
      0002E0 AC 82            [24]  990 	mov	r4, dpl
      0002E2 8C 82            [24]  991 	mov	dpl,r4
      0002E4 12 00 CA         [24]  992 	lcall	_displayDigit
                                    993 ;	monostable.c:200: }
      0002E7                        994 00111$:
                                    995 ;	monostable.c:202: }
      0002E7 D0 D0            [24]  996 	pop	psw
      0002E9 D0 00            [24]  997 	pop	(0+0)
      0002EB D0 01            [24]  998 	pop	(0+1)
      0002ED D0 02            [24]  999 	pop	(0+2)
      0002EF D0 03            [24] 1000 	pop	(0+3)
      0002F1 D0 04            [24] 1001 	pop	(0+4)
      0002F3 D0 05            [24] 1002 	pop	(0+5)
      0002F5 D0 06            [24] 1003 	pop	(0+6)
      0002F7 D0 07            [24] 1004 	pop	(0+7)
      0002F9 D0 83            [24] 1005 	pop	dph
      0002FB D0 82            [24] 1006 	pop	dpl
      0002FD D0 F0            [24] 1007 	pop	b
      0002FF D0 E0            [24] 1008 	pop	acc
      000301 D0 20            [24] 1009 	pop	bits
      000303 32               [24] 1010 	reti
                                   1011 ;------------------------------------------------------------
                                   1012 ;Allocation info for local variables in function 'delay_ms'
                                   1013 ;------------------------------------------------------------
                                   1014 ;ms                        Allocated to registers r6 r7 
                                   1015 ;i                         Allocated to registers r4 r5 
                                   1016 ;j                         Allocated to registers r2 r3 
                                   1017 ;------------------------------------------------------------
                                   1018 ;	monostable.c:205: volatile void delay_ms(int ms) {
                                   1019 ;	-----------------------------------------
                                   1020 ;	 function delay_ms
                                   1021 ;	-----------------------------------------
      000304                       1022 _delay_ms:
      000304 AE 82            [24] 1023 	mov	r6, dpl
      000306 AF 83            [24] 1024 	mov	r7, dph
                                   1025 ;	monostable.c:207: for (i = 0; i < ms; i++){
      000308 7C 00            [12] 1026 	mov	r4,#0x00
      00030A 7D 00            [12] 1027 	mov	r5,#0x00
      00030C                       1028 00107$:
      00030C 8E 02            [24] 1029 	mov	ar2,r6
      00030E 8F 03            [24] 1030 	mov	ar3,r7
      000310 C3               [12] 1031 	clr	c
      000311 EC               [12] 1032 	mov	a,r4
      000312 9A               [12] 1033 	subb	a,r2
      000313 ED               [12] 1034 	mov	a,r5
      000314 9B               [12] 1035 	subb	a,r3
      000315 50 14            [24] 1036 	jnc	00109$
                                   1037 ;	monostable.c:208: for (j = 0; j < 112; j++){
      000317 7A 70            [12] 1038 	mov	r2,#0x70
      000319 7B 00            [12] 1039 	mov	r3,#0x00
      00031B                       1040 00105$:
      00031B 1A               [12] 1041 	dec	r2
      00031C BA FF 01         [24] 1042 	cjne	r2,#0xff,00138$
      00031F 1B               [12] 1043 	dec	r3
      000320                       1044 00138$:
      000320 EA               [12] 1045 	mov	a,r2
      000321 4B               [12] 1046 	orl	a,r3
      000322 70 F7            [24] 1047 	jnz	00105$
                                   1048 ;	monostable.c:207: for (i = 0; i < ms; i++){
      000324 0C               [12] 1049 	inc	r4
      000325 BC 00 E4         [24] 1050 	cjne	r4,#0x00,00107$
      000328 0D               [12] 1051 	inc	r5
      000329 80 E1            [24] 1052 	sjmp	00107$
      00032B                       1053 00109$:
                                   1054 ;	monostable.c:213: }
      00032B 22               [24] 1055 	ret
                                   1056 ;------------------------------------------------------------
                                   1057 ;Allocation info for local variables in function 'int_ISR'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	monostable.c:216: void int_ISR(void) __interrupt (0)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function int_ISR
                                   1062 ;	-----------------------------------------
      00032C                       1063 _int_ISR:
      00032C C0 20            [24] 1064 	push	bits
      00032E C0 E0            [24] 1065 	push	acc
      000330 C0 F0            [24] 1066 	push	b
      000332 C0 82            [24] 1067 	push	dpl
      000334 C0 83            [24] 1068 	push	dph
      000336 C0 07            [24] 1069 	push	(0+7)
      000338 C0 06            [24] 1070 	push	(0+6)
      00033A C0 05            [24] 1071 	push	(0+5)
      00033C C0 04            [24] 1072 	push	(0+4)
      00033E C0 03            [24] 1073 	push	(0+3)
      000340 C0 02            [24] 1074 	push	(0+2)
      000342 C0 01            [24] 1075 	push	(0+1)
      000344 C0 00            [24] 1076 	push	(0+0)
      000346 C0 D0            [24] 1077 	push	psw
      000348 75 D0 00         [24] 1078 	mov	psw,#0x00
                                   1079 ;	monostable.c:218: P1_0 = 0;
                                   1080 ;	assignBit
      00034B C2 90            [12] 1081 	clr	_P1_0
                                   1082 ;	monostable.c:220: timer1Init();
      00034D 12 01 5C         [24] 1083 	lcall	_timer1Init
                                   1084 ;	monostable.c:222: }
      000350 D0 D0            [24] 1085 	pop	psw
      000352 D0 00            [24] 1086 	pop	(0+0)
      000354 D0 01            [24] 1087 	pop	(0+1)
      000356 D0 02            [24] 1088 	pop	(0+2)
      000358 D0 03            [24] 1089 	pop	(0+3)
      00035A D0 04            [24] 1090 	pop	(0+4)
      00035C D0 05            [24] 1091 	pop	(0+5)
      00035E D0 06            [24] 1092 	pop	(0+6)
      000360 D0 07            [24] 1093 	pop	(0+7)
      000362 D0 83            [24] 1094 	pop	dph
      000364 D0 82            [24] 1095 	pop	dpl
      000366 D0 F0            [24] 1096 	pop	b
      000368 D0 E0            [24] 1097 	pop	acc
      00036A D0 20            [24] 1098 	pop	bits
      00036C 32               [24] 1099 	reti
                                   1100 ;------------------------------------------------------------
                                   1101 ;Allocation info for local variables in function 'Timer1_ISR'
                                   1102 ;------------------------------------------------------------
                                   1103 ;	monostable.c:223: void Timer1_ISR(void) __interrupt (3){
                                   1104 ;	-----------------------------------------
                                   1105 ;	 function Timer1_ISR
                                   1106 ;	-----------------------------------------
      00036D                       1107 _Timer1_ISR:
      00036D C0 E0            [24] 1108 	push	acc
      00036F C0 07            [24] 1109 	push	ar7
      000371 C0 06            [24] 1110 	push	ar6
      000373 C0 05            [24] 1111 	push	ar5
      000375 C0 04            [24] 1112 	push	ar4
      000377 C0 D0            [24] 1113 	push	psw
      000379 75 D0 00         [24] 1114 	mov	psw,#0x00
                                   1115 ;	monostable.c:224: TH1 = 0xFC;  // You may need to adjust this value based on your requirements
      00037C 75 8D FC         [24] 1116 	mov	_TH1,#0xfc
                                   1117 ;	monostable.c:225: TL1 = 0x17;
      00037F 75 8B 17         [24] 1118 	mov	_TL1,#0x17
                                   1119 ;	monostable.c:226: interrupt_counter++;
      000382 05 3A            [12] 1120 	inc	_interrupt_counter
      000384 E4               [12] 1121 	clr	a
      000385 B5 3A 0C         [24] 1122 	cjne	a,_interrupt_counter,00111$
      000388 05 3B            [12] 1123 	inc	(_interrupt_counter + 1)
      00038A B5 3B 07         [24] 1124 	cjne	a,(_interrupt_counter + 1),00111$
      00038D 05 3C            [12] 1125 	inc	(_interrupt_counter + 2)
      00038F B5 3C 02         [24] 1126 	cjne	a,(_interrupt_counter + 2),00111$
      000392 05 3D            [12] 1127 	inc	(_interrupt_counter + 3)
      000394                       1128 00111$:
                                   1129 ;	monostable.c:227: if(interrupt_counter >= delayTime){
      000394 AC 2F            [24] 1130 	mov	r4,_delayTime
      000396 AD 30            [24] 1131 	mov	r5,(_delayTime + 1)
      000398 7E 00            [12] 1132 	mov	r6,#0x00
      00039A 7F 00            [12] 1133 	mov	r7,#0x00
      00039C C3               [12] 1134 	clr	c
      00039D E5 3A            [12] 1135 	mov	a,_interrupt_counter
      00039F 9C               [12] 1136 	subb	a,r4
      0003A0 E5 3B            [12] 1137 	mov	a,(_interrupt_counter + 1)
      0003A2 9D               [12] 1138 	subb	a,r5
      0003A3 E5 3C            [12] 1139 	mov	a,(_interrupt_counter + 2)
      0003A5 9E               [12] 1140 	subb	a,r6
      0003A6 E5 3D            [12] 1141 	mov	a,(_interrupt_counter + 3)
      0003A8 9F               [12] 1142 	subb	a,r7
      0003A9 40 0D            [24] 1143 	jc	00103$
                                   1144 ;	monostable.c:228: P1_0 =1;
                                   1145 ;	assignBit
      0003AB D2 90            [12] 1146 	setb	_P1_0
                                   1147 ;	monostable.c:229: TR1 = 0;
                                   1148 ;	assignBit
      0003AD C2 8E            [12] 1149 	clr	_TR1
                                   1150 ;	monostable.c:230: interrupt_counter = 0;
      0003AF E4               [12] 1151 	clr	a
      0003B0 F5 3A            [12] 1152 	mov	_interrupt_counter,a
      0003B2 F5 3B            [12] 1153 	mov	(_interrupt_counter + 1),a
      0003B4 F5 3C            [12] 1154 	mov	(_interrupt_counter + 2),a
      0003B6 F5 3D            [12] 1155 	mov	(_interrupt_counter + 3),a
      0003B8                       1156 00103$:
                                   1157 ;	monostable.c:232: }
      0003B8 D0 D0            [24] 1158 	pop	psw
      0003BA D0 04            [24] 1159 	pop	ar4
      0003BC D0 05            [24] 1160 	pop	ar5
      0003BE D0 06            [24] 1161 	pop	ar6
      0003C0 D0 07            [24] 1162 	pop	ar7
      0003C2 D0 E0            [24] 1163 	pop	acc
      0003C4 32               [24] 1164 	reti
                                   1165 ;	eliminated unneeded push/pop dpl
                                   1166 ;	eliminated unneeded push/pop dph
                                   1167 ;	eliminated unneeded push/pop b
                                   1168 ;------------------------------------------------------------
                                   1169 ;Allocation info for local variables in function 'main'
                                   1170 ;------------------------------------------------------------
                                   1171 ;rx_first_byte             Allocated to registers r7 
                                   1172 ;rx_second_byte            Allocated to registers r6 
                                   1173 ;txfirstByte               Allocated to registers r6 
                                   1174 ;txsecondByte              Allocated to registers r7 
                                   1175 ;------------------------------------------------------------
                                   1176 ;	monostable.c:235: void main(void)
                                   1177 ;	-----------------------------------------
                                   1178 ;	 function main
                                   1179 ;	-----------------------------------------
      0003C5                       1180 _main:
                                   1181 ;	monostable.c:263: I2C_Start();
      0003C5 12 00 E4         [24] 1182 	lcall	_I2C_Start
                                   1183 ;	monostable.c:264: I2C_DataWrite(0xA0);
      0003C8 75 82 A0         [24] 1184 	mov	dpl, #0xa0
      0003CB 12 01 00         [24] 1185 	lcall	_I2C_DataWrite
                                   1186 ;	monostable.c:265: I2C_DataWrite(0x00);
      0003CE 75 82 00         [24] 1187 	mov	dpl, #0x00
      0003D1 12 01 00         [24] 1188 	lcall	_I2C_DataWrite
                                   1189 ;	monostable.c:266: I2C_DataWrite(0x01);
      0003D4 75 82 01         [24] 1190 	mov	dpl, #0x01
      0003D7 12 01 00         [24] 1191 	lcall	_I2C_DataWrite
                                   1192 ;	monostable.c:267: I2C_Start();
      0003DA 12 00 E4         [24] 1193 	lcall	_I2C_Start
                                   1194 ;	monostable.c:268: I2C_DataWrite(0xA1);
      0003DD 75 82 A1         [24] 1195 	mov	dpl, #0xa1
      0003E0 12 01 00         [24] 1196 	lcall	_I2C_DataWrite
                                   1197 ;	monostable.c:269: rx_first_byte = I2C_DataRead();
      0003E3 12 01 2C         [24] 1198 	lcall	_I2C_DataRead
      0003E6 AF 82            [24] 1199 	mov	r7, dpl
                                   1200 ;	monostable.c:270: acknowledge();
      0003E8 C0 07            [24] 1201 	push	ar7
      0003EA 12 00 FA         [24] 1202 	lcall	_acknowledge
                                   1203 ;	monostable.c:271: rx_second_byte = I2C_DataRead();
      0003ED 12 01 2C         [24] 1204 	lcall	_I2C_DataRead
      0003F0 AE 82            [24] 1205 	mov	r6, dpl
                                   1206 ;	monostable.c:272: acknowledge();
      0003F2 C0 06            [24] 1207 	push	ar6
      0003F4 12 00 FA         [24] 1208 	lcall	_acknowledge
                                   1209 ;	monostable.c:273: I2C_Stop();
      0003F7 12 00 F0         [24] 1210 	lcall	_I2C_Stop
      0003FA D0 06            [24] 1211 	pop	ar6
      0003FC D0 07            [24] 1212 	pop	ar7
                                   1213 ;	monostable.c:285: delayTime = (rx_first_byte << 8) | rx_second_byte;
      0003FE 8F 05            [24] 1214 	mov	ar5,r7
      000400 E4               [12] 1215 	clr	a
      000401 FF               [12] 1216 	mov	r7,a
      000402 FC               [12] 1217 	mov	r4,a
      000403 EE               [12] 1218 	mov	a,r6
      000404 4F               [12] 1219 	orl	a,r7
      000405 F5 2F            [12] 1220 	mov	_delayTime,a
      000407 EC               [12] 1221 	mov	a,r4
      000408 4D               [12] 1222 	orl	a,r5
      000409 F5 30            [12] 1223 	mov	(_delayTime + 1),a
                                   1224 ;	monostable.c:288: timer0Init();
      00040B 12 01 4E         [24] 1225 	lcall	_timer0Init
                                   1226 ;	monostable.c:289: delay_ms(1000);
      00040E 90 03 E8         [24] 1227 	mov	dptr,#0x03e8
      000411 12 03 04         [24] 1228 	lcall	_delay_ms
                                   1229 ;	monostable.c:291: int0Init();
      000414 12 01 6A         [24] 1230 	lcall	_int0Init
                                   1231 ;	monostable.c:293: while (1)
      000417                       1232 00139$:
                                   1233 ;	monostable.c:297: if (BUTTON1 == 0 ) {  // Button is pressed
      000417 30 B0 03         [24] 1234 	jnb	_P3_0,00245$
      00041A 02 04 9A         [24] 1235 	ljmp	00115$
      00041D                       1236 00245$:
                                   1237 ;	monostable.c:298: if(delayTime > 9999){
      00041D C3               [12] 1238 	clr	c
      00041E 74 0F            [12] 1239 	mov	a,#0x0f
      000420 95 2F            [12] 1240 	subb	a,_delayTime
      000422 74 27            [12] 1241 	mov	a,#0x27
      000424 95 30            [12] 1242 	subb	a,(_delayTime + 1)
      000426 50 07            [24] 1243 	jnc	00102$
                                   1244 ;	monostable.c:299: delayTime =0;
      000428 E4               [12] 1245 	clr	a
      000429 F5 2F            [12] 1246 	mov	_delayTime,a
      00042B F5 30            [12] 1247 	mov	(_delayTime + 1),a
      00042D 80 0B            [24] 1248 	sjmp	00103$
      00042F                       1249 00102$:
                                   1250 ;	monostable.c:302: delayTime +=1;
      00042F 74 01            [12] 1251 	mov	a,#0x01
      000431 25 2F            [12] 1252 	add	a, _delayTime
      000433 F5 2F            [12] 1253 	mov	_delayTime,a
      000435 E4               [12] 1254 	clr	a
      000436 35 30            [12] 1255 	addc	a, (_delayTime + 1)
      000438 F5 30            [12] 1256 	mov	(_delayTime + 1),a
      00043A                       1257 00103$:
                                   1258 ;	monostable.c:305: delay_ms(50);  // Debouncing delay
      00043A 90 00 32         [24] 1259 	mov	dptr,#0x0032
      00043D 12 03 04         [24] 1260 	lcall	_delay_ms
                                   1261 ;	monostable.c:306: while (BUTTON1 == 0) {
      000440                       1262 00111$:
      000440 20 B0 60         [24] 1263 	jb	_P3_0,00116$
                                   1264 ;	monostable.c:307: if(longPressTime > 5000-acceleration){
      000443 74 88            [12] 1265 	mov	a,#0x88
      000445 C3               [12] 1266 	clr	c
      000446 95 38            [12] 1267 	subb	a,_acceleration
      000448 FE               [12] 1268 	mov	r6,a
      000449 74 13            [12] 1269 	mov	a,#0x13
      00044B 95 39            [12] 1270 	subb	a,(_acceleration + 1)
      00044D FF               [12] 1271 	mov	r7,a
      00044E C3               [12] 1272 	clr	c
      00044F EE               [12] 1273 	mov	a,r6
      000450 95 36            [12] 1274 	subb	a,_longPressTime
      000452 EF               [12] 1275 	mov	a,r7
      000453 95 37            [12] 1276 	subb	a,(_longPressTime + 1)
      000455 50 39            [24] 1277 	jnc	00110$
                                   1278 ;	monostable.c:308: longPressTime = 0;
      000457 E4               [12] 1279 	clr	a
      000458 F5 36            [12] 1280 	mov	_longPressTime,a
      00045A F5 37            [12] 1281 	mov	(_longPressTime + 1),a
                                   1282 ;	monostable.c:310: if(delayTime > 9999){
      00045C C3               [12] 1283 	clr	c
      00045D 74 0F            [12] 1284 	mov	a,#0x0f
      00045F 95 2F            [12] 1285 	subb	a,_delayTime
      000461 74 27            [12] 1286 	mov	a,#0x27
      000463 95 30            [12] 1287 	subb	a,(_delayTime + 1)
      000465 50 08            [24] 1288 	jnc	00105$
                                   1289 ;	monostable.c:311: delayTime =1 ;
      000467 75 2F 01         [24] 1290 	mov	_delayTime,#0x01
      00046A 75 30 00         [24] 1291 	mov	(_delayTime + 1),#0x00
      00046D 80 0B            [24] 1292 	sjmp	00106$
      00046F                       1293 00105$:
                                   1294 ;	monostable.c:314: delayTime +=1;
      00046F 74 01            [12] 1295 	mov	a,#0x01
      000471 25 2F            [12] 1296 	add	a, _delayTime
      000473 F5 2F            [12] 1297 	mov	_delayTime,a
      000475 E4               [12] 1298 	clr	a
      000476 35 30            [12] 1299 	addc	a, (_delayTime + 1)
      000478 F5 30            [12] 1300 	mov	(_delayTime + 1),a
      00047A                       1301 00106$:
                                   1302 ;	monostable.c:316: if(acceleration < 4500){
      00047A C3               [12] 1303 	clr	c
      00047B E5 38            [12] 1304 	mov	a,_acceleration
      00047D 94 94            [12] 1305 	subb	a,#0x94
      00047F E5 39            [12] 1306 	mov	a,(_acceleration + 1)
      000481 94 11            [12] 1307 	subb	a,#0x11
      000483 50 0B            [24] 1308 	jnc	00110$
                                   1309 ;	monostable.c:317: acceleration = 30 +acceleration;
      000485 74 1E            [12] 1310 	mov	a,#0x1e
      000487 25 38            [12] 1311 	add	a, _acceleration
      000489 F5 38            [12] 1312 	mov	_acceleration,a
      00048B E4               [12] 1313 	clr	a
      00048C 35 39            [12] 1314 	addc	a, (_acceleration + 1)
      00048E F5 39            [12] 1315 	mov	(_acceleration + 1),a
      000490                       1316 00110$:
                                   1317 ;	monostable.c:320: longPressTime++;
      000490 05 36            [12] 1318 	inc	_longPressTime
      000492 E4               [12] 1319 	clr	a
      000493 B5 36 AA         [24] 1320 	cjne	a,_longPressTime,00111$
      000496 05 37            [12] 1321 	inc	(_longPressTime + 1)
      000498 80 A6            [24] 1322 	sjmp	00111$
      00049A                       1323 00115$:
                                   1324 ;	monostable.c:326: longPressTime = 0;
      00049A E4               [12] 1325 	clr	a
      00049B F5 36            [12] 1326 	mov	_longPressTime,a
      00049D F5 37            [12] 1327 	mov	(_longPressTime + 1),a
                                   1328 ;	monostable.c:327: acceleration =  0;
      00049F F5 38            [12] 1329 	mov	_acceleration,a
      0004A1 F5 39            [12] 1330 	mov	(_acceleration + 1),a
      0004A3                       1331 00116$:
                                   1332 ;	monostable.c:329: if (BUTTON2 == 0) {  // Button is pressed
      0004A3 20 B1 79         [24] 1333 	jb	_P3_1,00131$
                                   1334 ;	monostable.c:330: if(delayTime <= 1){
      0004A6 C3               [12] 1335 	clr	c
      0004A7 74 01            [12] 1336 	mov	a,#0x01
      0004A9 95 2F            [12] 1337 	subb	a,_delayTime
      0004AB E4               [12] 1338 	clr	a
      0004AC 95 30            [12] 1339 	subb	a,(_delayTime + 1)
      0004AE 40 08            [24] 1340 	jc	00118$
                                   1341 ;	monostable.c:331: delayTime = 9999;
      0004B0 75 2F 0F         [24] 1342 	mov	_delayTime,#0x0f
      0004B3 75 30 27         [24] 1343 	mov	(_delayTime + 1),#0x27
      0004B6 80 09            [24] 1344 	sjmp	00119$
      0004B8                       1345 00118$:
                                   1346 ;	monostable.c:333: delayTime-=1;
      0004B8 15 2F            [12] 1347 	dec	_delayTime
      0004BA 74 FF            [12] 1348 	mov	a,#0xff
      0004BC B5 2F 02         [24] 1349 	cjne	a,_delayTime,00254$
      0004BF 15 30            [12] 1350 	dec	(_delayTime + 1)
      0004C1                       1351 00254$:
      0004C1                       1352 00119$:
                                   1353 ;	monostable.c:335: delay_ms(50);  // Debouncing delay
      0004C1 90 00 32         [24] 1354 	mov	dptr,#0x0032
      0004C4 12 03 04         [24] 1355 	lcall	_delay_ms
                                   1356 ;	monostable.c:336: while (BUTTON2 == 0 ) {
      0004C7                       1357 00127$:
      0004C7 20 B1 5E         [24] 1358 	jb	_P3_1,00132$
                                   1359 ;	monostable.c:337: if(longPressTime > 5000-acceleration){
      0004CA 74 88            [12] 1360 	mov	a,#0x88
      0004CC C3               [12] 1361 	clr	c
      0004CD 95 38            [12] 1362 	subb	a,_acceleration
      0004CF FE               [12] 1363 	mov	r6,a
      0004D0 74 13            [12] 1364 	mov	a,#0x13
      0004D2 95 39            [12] 1365 	subb	a,(_acceleration + 1)
      0004D4 FF               [12] 1366 	mov	r7,a
      0004D5 C3               [12] 1367 	clr	c
      0004D6 EE               [12] 1368 	mov	a,r6
      0004D7 95 36            [12] 1369 	subb	a,_longPressTime
      0004D9 EF               [12] 1370 	mov	a,r7
      0004DA 95 37            [12] 1371 	subb	a,(_longPressTime + 1)
      0004DC 50 37            [24] 1372 	jnc	00126$
                                   1373 ;	monostable.c:338: longPressTime = 0;
      0004DE E4               [12] 1374 	clr	a
      0004DF F5 36            [12] 1375 	mov	_longPressTime,a
      0004E1 F5 37            [12] 1376 	mov	(_longPressTime + 1),a
                                   1377 ;	monostable.c:339: if(delayTime < 1){
      0004E3 C3               [12] 1378 	clr	c
      0004E4 E5 2F            [12] 1379 	mov	a,_delayTime
      0004E6 94 01            [12] 1380 	subb	a,#0x01
      0004E8 E5 30            [12] 1381 	mov	a,(_delayTime + 1)
      0004EA 94 00            [12] 1382 	subb	a,#0x00
      0004EC 50 08            [24] 1383 	jnc	00121$
                                   1384 ;	monostable.c:340: delayTime = 9999;
      0004EE 75 2F 0F         [24] 1385 	mov	_delayTime,#0x0f
      0004F1 75 30 27         [24] 1386 	mov	(_delayTime + 1),#0x27
      0004F4 80 09            [24] 1387 	sjmp	00122$
      0004F6                       1388 00121$:
                                   1389 ;	monostable.c:342: delayTime-=1;
      0004F6 15 2F            [12] 1390 	dec	_delayTime
      0004F8 74 FF            [12] 1391 	mov	a,#0xff
      0004FA B5 2F 02         [24] 1392 	cjne	a,_delayTime,00258$
      0004FD 15 30            [12] 1393 	dec	(_delayTime + 1)
      0004FF                       1394 00258$:
      0004FF                       1395 00122$:
                                   1396 ;	monostable.c:344: if(acceleration < 4500){
      0004FF C3               [12] 1397 	clr	c
      000500 E5 38            [12] 1398 	mov	a,_acceleration
      000502 94 94            [12] 1399 	subb	a,#0x94
      000504 E5 39            [12] 1400 	mov	a,(_acceleration + 1)
      000506 94 11            [12] 1401 	subb	a,#0x11
      000508 50 0B            [24] 1402 	jnc	00126$
                                   1403 ;	monostable.c:345: acceleration = 30 +acceleration;
      00050A 74 1E            [12] 1404 	mov	a,#0x1e
      00050C 25 38            [12] 1405 	add	a, _acceleration
      00050E F5 38            [12] 1406 	mov	_acceleration,a
      000510 E4               [12] 1407 	clr	a
      000511 35 39            [12] 1408 	addc	a, (_acceleration + 1)
      000513 F5 39            [12] 1409 	mov	(_acceleration + 1),a
      000515                       1410 00126$:
                                   1411 ;	monostable.c:348: longPressTime++;
      000515 05 36            [12] 1412 	inc	_longPressTime
      000517 E4               [12] 1413 	clr	a
      000518 B5 36 AC         [24] 1414 	cjne	a,_longPressTime,00127$
      00051B 05 37            [12] 1415 	inc	(_longPressTime + 1)
      00051D 80 A8            [24] 1416 	sjmp	00127$
      00051F                       1417 00131$:
                                   1418 ;	monostable.c:354: longPressTime = 0;
      00051F E4               [12] 1419 	clr	a
      000520 F5 36            [12] 1420 	mov	_longPressTime,a
      000522 F5 37            [12] 1421 	mov	(_longPressTime + 1),a
                                   1422 ;	monostable.c:355: acceleration =  0;
      000524 F5 38            [12] 1423 	mov	_acceleration,a
      000526 F5 39            [12] 1424 	mov	(_acceleration + 1),a
      000528                       1425 00132$:
                                   1426 ;	monostable.c:358: buttonStat = BUTTON3;
      000528 A2 82            [12] 1427 	mov	c,_P0_2
      00052A E4               [12] 1428 	clr	a
      00052B 33               [12] 1429 	rlc	a
                                   1430 ;	monostable.c:359: if(lastButtonStat != buttonStat){
      00052C F5 2D            [12] 1431 	mov	_buttonStat,a
      00052E B5 2C 02         [24] 1432 	cjne	a,_lastButtonStat,00261$
      000531 80 4D            [24] 1433 	sjmp	00137$
      000533                       1434 00261$:
                                   1435 ;	monostable.c:360: TR0  = 0;
                                   1436 ;	assignBit
      000533 C2 8C            [12] 1437 	clr	_TR0
                                   1438 ;	monostable.c:362: txsecondByte = delayTime ;
      000535 AF 2F            [24] 1439 	mov	r7,_delayTime
                                   1440 ;	monostable.c:363: txfirstByte = delayTime >> 8; 
      000537 AE 30            [24] 1441 	mov	r6,(_delayTime + 1)
                                   1442 ;	monostable.c:365: if(buttonStat == 1){
      000539 74 01            [12] 1443 	mov	a,#0x01
      00053B B5 2D 31         [24] 1444 	cjne	a,_buttonStat,00134$
                                   1445 ;	monostable.c:366: I2C_Start(); 
      00053E C0 07            [24] 1446 	push	ar7
      000540 C0 06            [24] 1447 	push	ar6
      000542 12 00 E4         [24] 1448 	lcall	_I2C_Start
                                   1449 ;	monostable.c:367: I2C_DataWrite(0xA0);
      000545 75 82 A0         [24] 1450 	mov	dpl, #0xa0
      000548 12 01 00         [24] 1451 	lcall	_I2C_DataWrite
                                   1452 ;	monostable.c:368: I2C_DataWrite(0x00);
      00054B 75 82 00         [24] 1453 	mov	dpl, #0x00
      00054E 12 01 00         [24] 1454 	lcall	_I2C_DataWrite
                                   1455 ;	monostable.c:369: I2C_DataWrite(0x01);
      000551 75 82 01         [24] 1456 	mov	dpl, #0x01
      000554 12 01 00         [24] 1457 	lcall	_I2C_DataWrite
      000557 D0 06            [24] 1458 	pop	ar6
                                   1459 ;	monostable.c:370: I2C_DataWrite(txfirstByte);
      000559 8E 82            [24] 1460 	mov	dpl, r6
      00055B 12 01 00         [24] 1461 	lcall	_I2C_DataWrite
      00055E D0 07            [24] 1462 	pop	ar7
                                   1463 ;	monostable.c:371: I2C_DataWrite(txsecondByte);
      000560 8F 82            [24] 1464 	mov	dpl, r7
      000562 12 01 00         [24] 1465 	lcall	_I2C_DataWrite
                                   1466 ;	monostable.c:372: I2C_Stop();
      000565 12 00 F0         [24] 1467 	lcall	_I2C_Stop
                                   1468 ;	monostable.c:373: saving();
      000568 12 05 86         [24] 1469 	lcall	_saving
                                   1470 ;	monostable.c:374: TR0 = 1;
                                   1471 ;	assignBit
      00056B D2 8C            [12] 1472 	setb	_TR0
      00056D 80 11            [24] 1473 	sjmp	00137$
      00056F                       1474 00134$:
                                   1475 ;	monostable.c:377: P2 = displayData[10];
      00056F 85 2B A0         [24] 1476 	mov	_P2,(_displayData + 0x000a)
                                   1477 ;	monostable.c:378: DISP1=DISP2=DISP3=DISP4 = 1;
                                   1478 ;	assignBit
      000572 D2 94            [12] 1479 	setb	_P1_4
                                   1480 ;	assignBit
      000574 A2 94            [12] 1481 	mov	c,_P1_4
      000576 92 93            [24] 1482 	mov	_P1_3,c
                                   1483 ;	assignBit
      000578 A2 93            [12] 1484 	mov	c,_P1_3
      00057A 92 92            [24] 1485 	mov	_P1_2,c
                                   1486 ;	assignBit
      00057C A2 92            [12] 1487 	mov	c,_P1_2
      00057E 92 91            [24] 1488 	mov	_P1_1,c
      000580                       1489 00137$:
                                   1490 ;	monostable.c:382: lastButtonStat = buttonStat;
      000580 85 2D 2C         [24] 1491 	mov	_lastButtonStat,_buttonStat
                                   1492 ;	monostable.c:387: }
      000583 02 04 17         [24] 1493 	ljmp	00139$
                                   1494 ;------------------------------------------------------------
                                   1495 ;Allocation info for local variables in function 'saving'
                                   1496 ;------------------------------------------------------------
                                   1497 ;i                         Allocated to registers r7 
                                   1498 ;j                         Allocated to registers r6 
                                   1499 ;------------------------------------------------------------
                                   1500 ;	monostable.c:389: void saving(void){
                                   1501 ;	-----------------------------------------
                                   1502 ;	 function saving
                                   1503 ;	-----------------------------------------
      000586                       1504 _saving:
                                   1505 ;	monostable.c:390: for(int i=0;i<7;i++){
      000586 7F 00            [12] 1506 	mov	r7,#0x00
      000588                       1507 00112$:
      000588 BF 07 00         [24] 1508 	cjne	r7,#0x07,00166$
      00058B                       1509 00166$:
      00058B 50 64            [24] 1510 	jnc	00114$
                                   1511 ;	monostable.c:391: for(int j=3;j>=0;j--){
      00058D 7E 03            [12] 1512 	mov	r6,#0x03
      00058F                       1513 00109$:
      00058F EE               [12] 1514 	mov	a,r6
      000590 20 E7 5B         [24] 1515 	jb	acc.7,00113$
                                   1516 ;	monostable.c:392: switch(j)
      000593 BE 00 02         [24] 1517 	cjne	r6,#0x00,00169$
      000596 80 0F            [24] 1518 	sjmp	00101$
      000598                       1519 00169$:
      000598 BE 01 02         [24] 1520 	cjne	r6,#0x01,00170$
      00059B 80 18            [24] 1521 	sjmp	00102$
      00059D                       1522 00170$:
      00059D BE 02 02         [24] 1523 	cjne	r6,#0x02,00171$
      0005A0 80 21            [24] 1524 	sjmp	00103$
      0005A2                       1525 00171$:
                                   1526 ;	monostable.c:394: case 0:
      0005A2 BE 03 38         [24] 1527 	cjne	r6,#0x03,00105$
      0005A5 80 2A            [24] 1528 	sjmp	00104$
      0005A7                       1529 00101$:
                                   1530 ;	monostable.c:395: DISP1 = 1;
                                   1531 ;	assignBit
      0005A7 D2 91            [12] 1532 	setb	_P1_1
                                   1533 ;	monostable.c:396: DISP2 = DISP3 = DISP4 = 0;
                                   1534 ;	assignBit
      0005A9 C2 94            [12] 1535 	clr	_P1_4
                                   1536 ;	assignBit
      0005AB A2 94            [12] 1537 	mov	c,_P1_4
      0005AD 92 93            [24] 1538 	mov	_P1_3,c
                                   1539 ;	assignBit
      0005AF A2 93            [12] 1540 	mov	c,_P1_3
      0005B1 92 92            [24] 1541 	mov	_P1_2,c
                                   1542 ;	monostable.c:398: break;
                                   1543 ;	monostable.c:399: case 1:
      0005B3 80 28            [24] 1544 	sjmp	00105$
      0005B5                       1545 00102$:
                                   1546 ;	monostable.c:400: DISP2 = 1;
                                   1547 ;	assignBit
      0005B5 D2 92            [12] 1548 	setb	_P1_2
                                   1549 ;	monostable.c:401: DISP1 = DISP3 = DISP4 = 0;
                                   1550 ;	assignBit
      0005B7 C2 94            [12] 1551 	clr	_P1_4
                                   1552 ;	assignBit
      0005B9 A2 94            [12] 1553 	mov	c,_P1_4
      0005BB 92 93            [24] 1554 	mov	_P1_3,c
                                   1555 ;	assignBit
      0005BD A2 93            [12] 1556 	mov	c,_P1_3
      0005BF 92 91            [24] 1557 	mov	_P1_1,c
                                   1558 ;	monostable.c:403: break;
                                   1559 ;	monostable.c:404: case 2:
      0005C1 80 1A            [24] 1560 	sjmp	00105$
      0005C3                       1561 00103$:
                                   1562 ;	monostable.c:405: DISP3 = 1;
                                   1563 ;	assignBit
      0005C3 D2 93            [12] 1564 	setb	_P1_3
                                   1565 ;	monostable.c:406: DISP1 = DISP2 = DISP4 = 0;
                                   1566 ;	assignBit
      0005C5 C2 94            [12] 1567 	clr	_P1_4
                                   1568 ;	assignBit
      0005C7 A2 94            [12] 1569 	mov	c,_P1_4
      0005C9 92 92            [24] 1570 	mov	_P1_2,c
                                   1571 ;	assignBit
      0005CB A2 92            [12] 1572 	mov	c,_P1_2
      0005CD 92 91            [24] 1573 	mov	_P1_1,c
                                   1574 ;	monostable.c:408: break;
                                   1575 ;	monostable.c:409: case 3:
      0005CF 80 0C            [24] 1576 	sjmp	00105$
      0005D1                       1577 00104$:
                                   1578 ;	monostable.c:410: DISP4 = 1;
                                   1579 ;	assignBit
      0005D1 D2 94            [12] 1580 	setb	_P1_4
                                   1581 ;	monostable.c:411: DISP1 = DISP2 = DISP3 = 0;
                                   1582 ;	assignBit
      0005D3 C2 93            [12] 1583 	clr	_P1_3
                                   1584 ;	assignBit
      0005D5 A2 93            [12] 1585 	mov	c,_P1_3
      0005D7 92 92            [24] 1586 	mov	_P1_2,c
                                   1587 ;	assignBit
      0005D9 A2 92            [12] 1588 	mov	c,_P1_2
      0005DB 92 91            [24] 1589 	mov	_P1_1,c
                                   1590 ;	monostable.c:414: }
      0005DD                       1591 00105$:
                                   1592 ;	monostable.c:415: delay_ms(70);
      0005DD 90 00 46         [24] 1593 	mov	dptr,#0x0046
      0005E0 C0 07            [24] 1594 	push	ar7
      0005E2 C0 06            [24] 1595 	push	ar6
      0005E4 12 03 04         [24] 1596 	lcall	_delay_ms
      0005E7 D0 06            [24] 1597 	pop	ar6
      0005E9 D0 07            [24] 1598 	pop	ar7
                                   1599 ;	monostable.c:391: for(int j=3;j>=0;j--){
      0005EB 1E               [12] 1600 	dec	r6
      0005EC 80 A1            [24] 1601 	sjmp	00109$
      0005EE                       1602 00113$:
                                   1603 ;	monostable.c:390: for(int i=0;i<7;i++){
      0005EE 0F               [12] 1604 	inc	r7
      0005EF 80 97            [24] 1605 	sjmp	00112$
      0005F1                       1606 00114$:
                                   1607 ;	monostable.c:419: }
      0005F1 22               [24] 1608 	ret
                                   1609 	.area CSEG    (CODE)
                                   1610 	.area CONST   (CODE)
                                   1611 	.area XINIT   (CODE)
                                   1612 	.area CABS    (ABS,CODE)
