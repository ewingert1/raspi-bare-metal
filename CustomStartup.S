//.section .init
.syntax unified

.section .vectors
vectors:
	/* Vectors */
	b _start		//Reset
	b .				//Undefined Instruction
	b .				//Software Interrupt
	b .				//Prefetch Abort
	b .				//Data Abort
	b .				//4-byte gap RESERVED
	b IRQ_Handler	//IRQ
	b .				//FIQ



.section .text
.global _start
_start:
    mov sp,#0x8000
    
    /* TODO : add IRQ stack pointer as well */
    /* TODO : add code to switch from supervisor to irq mode */
    
    bl notmain


end:

	b end
