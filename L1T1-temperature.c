//Переведите температуру в градусах Фаренгейта (F)
//в градусы Цельсия (C) по формуле C = 5/9 * (F - 32)

 #include <stdio.h>

 int main()  {
 float F , C;
 scanf("%f" , &F );
 C = 5 / ( 9 * ( F - 32 ));
 printf( "%f\n" , C );

 return 0;

 }
