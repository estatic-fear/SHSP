;����� ������������� �������
;��������� ������ �������� �� ����� ������ ������������� ��������
;���� ������������ ��������� ���������(��� �����), �� ��������� ������ ������� ��������������
;����� ������� �� ������ ��������� 10

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
	add [max + 4], al	; �������� � ����� ������������ ������������� � char

	; ����� �� �����
	mov eax, 4
	mov ebx, 1
	mov ecx, max		; ����� ������
	mov edx, 5		; ����� ������
	int 80h

	; �����
	mov eax, 1
	mov ebx, 0
	int 80h


section .data

	; �������� ����� ������ �� 0 �� 9

	num_array db 1, 2, 3, 4, 5, 6, 7, 8, 9, 0

	num_array_end equ $

	max db "max 0"
