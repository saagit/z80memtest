TARGET = extended_march_c-

%.bin %.lst: %.z80
	z80asm --output=$*.bin --list=$*.lst $<

$(TARGET).bin:

clean:
	rm -f $(TARGET).bin $(TARGET).lst
