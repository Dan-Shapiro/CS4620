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

   call malloc
   # push object address
   # push two byte expression onto stack
   push   r25
   push   r24

   #### function call

   # put parameter values into appropriate registers

   # receiver will be passed as first param
   # load a two byte expression off stack
   pop    r24
   pop    r25


   call    Dotrun




/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



   .text
   .global Dotrun
   .type  Dotrun, @function
Dotrun:
   push   r29
   push   r28

   # make space for locals and params
   ldi    r30, 0

   # Copy stack pointer to frame pointer
   in     r28,__SP_L__
   in     r29,__SP_H__

   # save off parameters
   std    Y + 2, r25
   std    Y + 1, r24

   /* done with function Dotrun prologue */



   /* epilogue start for Dotrun */
   # No return value

   # pop space off stack for parameters and locals

   # restoring the frame pointer
   pop    r28
   pop    r29
   ret
   .size Dotrun, .-Dotrun




