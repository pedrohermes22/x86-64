ASM_SOURCE = Assembly

all:
	ml64 -c $(ASM_SOURCE).asm
	cl -EHsc Main.cc $(ASM_SOURCE).obj

clean:
	del /q *.obj *.exe 2>nul || true