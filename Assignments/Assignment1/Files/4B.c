#include <stdio.h>
#include <stdlib.h>

#define N 32

extern void freq(char L[N], int* f);

int main (void)
{
    char L[N]; int* f = (int*)malloc(sizeof(int));
    
    printf("Enter characters without spaces: ");
    for (int i = 0; i < N; i++)
        scanf("%c",&L[i]);
    
    freq(L,f);

    for (int i = 0; i < 26; i++)
        printf("Frequency of %c is %d\n",65+i,*(f+i));
}

