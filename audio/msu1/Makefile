XKAS := ../../xkas/xkas
PYTHON := /usr/bin/python3

.PHONY: all clean

PACKET_BIN = $(patsubst xkasm/%.asm, xkasm/%.bin, $(shell find xkasm -name \*.asm))
PACKETS_ASM = $(patsubst xkasm/%.bin, _%.asm, $(PACKET_BIN))

all: $(PACKETS_ASM)

xkasm/%.bin: xkasm/%.asm
	$(XKAS) -o $@ $<

_%.asm: xkasm/%.bin
	$(PYTHON) scripts/65816_to_packet.py $< $@

clean:
	rm *.asm
