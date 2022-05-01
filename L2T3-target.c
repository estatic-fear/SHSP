//На вход подается точка на координатной плоскости (x, y).
//Вывести попадает ли эта точка в заданную область.
//Уравнение окружности x^2 + y^2 = R^2

     #include <stdio.h>
     int main()
{
     float x;
     float y;
     int R = 1;
     puts ("введите координаты x и y");
     scanf("%f" "%f" , &x, &y );

     if (x*x + y*y > R*R || y > 0 && y < x - 2)
      {
     puts ("No");
      }
     else
          {
     puts ("Yes");
          }


   return 0;
}
