/*
 * Part2 GPIO group base address
 */
#define GP_PART2_BASE_ADDR	0x11000000

/*
 * GPIO registers offset
 */
#define GPM4CON		0x02E0
#define GPM4DAT		0x02E4
#define	GPM4PUD		0x02E8
#define	GPM4DRV		0x02EC
#define GPM4CONPDN	0x02F0
#define GPM4PUDPDN	0x02F4

.global _start
_start:
	/* set GPM4_0 as output */
	ldr	r0, =(GP_PART2_BASE_ADDR + GPM4CON) @ set r0 as pointer to register GPM4CON
	ldr	r1, [r0]	@ read register GPM4CON value
	bic	r1, r1, #0xf	@ clear bit[3:0]
	orr	r1, r1, #0x01	@ set GPM4CON[0] to 0x01	
	str	r1, [r0]	@ write value to register GPM4CON 

	/* set GPM4_0 as low to turn LED1 on */
	ldr	r0, =(GP_PART2_BASE_ADDR + GPM4DAT)
	ldr	r1, [r0]
	bic	r1, r1, #0x01	@ clear bit[0] to make GPM4_0 to ouput low
	str	r1, [r0]

halt_loop:
	b	halt_loop	@ dead loop
