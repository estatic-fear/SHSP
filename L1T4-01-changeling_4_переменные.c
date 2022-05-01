//На вход подается слово из 4 букв.
//Выведите его задом наперед.
//Запрещается использование библиотечных строк и массивов.

 #include<stdio.h>
 int main()
 {
 char a,b,c,d;
 puts("Enter a word:");
 scanf("%c%c%c%c", &a, &b, &c, &d);
 puts("\n");
 puts("Changeling:");
 printf("%c%c%c%c", d, c, b, a);
 puts("\n");
 return 0;
 }
