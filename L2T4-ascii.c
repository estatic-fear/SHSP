//Вывести на экран ASCII таблицу печатных символов
//(с 33 до 126) в формате: номер символа | символ

  #include <stdio.h>

  int main ()
{
  short t;
  for ( int t = 33; t <= 126; t++)
     {
  printf ("%d    %c\n", t, t );
     }

 return 0;
}
