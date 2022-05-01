;Поиск максимального элемента
;Программа должна выводить на экран максимальный элемент
;Если максимальных элементов несколько(они равны), то выводится первый встретевшийся
;Длина массива не должна превышать 10

global _start

section .text

_start:

	mov edi, num_array
	mov ecx, edi
	mov eax, [edi]

_cycle:
	add edi, 4
	cmp edi, num_array_end
	jz _exit

	cmp eax, [edi]
	jge _cycle

	mov eax, [edi]
	mov ecx, edi
	jmp _cycle


_exit:
	push ax ; сохранить число

	sub ecx, num_array
	shr ecx, 2
	mov eax, ecx
	mov edi, max + 6

	; ---- вывод числа в EAX в буфер [EDI] ----

	test eax,eax
	jns num_pos
	mov byte [edi], 2Dh
	inc edi
	neg eax
num_pos:
	mov esi, table
	mov ecx, 9
	xor ebx, ebx
num_cycle:
	cdq
	div dword [esi]
	or ebx, eax
	jz num_skip
	add al, 30h
	mov [edi], al
	inc edi
num_skip:
	mov eax, edx
	add esi, 4
	loop num_cycle
	add al, 30h
	mov [edi], al
	inc edi

	;-------------------------------------- (

	mov byte [edi], 20h
	inc edi
	mov byte [edi], 28h
	inc edi

	;--------------------------------------

	pop ax ; извлечь макс число

	; ---- вывод числа в EAX в буфер [EDI] ----

	test eax,eax
	jns num2_pos
	mov byte [edi], 2Dh
	inc edi
	neg eax
num2_pos:
	mov esi, table
	mov ecx, 9
	xor ebx, ebx
num2_cycle:
	cdq
	div dword [esi]
	or ebx, eax
	jz num2_skip
	add al, 30h
	mov [edi], al
	inc edi
num2_skip:
	mov eax, edx
	add esi, 4
	loop num2_cycle
	add al, 30h
	mov [edi], al
	inc edi

	;-------------------------------------- )

	mov byte [edi], 29h
	inc edi

	;--------------------------------------

	; вывод на экран
	mov eax, 4
	mov ebx, 1
	mov ecx, max		; адрес буфера
	mov edx, len_max	; длина буфера
	int 80h

	; выход
	mov eax, 1
	mov ebx, 0
	int 80h


section .data


	; размер массива - любой

	num_array dd 	85, 1, 33, 1997, -59, 61, 77, 155, 9, 0, 122, -170, 12, 5

	num_array_end equ $

	max db "max =                          "

	len_max equ $ - max

	table dd 1000000000, 100000000, 10000000, 1000000, 100000, 10000, 1000, 100, 10
