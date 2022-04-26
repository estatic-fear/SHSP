global _start
section .text

_start:
    mov eax, 3
    mov ebx, 0
    mov ecx, buffer
    mov edx, 1024
    int 0x80

mov eax, 4
mov ebx, 1
mov ecx, buffer
mov edx, 1024
int 0x80
    mov     eax, 1
    mov     ebx, 0
    int     0x80

section .bss
buffer: resb 1024
section .data
