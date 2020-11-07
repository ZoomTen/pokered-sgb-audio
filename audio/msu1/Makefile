# Point this to your Asar (SNES compiler) binary
ASSEMBLER := ../../asar-1.71/build/asar/asar-standalone

ASSEMBLER_OPTS :=

PYTHON := /usr/bin/python3

.PHONY: all clean

PACKET_BIN = $(patsubst snes/%.asm, snes/%.bin, $(shell find snes -name \*.asm))
PACKETS_ASM = $(patsubst snes/%.bin, _%.asm, $(PACKET_BIN))

all: $(PACKETS_ASM)

snes/%.sfc: snes/%.asm
	$(ASSEMBLER) $(ASSEMBLER_OPTS) $< $@

_%.asm: snes/%.sfc
	$(PYTHON) scripts/65816_to_packet.py $< $@

clean:
	rm *.asm
