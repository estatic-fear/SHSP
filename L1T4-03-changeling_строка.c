 #include<stdio.h>
 #include<string.h>

    int main()
 {
         char str[4];
         int a, b;
         puts("Enter a word:");
         scanf("%s", str);
         a = strlen(str);
         puts("Changeling:");
         for(b = a-1; b >= 0; b--)
      {
         printf("%c", str[b]);
      }
         puts("\n");
         return 0;
 }
