OBJS	:= led.o
ELF	:= led.elf
BIN	:= led.bin
LDS	:= led.lds
DIS	:= led.dis

$(BIN): $(ELF)
	arm-linux-objcopy -O binary -S $< $@
	arm-linux-objdump -d -m arm $< > $(DIS)

$(ELF): $(OBJS)
	arm-linux-ld -T$(LDS) -o $@ $^

%.o: %.S
	arm-linux-gcc -c -o $@ $<

%.o: %.c
	arm-linux-gcc -c -o $@ $<

clean:
	rm -vf *.dis *.bin *.elf *.o
