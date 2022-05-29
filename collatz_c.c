#include <stdio.h>

main (void){
   
    // int n = 21;
    int counter = 0;
    int n;
    printf("Bitte einen Integerwert eingeben\n");
    scanf("%d", &n);
    printf("\n");
  
    while(n > 1){
    
        if(n%2 == 0) {
            n /= 2;
            }

        else {
            n = (3 * n) + 1;
        }
        printf("%d ", n);
        counter += 1;
    }
    printf("\nEs sind %d Iterationen nötig", counter);
    return 0;
}
