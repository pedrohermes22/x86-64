all:
	nasm -f elf64 Assembly.asm
	g++ -c Main.cpp -std=c++11
	g++ -o Program *.o -no-pie -std=c++11

clean:
	rm -rf Program
	rm -rf *.o