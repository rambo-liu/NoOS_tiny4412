CC		= arm-linux-gcc
LD		= arm-linux-ld
OBJCOPY	= arm-linux-objcopy
OBJDUMP	= arm-linux-objdump
CFLAGS	=
LDFLAGS	= -Ttext 0x00000000

OBJS	= start.o
ELF		= test.elf
BIN		= test.bin
DIS		= test.dis

$(BIN) : $(ELF)
	$(OBJCOPY) -O binary -S $< $@
	$(OBJDUMP) -d $< > $(DIS)

$(ELF) : $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

%.o : %.S
	$(CC) -c $<

%.o : $.c
	$(CC) -c $<
