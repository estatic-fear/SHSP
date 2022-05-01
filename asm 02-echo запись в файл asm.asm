;Дописать программу echo так, чтобы она записывала 
;введенную строку в файл с названием my-file.txt 

 section .text
     global _start
         _start:
 ;создаём файл с правами на запись и чтение
     mov eax, 8
     mov ebx, filename
     mov ecx, 2
     int 0x80
 ;открываем
     mov eax,5
     mov ebx,filename
     mov ecx,1
     mov edx, 0
     int 0x80
 ;считываем с клавиатуры
     mov eax, 3
     mov ebx, 0
     mov ecx, buffer
     mov edx, 1024
     int 0x80
 ;записываем в файл из буфера
     mov eax, 4
     mov ebx, eax
     mov ecx, buffer
     mov edx, 1024
     int 0x80
 ;закрываем
     mov eax, 6
     int 0x80

     mov ebx, 0
     mov eax, 1
     int 0x80

     section .data

     filename db "./my-file.txt", 0
     section .bss
     buffer: resb 1024

