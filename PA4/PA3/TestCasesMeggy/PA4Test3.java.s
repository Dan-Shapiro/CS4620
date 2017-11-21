 .file  "main.java" 
 __SREG__ = 0x3f 
 __SP_H__ = 0x3e 
  __SP_L__ = 0x3d 
 __tmp_reg__ = 0 
 __zero_reg__ = 1 
 .global __do_copy_data 
 .global __do_clear_bss 
 .text 
 .global main 
.type   main, @function 
 main: 
 push r29 
 push r28 
 in r28,__SP_L__ 
 in r29,__SP_H__ 
 /* prologue: function */ 
 call _Z18MeggyJrSimpleSetupv 
 /* Need to call this so that the meggy library gets set up */


 
MJ_L0:
 # True/1 expression 
 ldi    r22, 1 
 # push one byte expression onto stack 
 push   r22 
 # if not(condition) 
 # load a one byte expression off stack 
 pop    r24 
 ldi    r25,0 
 cp     r24, r25 
# WANT breq  
 brne   MJ_L1 
 jmp  MJ_L2
MJ_L1:
  ### MeggyCheckButton 
 call    _Z16CheckButtonsDownv 
 lds    r24, Button_Up 
 # if button value is zero, push 0 else push 1 
 tst    r24 
 breq   MJ_L6 
 MJ_L7:  
 ldi    r24, 1 
 jmp    MJ_L8 
 MJ_L6: 
 MJ_L8: 
 # push one byte expression onto stack 
 push   r24 
 # load condition and branch if false 
 # load a one byte expression off  stack 
 pop    r24 
 #load zero into reg 
 ldi    r25, 0 
 #use cp to set SREG 
 cp     r24, r25 
 #WANT breq MJ_L0 
 brne  MJ_L4 
 jmp    MJ_L3
MJ_L4:
# NewExp 
 ldi    r24, lo8(0) 
 ldi    r25, hi8(0) 
 # allocating object of size 0 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
  # Load constant int  
 ldi    r24,lo8(3) 
 ldi    r25,hi8(3) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
  # Load constant int  
 ldi    r24,lo8(7) 
 ldi    r25,hi8(7) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
#### function call 
 # put parameter values into appropriate registers
# load a one byte expression off stack
pop r20
# load a one byte expression off stack
pop r22

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      reddot
jmp MJ_L5
MJ_L3:
MJ_L5:
  ### MeggyCheckButton 
 call    _Z16CheckButtonsDownv 
 lds    r24, Button_Down 
 # if button value is zero, push 0 else push 1 
 tst    r24 
 breq   MJ_L12 
 MJ_L13:  
 ldi    r24, 1 
 jmp    MJ_L14 
 MJ_L12: 
 MJ_L14: 
 # push one byte expression onto stack 
 push   r24 
 # load condition and branch if false 
 # load a one byte expression off  stack 
 pop    r24 
 #load zero into reg 
 ldi    r25, 0 
 #use cp to set SREG 
 cp     r24, r25 
 #WANT breq MJ_L0 
 brne  MJ_L10 
 jmp    MJ_L9
MJ_L10:
# NewExp 
 ldi    r24, lo8(0) 
 ldi    r25, hi8(0) 
 # allocating object of size 0 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
  # Load constant int  
 ldi    r24,lo8(2) 
 ldi    r25,hi8(2) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
  # Load constant int  
 ldi    r24,lo8(4) 
 ldi    r25,hi8(4) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
#### function call 
 # put parameter values into appropriate registers
# load a one byte expression off stack
pop r20
# load a one byte expression off stack
pop r22

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      reddot
jmp MJ_L11
MJ_L9:
MJ_L11:
  ### MeggyCheckButton 
 call    _Z16CheckButtonsDownv 
 lds    r24, Button_Left 
 # if button value is zero, push 0 else push 1 
 tst    r24 
 breq   MJ_L18 
 MJ_L19:  
 ldi    r24, 1 
 jmp    MJ_L20 
 MJ_L18: 
 MJ_L20: 
 # push one byte expression onto stack 
 push   r24 
 # load condition and branch if false 
 # load a one byte expression off  stack 
 pop    r24 
 #load zero into reg 
 ldi    r25, 0 
 #use cp to set SREG 
 cp     r24, r25 
 #WANT breq MJ_L0 
 brne  MJ_L16 
 jmp    MJ_L15
MJ_L16:
# NewExp 
 ldi    r24, lo8(0) 
 ldi    r25, hi8(0) 
 # allocating object of size 0 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
  # Load constant int  
 ldi    r24,lo8(6) 
 ldi    r25,hi8(6) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
  # Load constant int  
 ldi    r24,lo8(1) 
 ldi    r25,hi8(1) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
#### function call 
 # put parameter values into appropriate registers
# load a one byte expression off stack
pop r20
# load a one byte expression off stack
pop r22

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      reddot
jmp MJ_L17
MJ_L15:
MJ_L17:
  ### MeggyCheckButton 
 call    _Z16CheckButtonsDownv 
 lds    r24, Button_Right 
 # if button value is zero, push 0 else push 1 
 tst    r24 
 breq   MJ_L24 
 MJ_L25:  
 ldi    r24, 1 
 jmp    MJ_L26 
 MJ_L24: 
 MJ_L26: 
 # push one byte expression onto stack 
 push   r24 
 # load condition and branch if false 
 # load a one byte expression off  stack 
 pop    r24 
 #load zero into reg 
 ldi    r25, 0 
 #use cp to set SREG 
 cp     r24, r25 
 #WANT breq MJ_L0 
 brne  MJ_L22 
 jmp    MJ_L21
