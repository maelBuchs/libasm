global ft_strlen

section .text



ft_strlen:
    mov     rbx, rdi
    xor rcx, rcx

.count_char:
    
    cmp byte [rbx], 0
    je .return
    cmp rsi, 0
    inc rbx
    inc rcx
    jmp .count_char

.return:
    mov rax, rcx
    ret 
