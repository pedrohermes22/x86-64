bits 64

section .data
    mmx_found db "Suporte ao MMX: Ok!", 0xA, 0
    mmx_found_len equ $ - mmx_found
    mmx_not_found db "Suporte ao MMX: Não!", 0xA, 0
    mmx_not_found_len equ $ - mmx_not_found

    sse_found db "Suporte ao SSE: Ok!", 0xA, 0
    sse_found_len equ $ - sse_found
    sse_not_found db "Suporte ao SSE: Não!", 0xA, 0
    sse_not_found_len equ $ - sse_not_found

    sse2_found db "Suporte ao SSE2: Ok!", 0xA, 0
    sse2_found_len equ $ - sse2_found
    sse2_not_found db "Suporte ao SSE2: Não!", 0xA, 0
    sse2_not_found_len equ $ - sse2_not_found

    sse3_found db "Suporte ao SSE3: Ok!", 0xA, 0
    sse3_found_len equ $ - sse3_found
    sse3_not_found db "Suporte ao SSE3: Não!", 0xA, 0
    sse3_not_found_len equ $ - sse3_not_found

    ssse3_found db "Suporte ao SSSE3: Ok!", 0xA, 0
    ssse3_found_len equ $ - ssse3_found
    ssse3_not_found db "Suporte ao SSSE3: Não!", 0xA, 0
    ssse3_not_found_len equ $ - ssse3_not_found

    sse41_found db "Suporte ao SSE4.1: Ok!", 0xA, 0
    sse41_found_len equ $ - sse41_found
    sse41_not_found db "Suporte ao SSE4.1: Não!", 0xA, 0
    sse41_not_found_len equ $ - sse41_not_found

    sse42_found db "Suporte ao SSE4.2: Ok!", 0xA, 0
    sse42_found_len equ $ - sse42_found
    sse42_not_found db "Suporte ao SSE4.2: Não!", 0xA, 0
    sse42_not_found_len equ $ - sse42_not_found

    avx_found db "Suporte ao AVX: Ok!", 0xA, 0
    avx_found_len equ $ - avx_found
    avx_not_found db "Suporte ao AVX: Não!", 0xA, 0
    avx_not_found_len equ $ - avx_not_found

    avx2_found db "Suporte ao AVX2: Ok!", 0xA, 0
    avx2_found_len equ $ - avx2_found
    avx2_not_found db "Suporte ao AVX2: Não!", 0xA, 0
    avx2_not_found_len equ $ - avx2_not_found

    avx512_found db "Suporte ao AVX512: Ok!", 0xA, 0
    avx512_found_len equ $ - avx512_found
    avx512_not_found db "Suporte ao AVX512: Não!", 0xA, 0
    avx512_not_found_len equ $ - avx512_not_found

section .text
    global _start

_start:
    call .check_mmx
    call .check_sse
    call .check_sse2
    call .check_sse3
    call .check_ssse3
    call .check_sse41
    call .check_sse42
    call .check_avx
    call .check_avx2
    call .check_avx512

.exit:
    mov rax, 60
    xor rdi, rdi
    syscall

.check_mmx:
    mov rax, 1
    cpuid
    test rdx, 00800000h
    jnz .mmx_found

    mov rax, 1
    mov rdi, 1
    mov rsi, mmx_not_found
    mov rdx, mmx_not_found_len
    syscall
    ret

    .mmx_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, mmx_found
        mov rdx, mmx_found_len
        syscall
        ret

.check_sse:
    mov rax, 1
    cpuid
    test rdx, 002000000h
    jnz .sse_found

    mov rax, 1
    mov rdi, 1
    mov rsi, sse_not_found
    mov rdx, sse_not_found_len
    syscall
    ret

    .sse_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, sse_found
        mov rdx, sse_found_len
        syscall
        ret

.check_sse2:
    mov rax, 1
    cpuid
    test rdx, 004000000h
    jnz .sse2_found

    mov rax, 1
    mov rdi, 1
    mov rsi, sse2_not_found
    mov rdx, sse2_not_found_len
    syscall
    ret

    .sse2_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, sse2_found
        mov rdx, sse2_found_len
        syscall
        ret

.check_sse3:
    mov rax, 1
    cpuid
    test rdx, 004000000h
    jnz .sse3_found

    mov rax, 1
    mov rdi, 1
    mov rsi, sse3_not_found
    mov rdx, sse3_not_found_len
    syscall
    ret

    .sse3_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, sse3_found
        mov rdx, sse3_found_len
        syscall
        ret

.check_ssse3:
    mov rax, 1
    cpuid
    test rcx, 000000200h
    jnz .ssse3_found

    mov rax, 1
    mov rdi, 1
    mov rsi, ssse3_not_found
    mov rdx, ssse3_not_found_len
    syscall
    ret

    .ssse3_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, ssse3_found
        mov rdx, ssse3_found_len
        syscall
        ret

.check_sse41:
    mov rax, 1
    cpuid
    test rcx, 000080000h
    jnz .sse41_found

    mov rax, 1
    mov rdi, 1
    mov rsi, sse41_not_found
    mov rdx, sse41_not_found_len
    syscall
    ret

    .sse41_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, sse41_found
        mov rdx, sse41_found_len
        syscall
        ret

.check_sse42:
    mov rax, 1
    cpuid
    test rcx, 000100000h
    jnz .sse42_found

    mov rax, 1
    mov rdi, 1
    mov rsi, sse42_not_found
    mov rdx, sse42_not_found_len
    syscall
    ret

    .sse42_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, sse42_found
        mov rdx, sse42_found_len
        syscall
        ret

.check_avx:
    mov rax, 1
    cpuid
    and rcx, 018000000h
    cmp rcx, 018000000h
    jne .avx_not_found

    mov rax, 1
    mov rdi, 1
    mov rsi, avx_found
    mov rdx, avx_found_len
    syscall
    ret

    .avx_not_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, avx_not_found
        mov rdx, avx_not_found_len
        syscall
        ret

.check_avx2:
    mov rax, 1
    cpuid
    and rcx, 018000000h
    cmp rcx, 018000000h
    jne .avx2_not_found

    mov rax, 1
    mov rdi, 1
    mov rsi, avx2_found
    mov rdx, avx2_found_len
    syscall
    ret

    .avx2_not_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, avx2_not_found
        mov rdx, avx2_not_found_len
        syscall
        ret

.check_avx512:
    xor rax, rax
    cpuid
    cmp rax, 7
    jb .avx512_not_found

    mov rax, 7
    xor rcx, rcx
    cpuid

    bt rbx, 16
    jnc .avx512_not_found

    bt rbx, 17
    jnc .avx512_not_found

    bt rbx, 26
    jnc .avx512_not_found

    bt rbx, 27
    jnc .avx512_not_found

    bt rbx, 28
    jnc .avx512_not_found

    bt rbx, 30
    jnc .avx512_not_found

    bt rbx, 31
    jnc .avx512_not_found

    mov rax, 1
    mov rdi, 1
    mov rsi, avx512_found
    mov rdx, avx512_found_len
    syscall
    ret

    .avx512_not_found:
        mov rax, 1
        mov rdi, 1
        mov rsi, avx512_not_found
        mov rdx, avx512_not_found_len
        syscall
        ret