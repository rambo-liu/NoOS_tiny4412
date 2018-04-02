/* Watchdog reg */
#define WT_BASE			0x10060000

#define WTCON			(WT_BASE + 0x0000)
#define WTDAT			(WT_BASE + 0x0004)
#define WTCNT			(WT_BASE + 0x0008)
#define WTCLRINT		(WT_BASE + 0x000C)


/* GPIO Right */
#define GP_RIGHT_BASE	0x11000000

/* GPM4 reg */
#define GPM4CON			(GP_RIGHT_BASE + 0x02E0)
#define GPM4DAT			(GP_RIGHT_BASE + 0x02E4)
#define GPM4PUD			(GP_RIGHT_BASE + 0x02E8)
#define GPM4DRV			(GP_RIGHT_BASE + 0x02EC)
#define GPM4CONPDN		(GP_RIGHT_BASE + 0x02F0)
#define GPM4PUDPDN		(GP_RIGHT_BASE + 0x02F4)
