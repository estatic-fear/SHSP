//Пользователь через пробел вводит N чисел.
//Занесите их в массив.
//После конца ввода выведите последовательность задом наперед.
//N объявите в программе в виде константы.

   #include <stdio.h>
   int main ()
{
   int N[10];
   puts("Введите массив из 10 элементов через пробел");
   for(int i = 0; i < 10; i++) {

   scanf("%d", &N[i]);
                               }


   for(int i = 10; i > 0; i--)    {
   printf("%d ", N[i-1]);

                                  }
   printf("%c", 10);

 return 0;
}
