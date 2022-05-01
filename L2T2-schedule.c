//Напишите программу,
//которая вычисляет значение функции по графику.

   #include <stdio.h>
   int main()  {
   float x;
   float y;
puts ("введите значение x");
   scanf("%f" , &x );


if (x <= -1 && x >= -2) {
    y = - x - 2;
}  else if (x >= -1 && x <= 1) {
    y = x;
} else if (x >= 1 && x <= 2) {
   y = - x + 2;
}

  printf( "y = %f\n" , y );

  return 0;
}

