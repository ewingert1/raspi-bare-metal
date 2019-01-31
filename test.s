.data

.text

.global writeAtAddress
writeAtAddress:
	/* r0 holds the address we want to write in */
	/* r1 holds the value we want to write */
	push {lr}
	str r1,[r0]
	pop {pc}


.global readAtAddress
readAtAddress:
	/* r0 holds the address we want to write in */
	push {lr}
	ldr r0,[r0]
	/* r0 contains the fetched value */
	pop {pc}	
	

.global returnsOne
returnsOne:
	push {lr}
	mov r0,#1
	pop {pc}


