extern malloc
extern ft_strlen
extern ft_strcpy
global ft_strdup

section .text
ft_strdup:
    ;ft_strlen(src)
    mov     rbx, rdi
    call    ft_strlen       

    ;malloc(ft_strlen(src))
    mov     rdi, rax        
    call	malloc WRT ..plt
    test    rax, rax         ; check if malloc fail
    jz      .error

    ;ft_strcpy(malloced mem, src)
    mov     rdi, rax
    mov     rsi, rbx
    call    ft_strcpy
    ret

.error
    mov     rax, 1
    ret
