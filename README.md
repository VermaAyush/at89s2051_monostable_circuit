# at89s2051_monostable_circuit
In this project we have used at89s52 microcontroller to control on time of solenoid valve we can set time using pushbutton and save to eeprom and see the value in sevensegment display



cmd command for flashing at89s52 with arduino

"C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\avrdude.exe" -C C:/AVR8051.conf -c stk500v1 -P COM9 -p 89s52 -b 19200 -U flash:w:"C:\Users\electroGoal\Documents\8051_sdcc_code\monostable_circuit\monostable.hex":a

