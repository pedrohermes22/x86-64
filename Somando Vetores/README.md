# Aplicando funções AVX para soma de vetores de inteiros
## Passagem de parâmetros entre C++ e Assembly (NASM)

Diferentemente do MASM, a passagem de parâmetros entre uma função
definida no arquivo C++ e implementada em Assembly se dá da seguinte
maneira:

```void foo(int *a, int *b, int *c, int *d);```

Tais parâmetros serão passados aos seguintes registradores,
respectivamente:

```RDI, RSI, RDX, RCX```

Manipulação incorreta dos registradores causará erro de segmentação,
particularmente bem chato para depurar.