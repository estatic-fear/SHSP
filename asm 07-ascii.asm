global _start

section .text

_start:

	mov ecx, 20h

_cycle:
	mov [buffer + 6], cl
	mov eax, ecx
	mov byte [buffer], 20h
	cmp eax, 100
	jl _skip1
	mov byte [buffer], 31h
	sub eax, 100
_skip1:
	mov edi, eax
	mov ebx, 10
	cdq
	div ebx
	mov [buffer + 1], al
	add byte [buffer + 1], 30h

	lea eax, [eax * 4 + eax]
	shl eax, 1
	sub edi, eax
	mov eax, edi
	add eax, 30h
	mov [buffer + 2], al

	push rcx

	; вывод на экран
	mov eax, 4
	mov ebx, 1
	mov ecx, buffer		; адрес буфера
	mov edx, buffer_len	; длина буфера
	int 80h

	pop rcx

	inc ecx
	cmp ecx, 80h
	jnz _cycle

_exit:

	; выход
	mov eax, 1
	mov ebx, 0
	int 80h


section .data

	buffer db "000 - x", 10
	buffer_len equ $ - buffer
