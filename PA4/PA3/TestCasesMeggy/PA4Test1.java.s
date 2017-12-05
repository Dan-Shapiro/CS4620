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

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      Method1
 # jump to while test 
 jmp   MJ_L0
MJ_L2:
/* epilogue start */ 
 endLabel: 
 jmp endLabel 
 ret 
 .size   main, .-main
 .text 
 .global _Method1 
 .type  _Method1, @function 
 Method1: 
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
/* done with function sClass2_Method1 prologue */
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
 ldd    r24, Y + 3 
 # push one byte expression onto stack 
 push   r24
  # Color expression  
 ldi    r22,2 
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
 ldd    r24, Y + 3 
 # push one byte expression onto stack 
 push   r24
  ### Meggy.getPixel(x,y) call 
 # load a one byte expression off stack 
 pop    r22 
 # load a one byte expression off stack 
 pop    r24 
 call   _Z6ReadPxhh 
 # push one byte expression onto stack 
 push   r24 
  # Color expression  
 ldi    r22,4 
  # push one byte expression onto stack 
 push   r22 
 # equality check expression 
 # load a one byte expression off stack 
 pop    r18 
 # load a one byte expression off stack 
 pop    r24 
 cp    r24, r18 
 breq MJ_L7 
 # result is false 
 MJ_L6: 
 ldi     r24, 0 
 jmp      MJ_L8 
 # result is true 
 MJ_L7: 
 ldi     r24, 1 
  # store result of equal expression 
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
  # Load constant int  
 ldi    r24,lo8(200) 
 ldi    r25,hi8(200) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
 ### Meggy.delay() call 
 # load delay parameter 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 call   _Z8delay_msj 
 
jmp MJ_L5
MJ_L3:
  # Load constant int  
 ldi    r24,lo8(300) 
 ldi    r25,hi8(300) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
 ### Meggy.delay() call 
 # load delay parameter 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 call   _Z8delay_msj 
 
jmp MJ_L5
MJ_L5:
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
 .size Method1, .- _Method1
