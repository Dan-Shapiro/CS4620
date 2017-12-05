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
 ldi    r24, lo8(4) 
 ldi    r25, hi8(4) 
 # allocating object of size 4 on heap 
 call    malloc 
 # push object address 
 # push two byte expression onto stack 
 push   r25 
 push   r24
 # True/1 expression 
 ldi    r22, 1 
 # push one byte expression onto stack 
 push   r22 
#### function call 
 # put parameter values into appropriate registers
# load a one byte expression off stack
pop r20

 # receiver will be passed as first param 
 # load a two byte expression off stack 
 pop    r24 
 pop    r25
call      foo
/* epilogue start */ 
 endLabel: 
 jmp endLabel 
 ret 
 .size   main, .-main
 .text 
 .global _foo 
 .type  _foo, @function 
 foo: 
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
/* done with function sC_foo prologue */
  # Load constant int  
 ldi    r24,lo8(3) 
 ldi    r25,hi8(3) 
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
 .size foo, .- _foo
