//Маша планирует купить новый IPhone N,
//но не хочет захламлять квартиру лишними коробками.
//Маша хочет узнать, поместится ли коробка от IPhone N
//в коробку от IPhone (N-1) (или наоборот).
//Коробки можно поворачивать!

   #include <stdio.h>
   int main()
{
      int x1 = 160;
      int y1 = 90;
      int z1 = 60;
      int x2;
      int y2;
      int z2;

      puts ("Indicate the dimensions of the box of the new Iphone through * (l*w*h)");
      scanf("%d*%d*%d", &x2, &y2, &z2);

      if ( (x2 >= x1) && (y2 >=y1) && (z2 >= z1) )
  {
      puts ("2 in 1 No");
  }
      else if ((y2 >= x1) && (x2 >= y1) && (z2 >= z1) )
     {
      puts ("2 in 1 No");
     }
      else if ((x2 >= x1) && (z2 >= y1) && (y2 >= z1) )
         {
      puts ("2 in 1 No");
         }
      else if ((z2 >= x1) && (x2 >= y1) && (y2 >= z1))
             {
      puts ("2 in 1 No");
             }
      else puts ("2 in 1 Yes");

      if ( (x2 <= x1) && (y2 <=y1) && (z2 <= z1) )
                   {
      puts ("1 in 2 No");
                   }
      else if ((y2 <= x1) && (x2 <= y1) && (z2 <= z1) )
                         {
      puts ("1 in 2 No");
                         }
      else if ((x2 <= x1) && (z2 <= y1) && (y2 <= z1) )
                               {
      puts ("1 in 2 No");
                               }
      else if ((z2 <= x1) && (x2 <= y1) && (y2 <= z1))
                                     {
      puts ("1 in 2 No");
                                     }
else puts ("1 in 2 Yes");

      return 0;
}
