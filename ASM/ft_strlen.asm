global ft_strlen

section .text

ft_strlen:
    xor     rax, rax

.count_char:
    
    cmp     byte [rdi + rax], 0
    je      .return
    inc     rax
    jmp     .count_char

.return:
    ret 
