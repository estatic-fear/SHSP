//Создайте масси из N чисел.
//Заполните его случайными значениями от 0 до 255.
//Используйте функцию rand() & 0xff. Выведите массив на экран.
//Поменяйте элементы местами так, чтобы они шли в порядке возрастания.
//Попробуйте придумать свой алгоритм.

     #include <stdio.h>
     #include <stdlib.h>  // чтобы пользоваться функцией rand
     int main()
{
     int N[30], z, j, k;   // создаём массив, указываем размер

     for (int i = 0; i<30; i++) {  // счётчик
     N[i] = rand() % 256;   // генератор чисел от 0 до 255
     printf("%d ", N[i]);   // вывод
                                }
     printf("\n");  // перенос строки
     printf("%c", 10);  // перенос строки

     for (z = 0; z<30; z++) {    // цикл сортировки по возрастанию
     for (j = 0; j < 30 - z - 1; j++)  {   // обмен значениями элементов.
     if(N[j] > N[j+1])   {

     k = N[j];  // сохраняем значение следующего элемента в переменной к
     N[j] = N[j+1];   // присваиваем этому элементу значение предыдущего элемента
     N[j+1] = k;  // присваиваем значение следующего за ним элемента
                         }
                                       }
                            }
     for (z=0; z<30; z++)   // счётчик
     printf("%d ", N[z]);  // вывод
     printf("\n");

 return 0;
}
