//Дано количество секунд с начала дня (00:00).
//Вывести на экран текущее время в формате HH:MM:SS

  #include <stdio.h>
  int main()  {
  int N;

  scanf("%d" , &N );

  int s2 = N % 10;
  int s1 = (( N % 60 ) / 10 ) % 6;
  int m2 = ( N / 60 ) % 10;
  int m1 = ( N / 600 ) % 6;
  int h = ( N / 3600 ) % 24;

  printf( "%d:%d%d:%d%d\n" ,\
  h, m1, m2, s1, s2 );

  return 0;

  }
