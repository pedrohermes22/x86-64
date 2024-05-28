all:
	nasm -f elf64 Program.asm
	ld -s -o Program Program.o

clean:
	rm -rf Program *.o