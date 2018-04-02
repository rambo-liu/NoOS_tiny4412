#include "reg.h"

.global _start
_start:
	/* disable watchdog: WTCON[5]=0*/
	mov		r0, #0x0
	ldr		r1, =WTCON
	str		r0, [r1]


	/* 
	 * GPM4_[3:0] connect to LED[4:1]
	 * led1, led3 on; led2, led4 off
	 */
	ldr		r0, =GPM4CON
	ldr		r1, [r0]
	ldr		r2, =0x0000ffff
	bic		r1, r1, r2 
	ldr		r2, =0x00001111
	orr		r1, r1, r2				@ config GPM4CON[3:0] as output I/O
	str		r1, [r0]				@ store the value to GPM4CON reg


	ldr		r0, =GPM4DAT
	ldr		r1, [r0]
	bic		r1, r1, #0x0f
	orr		r1, r1, #0x0a			@ led1, led3 on; led2, led4 off
	str		r1, [r0]				@ store value to GPM4DAT reg


halt:
	b		halt
