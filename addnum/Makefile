CC=gcc
ASMC=nasm

all:
	$(ASMC) -f elf -d ELF_TYPE asm_io.asm
	$(ASMC) -f elf addnums.asm
	$(CC) -o prog2 -m32 driver2.c addnums.o asm_io.o

asm_io_asm_make: asm_io.asm asm_io.inc
	$(ASMC) -f elf -d ELF_TYPE asm_io.asm

addnums_asm_make: addnums.asm
	$(ASMC) -f elf addnums.asm

prog2_make: driver2.c addnums.o asm_io.o
	$(CC) -o prog2 -m32 driver2.c addnums.o asm_io.o

clean:
	rm *.o
	rm prog2
