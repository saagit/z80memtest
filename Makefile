TARGET = extended_march_c-

%.bin %.lst: %.z80
	z80asm --output=$*.bin --list=$*.lst $<

$(TARGET).bin:

clean:
	rm -f $(TARGET).bin $(TARGET).lst

emulate: $(TARGET).bin
# Emulate using a Dataman S4 (dms4util is also in github.com/saagit)
	dms4util.py -a 0x0800 -l 2048 -v -m -e $<
