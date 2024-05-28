all:
	nasm -f elf64 Program.asm
	ld -s -o Program Program.o

dis:
	if [ ! -f Program.o ]; then $(MAKE) all; fi
	objdump -d Program.o > Program.dis.txt

clean:
	rm -rf Program *.o Program.dis.txt