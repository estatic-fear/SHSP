;Поиск максимального индекса
;Программа должна выводить на экран индекс максимального элемента
;Если максимальных элементов несколько(они равны), то выводится индекс первого встретевшегося
;Длина массива не должна превышать 10

global _start

section .text

_start:

	mov edi, num_array
	mov al, [edi]

_cycle:
	inc edi
	cmp edi, num_array_end
	jz _exit

	cmp al, [edi]
	jge _cycle

	mov al, [edi]
	jmp _cycle


_exit:
	add [max + 4], al	; записать в буфер одновременно конвертировав в char

	; вывод на экран
	mov eax, 4
	mov ebx, 1
	mov ecx, max		; адрес буфера
	mov edx, 5		; длина буфера
	int 80h

	; выход
	mov eax, 1
	mov ebx, 0
	int 80h


section .data

	; работают числа только от 0 до 9

	num_array db 1, 2, 3, 4, 5, 6, 7, 8, 9, 0

	num_array_end equ $

	max db "max 0"
