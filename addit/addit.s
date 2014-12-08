@ I highly suggest looking at the links posted in the README
@ I also suggest it maybe in EVERYONES best interest if you try to-
@ Change some of the code variables at least.

.data
 
/* 1ST MSG */
.balign 4
message1: .asciz "# "
 
/* 2ND MSG */
.balign 4
message2: .asciz "# "

/* 3RD MSG */
.balign 4
message3: .asciz "The Sum Of %d & %d Is %d\n"
 
/* GET THE D */
.balign 4
scan_pattern : .asciz "%d"
 
/* THE NUMBER IS STORED HERE A 4 BYTE WITH AN INTIAL VAL OF 0 */
.balign 4
number_read: .word 0

/* THE NUMBER IS STORED HERE A 4 BYTE WITH AN INTIAL VAL OF 0 */
.balign 4
number_read2: .word 0

/* A VALUE TO BE RETURNED INIT 0 */ 
.balign 4
return: .word 0

/* A VALUE TO BE RETURNED INIT 0 */
.balign 4
return2: .word 0
 
.text
 
/*
ADD SHIT
*/
addit: 
    /*SETS UP THE SHITTY R1*/
    ldr r1, address_of_return2
    str lr, [r1]
    add r0, r0, r7
 
    ldr lr, address_of_return2
    ldr lr, [lr]
    bx lr
address_of_return2 : .word return2
 
.global main
main:
    /* LOADS FIRST RETURN */
    ldr r1, address_of_return
    str lr, [r1]
 
    /*PROMPTS FIRST FUCKING MESSAGE*/
    ldr r0, address_of_message1
    bl printf

    /*STORES THE USER'S 1ST SHITTY NUMBER*/
    ldr r0, address_of_scan_pattern
    ldr r1, address_of_number_read
    bl scanf
 
    /*PROMPTS 3RD FUCKING MESSAGE*/
    ldr r0, address_of_message2
    bl printf

    /*STORES THE USER'S 2nd SHITTY NUMBER*/
    ldr r0, address_of_scan_pattern
    ldr r1, address_of_number_read2
    bl scanf


    /* THIS LOADS THE FUCKING READ NUMBER AND THROWS IT TO THE SHITTY MATH FUNCTION SUPPOSEDLY AS R0*/
    /*STORES SHITTY 1ST NUMBER IN R0*/
    ldr r0, address_of_number_read
    ldr r7, address_of_number_read2
    /*TELLS IT TO FUCKING STAY AS R0*/
    ldr r0, [r0]
    ldr r7, [r7]
    /*CALLS THE CRUMMY FUNCTION FROM HELL*/
    bl addit
 
    /*NEAR THE END SHIT*/
    /*THE SUM IS R0 AND IT GETS MOVED TO R3*/
    mov r3, r0
    /*SUPPOSEDLY THE FIRST FUCKING DIGIT GETS MOVED TO R1*/
    ldr r1, address_of_number_read
    /*THEN THE TRASHY 2ND NUMBER IS SET TO R2*/
    ldr r2, address_of_number_read2
    /*TELLS R1 TO KEEP IT'S ASS STILL AND NOT GO ANYWHERE*/
    ldr r1, [r1]
    /*SAME FOR YOU R2!*/
    ldr r2, [r2]
    ldr r0, address_of_message3
    bl printf
 
    /*IT COMES TO AND END THANK JEGUS*/
    ldr lr, address_of_return
    ldr lr, [lr]
    bx lr
address_of_message1 : .word message1
address_of_message3 : .word message3
address_of_message2 : .word message2
address_of_scan_pattern : .word scan_pattern
address_of_number_read : .word number_read
address_of_number_read2 : .word number_read2
address_of_return : .word return
 
/* THANK YOU ASSEMBLY FOR HAVING BUILTINS */
.global printf
.global scanf

