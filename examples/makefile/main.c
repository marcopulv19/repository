#include "lib1.h"
#include "lib2.h"
#include <stdio.h>

#define A 6
#define B -1

int main (int argc, char* argv[]) {

    if (argc!=2) {
        printf("Inserire un parametro per l'esecuzione!\n"); 
        return 1; }
    int y = argv[0][0];

    int (*f)(int,int) = sum; 
    int x = f(A,B);
    printf("Result = %d\n",x);
    
    }