MJ_L22:
# NewExp 
 ldi    r24, lo8(0) 
 ldi    r25, hi8(0) 
 # allocating object of size 0 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
  # Load constant int  
 ldi    r24,lo8(3) 
 ldi    r25,hi8(3) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
  # Load constant int  
 ldi    r24,lo8(6) 
 ldi    r25,hi8(6) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
# less than expression 
 # load a two byte expression off stack 
 pop    r18 
 pop    r19 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 cp    r24, r18 
 cpc   r25, r19 
 brlt MJ_L31 
 # load false 
 MJ_L30: 
 ldi     r24, 0 
 jmp      MJ_L32 
 # load true 
 MJ_L31: 
 ldi    r24, 1 
 # push result of less than 
 MJ_L32: 
 # push one byte expression onto stack 
 push   r24
 # load condition and branch if false 
 # load a one byte expression off  stack 
 pop    r24 
 #load zero into reg 
 ldi    r25, 0 
 #use cp to set SREG 
 cp     r24, r25 
 #WANT breq MJ_L0 
 brne  MJ_L28 
 jmp    MJ_L27
MJ_L28:
# NewExp 
 ldi    r24, lo8(0) 
 ldi    r25, hi8(0) 
 # allocating object of size 0 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
  # Load constant int  
 ldi    r24,lo8(2) 
 ldi    r25,hi8(2) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
  # Load constant int  
 ldi    r24,lo8(7) 
 ldi    r25,hi8(7) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
#### function call 
 # put parameter values into appropriate registers
# load a one byte expression off stack
pop r20
# load a one byte expression off stack
pop r22

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      reddot
jmp MJ_L29
MJ_L27:
MJ_L29:
jmp MJ_L23
MJ_L21:
MJ_L23:
 # jump to while test 
 jmp   MJ_L0
MJ_L2:
/* epilogue start */ 
 endLabel: 
 jmp endLabel 
 ret 
 .size   main, .-main
 .text 
 .global _reddot 
 .type  _reddot, @function 
 reddot: 
 push   r29 
 push   r28 
 # make space for locals and params 
 ldi    r30, 0 

 push   r30 
 push   r30 
 push   r30 
 push   r30 
 # Copy stack pointer to frame pointer 
 in     r28,__SP_L__ 
 in     r29,__SP_H__ 
 # save off parameters 
 
std Y + 2, r25
std Y + 1, r24
std Y + 3, r22
std Y + 4, r20
/* done with function sSimple_reddot prologue */
# IdExp0 
  # load value for variable a 
 # variable is a local or param variable 
 # load a one byte variable from base+offset 
 ldd    r24, Y + 3 
 # push one byte expression onto stack 
 push   r24
# IdExp0 
  # load value for variable a 
 # variable is a local or param variable 
 # load a one byte variable from base+offset 
 ldd    r24, Y + 4 
 # push one byte expression onto stack 
 push   r24
  # Color expression  
 ldi    r22,1 
  # push one byte expression onto stack 
 push   r22 
 ### Meggy.setPixel(x,y,color) call 
 # load a one byte expression off stack 
 pop    r20 
 # load a one byte expression off stack 
 pop    r22 
 # load a one byte expression off stack 
 pop    r24 
 call   _Z6DrawPxhhh 
 call   _Z12DisplaySlatev 
/* epilogue start for sampletest2_testfun1 */ 
 # no return value 
 # pop space off stack for parameters and locals
 pop   r30 
 pop   r30 
 pop   r30 
 pop   r30 
# restoring the frame pointer 
 pop    r28 
 pop    r29 
 ret 
 .size reddot, .- _reddot
/* epilogue start */ 
 endLabel: 
 jmp endLabel 
 ret 
 .size   main, .-main
 .text 
 .global _randomVal 
 .type  _randomVal, @function 
 randomVal: 
 push   r29 
 push   r28 
 # make space for locals and params 
 ldi    r30, 0 

 push   r30 
 push   r30 
 push   r30 
 # Copy stack pointer to frame pointer 
 in     r28,__SP_L__ 
 in     r29,__SP_H__ 
 # save off parameters 
 
std Y + 2, r25
std Y + 1, r24
std Y + 3, r22
/* done with function sSimple_randomVal prologue */
# IdExp0 
  # load value for variable a 
 # variable is a local or param variable 
 # load a one byte variable from base+offset 
 ldd    r24, Y + 3 
 # push one byte expression onto stack 
 push   r24
  # Load constant int  
 ldi    r24,lo8(2) 
 ldi    r25,hi8(2) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
 # load a two byte expression off stack 
 pop    r18 
 pop    r19 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 # Do add operation 
 add    r24, r18 
 adc    r25, r19 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
  # Casting int to byte by popping 
 # 2 bytes off stack and only pushing low order bits 
 # back on.  Low order bits are on top of stack. 
 pop    r24 
 pop    r25 
 push   r24 
/* epilogue start for sampletest2_testfun1 */ 
 # no return value 
 # pop space off stack for parameters and locals
 pop   r30 
 pop   r30 
 pop   r30 
# restoring the frame pointer 
 pop    r28 
 pop    r29 
 ret 
 .size randomVal, .- _randomVal
