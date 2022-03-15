#include <ctype.h>
#include <cs50.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc, string argv[])
{
    //count number of commandline arguments
    if (argc !=2)
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }
    // else printf("success!\n");

    // check if commandline argument is a digit

    string key = argv[1];

    for (int i = 0; i < strlen(argv[1]); i++)
    {
        if (!isdigit(argv[1][i]))
        {
             printf("Usage: ./caesar key\n");
             return 1;
        }

    }
    printf("success\n");

    // Plain Text from user
    string plaintext = get_string("Plaintext:\n");
    // printf("%s\n", text);

   int k = atoi(key);       // printf("%i\n", k);
   printf("Ciphertext: ");

    for (int i = 0; i < strlen(plaintext); i++)
   {
       if (isupper(plaintext[i]))
       {
           printf("%c" , (((plaintext[i] - 65) + k) %26) +65);
       }

       else if (islower(plaintext[i]))
       {
           printf("%c" , (((plaintext[i] - 97) + k) %26) +97);
       }

       else
       {
           printf("%C" , plaintext[i]);
       }
   }
  printf("\n");
}
