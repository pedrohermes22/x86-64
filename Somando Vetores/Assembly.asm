bits 64

section .note.GNU-stack
section .text
    global xmmSum

; void xmmSum(const XmmVal *a, const XmmVal *b, XmmVal *result);
xmmSum:
    vmovdqa xmm0, [rdi]      ; xmm0 = a
    vmovdqa xmm1, [rsi]      ; xmm1 = b
    vpaddw  xmm2, xmm0, xmm1 ; xmm2 = xmm0 + xmm1
    vmovdqa [rdx], xmm2
    ret