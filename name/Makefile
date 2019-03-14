CC=gcc
ASMC=nasm

all:
	$(ASMC) -f elf name.asm
	$(CC) -o prog1 -m32 driver.c name.o

name_asm_make: name.asm
	$(ASMC) -f elf name.asm

prog1_make: name.o
	$(CC) -o prog1 -m32 driver.c name.o

clean:
	rm *.o
	rm prog1
