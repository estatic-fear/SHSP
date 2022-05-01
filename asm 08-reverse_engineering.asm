;Исследуя просторы сети вы наткнулись на вирус-шифровальщик! 
;Все ваши файлы были зашифрованы, а автор вируса требует 
;у вас выкуп в размере 0.1 BTC (~360000 р). 
;К счастью, разработчик вируса не зашифровал сам исполняемый файл вируса. 
;Вы загружаете его в специальную программу - дизассемблер - и 
;получаете следующий ассемблерный код.
;Прочитайте ассемблерный листинг, 
;поймите что делает программа, восстановите секрет из 7 символов, 
;если после шифрования получилась строка ^HEBKTS
;Для декодирования / кодирования используйте таблицу ASCII
;Секрет это строка из 7 символов A-Z (только заглавные)

.LC0:
        .string "Здесь была строка, ваша задача узнать какая"
        .string ""
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     rax, QWORD PTR .LC0[rip]
        mov     QWORD PTR [rbp-24], rax
        mov     DWORD PTR [rbp-12], 7
        mov     DWORD PTR [rbp-16], 10
        mov     DWORD PTR [rbp-4], 0
        jmp     .L2
.L5:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movzx   eax, BYTE PTR [rbp-24+rax]
        mov     BYTE PTR [rbp-5], al
        mov     eax, DWORD PTR [rbp-4]
        and     eax, 1
        test    eax, eax
        je      .L3
        mov     eax, DWORD PTR [rbp-12]
        xor     BYTE PTR [rbp-5], al
        jmp     .L4
.L3:
        mov     eax, DWORD PTR [rbp-16]
        xor     BYTE PTR [rbp-5], al
.L4:
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        movzx   edx, BYTE PTR [rbp-5]
        mov     BYTE PTR [rbp-24+rax], dl
        add     DWORD PTR [rbp-4], 1
.L2:
        cmp     DWORD PTR [rbp-4], 6
        jle     .L5
        lea     rax, [rbp-24]
        mov     rdi, rax
        call    puts
        mov     eax, 0
        leave
        ret
;Ответ: TOO EASY