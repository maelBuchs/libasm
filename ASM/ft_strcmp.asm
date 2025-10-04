global ft_strcmp

section .text

ft_strcmp:
    xor     rcx, rcx

.loop:
    cmp     byte [rsi + rcx], 0
    je      .return
    mov     al, [rsi + rcx]
    mov     byte [rdi + rcx], al
    inc     rcx
    jmp     .loop

.return:
    mov     rax, rdi
    ret