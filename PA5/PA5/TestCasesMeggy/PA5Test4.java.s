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

   ### MeggyCheckButton
   call    _Z16CheckButtonsDownv
   lds    r24,Button_A
   # if button value is zero, push 0 else push 1
   tst    r24
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

   #### while statement
   MJ_L6:
   
   # True/1 expression
   ldi    r22, 1
   # push one byte expression onto stack
   push   r22

   # if not(condition)
   # load a one byte expression off stack
   pop    r24
   ldi    r25,0
   cp     r24, r25
   # WANT breq MJ_L8
   brne   MJ_L7
   jmp    MJ_L8
   MJ_L7:
   
   # interger value 100
   ldi    r24,lo8(100)
   ldi    r25,hi8(100)
   push   r25
   push   r24
   
   ### Meggy.delay() call
   # load delay parameter
   # load a two byte expression off stack
   pop    r24
   pop    r25
   call   _Z8delay_msj	

   # jump to while test
   jmp    MJ_L6
   MJ_L8:
   
   #Else part
   MJ_L0:
   
   #Done with if else statement 
   MJ_L2:
   
   ## If statement
   
   # interger value 1
   ldi    r24,lo8(1)
   ldi    r25,hi8(1)
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
   
   ### Meggy.getPixel(x,y) call
   # load a one byte expression off stack
   pop    r22
   # load a one byte expression off stack
   pop    r24
   call   _Z6ReadPxhh
   # push one byte expression onto stack
   push   r24 
   
   # color value Meggy.Color.GREEN
   ldi    r22,4
   push   r22
   # Less than check expression
   # load a one byte expression off stack
   pop    r18
   pop    r19
   
   # load a one byte expression off stack
   pop    r24
   pop    r25
   cp    r24, r18
   cpc    r25, r19
   
   breq   MJ_L12
   MJ_L13:
   ldi    r24, 1
   jmp    MJ_L14
   MJ_L12:
   MJ_L14:
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
   brne   MJ_L10
   jmp    MJ_L9
   # then label for if
   MJ_L10:
   
   # interger value 200
   ldi    r24,lo8(200)
   ldi    r25,hi8(200)
   push   r25
   push   r24
   
   ### Meggy.delay() call
   # load delay parameter
   # load a two byte expression off stack
   pop    r24
   pop    r25
   call   _Z8delay_msj	
   
   #Else part
   MJ_L9:
   
   # Tone_Literal value Meggy.Tone.C3
   ldi    r24,lo8(61157)
   ldi    r25,hi8(61157)
   push   r25
   push   r24
   
   # interger value 300
   ldi    r24,lo8(300)
   ldi    r25,hi8(300)
   push   r25
   push   r24
   
   # Code for MeggySetPixel
   pop    r22
   pop    r23
   pop    r24
   pop    r25
   call   _Z10Tone_Startjj
   
   #Done with if else statement 
   MJ_L11:
   
   # interger value 1
   ldi    r24,lo8(1)
   ldi    r25,hi8(1)
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
   
   # color value Meggy.Color.BLUE
   ldi    r22,5
   push   r22
   
   # Code for MeggySetPixel
   pop    r20
   pop    r22
   pop    r24
   call   _Z6DrawPxhhh
   call   _Z12DisplaySlatev


/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main



