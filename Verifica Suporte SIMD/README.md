# Verificando se a CPU oferece suporte à algumas tecnologias SIMD

__Tecnologias verificadas:__

1. MMX.
2. SSE.
3. SSE2.
4. SSE3.
5. SSSE3.
6. SSE4.1.
7. SSE4.2.
8. AVX.
9. AVX2.
10. AVX512.

## Compilando

__Requisitos:__

1. NASM.
2. Make.

__Comandos:__

1. Abra o terminal na pasta do projeto.
2. Execute `make`.
3. Execute a aplicação usando `./Program`.
4. Para limpar, execute `make clean`.

## Observações

1. Código desenvolvido e testado no Ubuntu. Compatibilidade com Windows pode não estar presente!
2. Código desenvolvido com base no manual de otimizações da Intel.