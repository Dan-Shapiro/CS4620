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


 
# NewExp 
 ldi    r24, lo8(0) 
 ldi    r25, hi8(0) 
 # allocating object of size 0 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
#### function call 
 # put parameter values into appropriate registers
# load a one byte expression off stack
pop r20

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      Method2
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
 # Copy stack pointer to frame pointer 
 in     r28,__SP_L__ 
 in     r29,__SP_H__ 
 # save off parameters 
 
std Y + 2, r25
std Y + 1, r24
/* done with function sClass2_Method1 prologue */
  # False/0 expression 
 ldi    r24,0 
 # push one byte expression onto stack 
 push   r24  
  # if left operand is false do not eval right 
 # load a one byte expression off stack 
 pop    r24 
 # push one byte expression onto stack 
 push   r24 
 # compare left exp with zero 
 ldi r25, 0 
 cp    r24, r25 
 # Want this, breq  
 brne  MJ_L11 
 jmp   MJ_L10
MJ_L11: 
 #right operand 
 # load a one byte expression off stack 
 pop    r24
  # Load constant int  
 ldi    r24,lo8(3) 
 ldi    r25,hi8(3) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
 # neg int 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 ldi     r22, 0 
 ldi     r23, 0 
 sub     r22, r24 
 sbc     r23, r25 
 # push two byte expression onto stack 
 push   r23 
 push   r22 
  # Load constant int  
 ldi    r24,lo8(5) 
 ldi    r25,hi8(5) 
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
 brlt MJ_L19 
 # load false 
 MJ_L18: 
 ldi     r24, 0 
 jmp      MJ_L20 
 # load true 
 MJ_L19: 
 ldi    r24, 1 
 # push result of less than 
 MJ_L20: 
 # push one byte expression onto stack 
 push   r24
 # push one byte expression onto stack 
 push   r22 
 # load a one byte expression off stack 
  pop    r24 
 # push one byte expression onto stack 
 push   r24 
 MJ_L10: 
  # if left operand is false do not eval right 
 # load a one byte expression off stack 
 pop    r24 
 # push one byte expression onto stack 
 push   r24 
 # compare left exp with zero 
 ldi r25, 0 
 cp    r24, r25 
 # Want this, breq  
 brne  MJ_L6 
 jmp   MJ_L5
MJ_L6: 
 #right operand 
 # load a one byte expression off stack 
 pop    r24
  # Load constant int  
 ldi    r24,lo8(3) 
 ldi    r25,hi8(3) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Load constant int  
 ldi    r24,lo8(1) 
 ldi    r25,hi8(1) 
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
  # Load constant int  
 ldi    r24,lo8(4) 
 ldi    r25,hi8(4) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
 # equality check expression 
 # load a two byte expression off stack 
 pop    r18 
 pop    r19 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 cp    r24, r18 
 cpc   r25, r19 
 breq MJ_L28 
 # result is false 
 MJ_L27: 
 ldi     r24, 0 
 jmp      MJ_L29 
 # result is true 
 MJ_L28: 
 ldi     r24, 1 
 # store result of equal expression 
 MJ_L29: 
 # push one byte expression onto stack 
 push   r24 
 
 # push one byte expression onto stack 
 push   r22 
 # load a one byte expression off stack 
  pop    r24 
 # push one byte expression onto stack 
 push   r24 
 MJ_L5: 
  # if left operand is false do not eval right 
 # load a one byte expression off stack 
 pop    r24 
 # push one byte expression onto stack 
 push   r24 
 # compare left exp with zero 
 ldi r25, 0 
 cp    r24, r25 
 # Want this, breq  
 brne  MJ_L1 
 jmp   MJ_L0
MJ_L1: 
 #right operand 
 # load a one byte expression off stack 
 pop    r24
  # Load constant int  
 ldi    r24,lo8(2) 
 ldi    r25,hi8(2) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # Load constant int  
 ldi    r24,lo8(4) 
 ldi    r25,hi8(4) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
  # load a two byte expression off stack 
 pop    r18 
 pop    r19 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 # Do INT sub operation 
 sub    r24, r18 
 sbc    r25, r19 
 # push hi order byte first 
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
  # MulExp 
 # load a one byte expression off stack 
 pop    r18 
 # load a one byte expression off stack 
 pop    r22 
 # move low byte src into dest reg 
 mov    r24, r18 
 # move low byte src into dest reg 
 mov    r26, r22 
 # Do mul operation of two input bytes 
 muls   r24, r26 
 # push two byte expression onto stack 
 push   r1 
 push   r0 
 # clear r0 and r1, thanks Brendan! 
 eor    r0,r0 
 eor    r1,r1 
 # equality check expression 
 # load a two byte expression off stack 
 pop    r18 
 pop    r19 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 cp    r24, r18 
 cpc   r25, r19 
 breq MJ_L41 
 # result is false 
 MJ_L40: 
 ldi     r24, 0 
 jmp      MJ_L42 
 # result is true 
 MJ_L41: 
 ldi     r24, 1 
 # store result of equal expression 
 MJ_L42: 
 # push one byte expression onto stack 
 push   r24 
 
 # push one byte expression onto stack 
 push   r22 
 # load a one byte expression off stack 
  pop    r24 
 # push one byte expression onto stack 
 push   r24 
 MJ_L0: 
  # not operation 
 # load a one byte expression off stack 
 pop    r24 
 ldi     r22, 1 
 eor     r24,r22 
 # push one byte expression onto stack 
 push   r24  
/* epilogue start for sampletest2_testfun1 */ 
 # no return value 
 # pop space off stack for parameters and locals
 pop   r30 
# restoring the frame pointer 
 pop    r28 
 pop    r29 
 ret 
 .size Method1, .- _Method1
/* epilogue start */ 
 endLabel: 
 jmp endLabel 
 ret 
 .size   main, .-main
 .text 
 .global _Method2 
 .type  _Method2, @function 
 Method2: 
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
/* done with function sClass2_Method2 prologue */
#### function call 
 # put parameter values into appropriate registers

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      Method1
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
 .size Method2, .- _Method2
/* epilogue start */ 
 endLabel: 
 jmp endLabel 
 ret 
 .size   main, .-main
 .text 
 .global _Method3 
 .type  _Method3, @function 
 Method3: 
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
/* done with function sClass2_Method3 prologue */
  ### MeggyCheckButton 
 call    _Z16CheckButtonsDownv 
 lds    r24, Button_Down 
 # if button value is zero, push 0 else push 1 
 tst    r24 
 breq   MJ_L48 
 MJ_L49:  
 ldi    r24, 1 
 jmp    MJ_L50 
 MJ_L48: 
 MJ_L50: 
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
 brne  MJ_L46 
 jmp    MJ_L45
MJ_L46:
  # Load constant int  
 ldi    r24,lo8(100) 
 ldi    r25,hi8(100) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
 ### Meggy.delay() call 
 # load delay parameter 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25 
 call   _Z8delay_msj 
 
jmp MJ_L47
MJ_L45:
MJ_L47:
  # Load constant int  
 ldi    r24,lo8(2) 
 ldi    r25,hi8(2) 
 # push two byte expression onto stack 
 push   r25 
 push   r24 
 
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
 .size Method3, .- _Method3
