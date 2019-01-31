.section .init
.globl _start
_start:
ldr r0,=0x3F200000

/* GPPUD choix du pull up dans le reg de controle */
mov r1,#0xFFFFFFF8 
ldr r2,[r0,#0x94]
and r2,r2,r1
mov r1,#2
orr r2,r2,r1
str r2,[r0,#0x94]

/* Attente 150 CYCCLES pas sur */


mov r2,#200
wait150C$:
sub r2,#1
cmp r2,#0
bne wait150C$

/*Ecriture dans GPPUDCLK0 (on veut la pin GPIO 5*/

ldr r2,[r0,#0x98]
mov r1,#1
lsl r1,#5
orr r2,r2,r1
str r2,[r0,#0x98]

/* Attente 150 CYCCLES pas sur */


mov r2,#200
wait150C2$:
sub r2,#1
cmp r2,#0
bne wait150C2$

mov r2,#0
str r2,[r0,#0x94]
str r2,[r0,#0x98]

/* set gpio 4 output */
mov r1,#1
lsl r1,#12
str r1,[r0]



/* definition du rising edge sur GPIO 5*/
mov r3,#0x00000020
str r3,[r0,#0x7C]

/* Scrutation du event detect */

scrut:
ldr r2,[r0,#0x40]
cmp r2,r3
bne scrut


main:

mov r1,#1
lsl r1,#4
str r1,[r0,#28]



mov r2,#0x3F0000

wait_state1$:
sub r2,#1
cmp r2,#0
bne wait_state1$

mov r1,#1
lsl r1,#4
str r1,[r0,#40]
mov r2,#0x3F0000

wait_state2$:
sub r2,#1
cmp r2,#0
bne wait_state2$
b main





