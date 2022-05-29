#include <stdio.h>

main (void){
 
    // int n = 21;

    int n;
    printf("Bitte einen Integerwert eingeben\n");
    scanf("%d", &n);
    printf("\n");
  
    while(n != 1){
        //printf("%d, ", n);
        printf("%d\n", n);
        
        if(n%2 == 0){
            n /= 2;
            }
        else{
            n = (n * 3) + 1;
        }
    }
    printf("1");
    return0;
}
