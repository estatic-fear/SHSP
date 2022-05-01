;Вывести массив чисел на экран

 global _start
 section .text

 _start:
 mov edi, 0
 _next:
 add byte [num_array + edi], 48
 mov edx, 1
 mov esi, num_array
 add esi, edi
 mov ecx, esi
 mov ebx, 1
 mov eax, 4
 int 0x80

 inc edi
 cmp edi, 10
 jz _exit
 jmp _next

 _exit:
 mov eax, 1
 mov ebx, 0
 int 0x80

 section .data
 num_array db 1, 2, 3, 4, 5, 6, 7, 8, 9, 0
