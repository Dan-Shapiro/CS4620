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
   
   ## If statement
   
   # True/1 expression
   ldi    r22, 1
   # push one byte expression onto stack
   push   r22
   
   # false/0 expression
   ldi    r22, 0
   # push one byte expression onto stack
   push   r22
   
   # interger value 3
   ldi    r24,lo8(3)
   ldi    r25,hi8(3)
   push   r25
   push   r24
   
   # interger value 4
   ldi    r24,lo8(4)
   ldi    r25,hi8(4)
   push   r25
   push   r24
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25
   
   # interger value 1
   ldi    r24,lo8(1)
   ldi    r25,hi8(1)
   push   r25
   push   r24
   # Negate  expression
   # load a one byte expression off stack
   pop    r24
   neg    r24
   
   # interger value 3
   ldi    r24,lo8(3)
   ldi    r25,hi8(3)
   push   r25
   push   r24
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
   # load a two byte variable from base+offset
   add    r25, r19
   adc    r24, r18
   
   # push two byte expression onto stack
   push   r25
   push   r24
   
   
   # interger value 3
   ldi    r24,lo8(3)
   ldi    r25,hi8(3)
   push   r25
   push   r24
   
   # interger value 1
   ldi    r24,lo8(1)
   ldi    r25,hi8(1)
   push   r25
   push   r24
   
   # push two byte expression onto stack
   pop   r18
   pop   r19
   # push two byte expression onto stack
   pop   r24
   pop   r25
   # Do INT sub operation
   sub    r24, r18
   sbc    r25, r19
   
   # push hi order byte first
   # push two byte expression onto stack
   push   r25
   push   r24
   
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25
   
   # interger value 2
   ldi    r24,lo8(2)
   ldi    r25,hi8(2)
   push   r25
   push   r24

   # Casting int to byte by popping
   # 2 bytes off stack and only pushing low order bits
   # back on.  Low order bits are on top of stack.
   pop    r24
   pop    r25
   push   r24
   
   # interger value 2
   ldi    r24,lo8(2)
   ldi    r25,hi8(2)
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
   
   # move one byte src into dest reg
   mov    r24, r18
   
   # move one byte src into dest reg
   mov    r26, r22
   
   # Do mul operation of two input bytes
   muls   r24, r26
   
   # push two byte expression onto stack
   push   r1
   push   r0
   
   # clear r0 and r1
   eor    r0,r0
   eor    r1,r1
   
   
   # interger value 4
   ldi    r24,lo8(4)
   ldi    r25,hi8(4)
   push   r25
   push   r24
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25
   
   # Not  expression
   # load a one byte expression off stack
   pop    r24
   ldi    r22,1 
   eor    r24,r22 
   # push one byte expression onto stack
   push   r24 
   
   
   # load a one byte expression off stack
   pop    r24
   
   #load zero into reg
   ldi    r25, 0
   
   #use cp to set SREG
   cp     r24, r25
   breq   MJ_L3
   MJ_L4:
   ldi    r24, 1
   jmp    MJ_L5
   MJ_L3:
   MJ_L5:
   # push one byte expression onto stack
   push   r24
   # load condition and branch if false
   # load a one byte expression off stack
   pop    r24
   #load zero into reg
   ldi    r25, 0
   #use cp to set SREG
   cp     r24, r25
   #WANT breq MJ_L3
   brne   MJ_L1
   jmp    MJ_L0
   # then label for if
   MJ_L1:
   
   # interger value 500
   ldi    r24,lo8(500)
   ldi    r25,hi8(500)
   push   r25
   push   r24
   
   ### Meggy.delay() call
   # load delay parameter
   # load a two byte expression off stack
   pop    r24
   pop    r25
   call   _Z8delay_msj	
   
   #Else part
   MJ_L0:
   
   #Done with if else statement 
   MJ_L2:


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



