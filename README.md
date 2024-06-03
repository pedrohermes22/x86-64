# x86-64

Nesse repositório vou adicionar alguns projetos simples (para estudos ou testes) usando códigos assembly x86_64 (AMD64) sozinhos ou juntamente à códigos C++.

## Compilando código x86-64 usando CLI e MASM
### Apenas o arquivo .ASM

1. Abra o console específico do Visual Studio, `x64 Native Tools Command Prompt for VS 2022`.
2. Execute os comandos abaixo:
   
```
ml64 -c $(ASM_SOURCE).asm
link -entry:FuncName -subsystem:console $(ASM_SOURCE).obj
```

__Note que__ `FuncName` __é o nome da função que será usada como entrada!__

### Código .ASM e C++

1. Abra o console específico do Visual Studio, `x64 Native Tools Command Prompt for VS 2022`.
2. Execute os comandos abaixo:

```
ml64 -c $(ASM_SOURCE).asm
cl -EHsc $(CPP_SOURCE).cc $(ASM_SOURCE).obj
```
## Compilando código x86-64 (NASM)
### Código .ASM e C++

1. Abra a pasta com os códigos no terminal.
2. Execute os comandos:

```
nasm -f elf64 -o MainAsm.o Main.asm
g++ -c Main.cc -o MainCc.o
g++ -o Program *.o -no-pie
```
