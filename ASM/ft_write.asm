global ft_write

section .text

ft_write:
    mov     rax, 1     ; sys_write
    syscall
    ret