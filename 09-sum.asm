extern printf
extern scanf
 
section .data
    input db "%d %d",0
    output db "%d + %d = %d",10,0
 
section .bss
    num1: resd 1
    num2: resd 1
 
section .text
    global main
 
main:
    push rbp
 
    xor rax, rax
    mov rdi, input
    lea rsi, [num1]
    lea rdx, [num2]
    call scanf
 
    mov rcx, [num1]
    add rcx, [num2]
 
    xor rax, rax
    mov rdi, output
    mov rsi, [num1]
    mov rdx, [num2]
    call printf
 
    pop rbp
    xor rax, rax
    ret
