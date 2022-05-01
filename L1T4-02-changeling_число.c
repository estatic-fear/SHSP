     #include <stdio.h>

     void rev(const char * s) {
         if ( *s ) {
             rev(s + 1);
             printf("%c", *s);
         }
     }

     typedef char str_t[256];
     #define get_str(s) ( scanf("%255[^\n]%*c", (s)) == 1 )

     int main(void) {
         str_t s;

         while ( printf("\nEnter a word or number: ") && get_str(s) && printf("changeling: " ) )
             rev(s);

         return 0;
     }

