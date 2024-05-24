.code

Sum proc
    ; Armazenar dois vetores de 4 elementos usando a pilha.
    ; Um inteiro ocupa 4 bytes, então o vetor de 4 elementos ocupa 16 bytes.
    ; Dois vetores, 32 bytes.

    push rbp
    mov rbp, rsp

    ; Aloca 32 bytes na pilha.
    sub rsp, 32

    ; Armazena os valores do primeiro vetor.
    mov dword ptr [rbp - 32], 146
    mov dword ptr [rbp - 28], 1123
    mov dword ptr [rbp - 24], 13
    mov dword ptr [rbp - 20], 11

    ; Armazena os valores do segundo vetor.
    mov dword ptr [rbp - 16], 113
    mov dword ptr [rbp - 12], 1125
    mov dword ptr [rbp - 8], 11325
    mov dword ptr [rbp - 4], 112

    ; Soma todos os elementos e armazena em rax.
    mov rax, 0
    add rax, [rbp - 32]
    add rax, [rbp - 28]
    add rax, [rbp - 24]
    add rax, [rbp - 20]
    add rax, [rbp - 16]
    add rax, [rbp - 12]
    add rax, [rbp - 8]
    add rax, [rbp - 4]

    ; Retoma o valor da pilha.
    mov rsp, rbp
    pop rbp

    ; Como armazenei os valores em rax, posso retornar.
    ret
Sum endp
    end