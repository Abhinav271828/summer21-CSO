#include <stdio.h>

extern int hamm(short int a, short int b);

int main (void)
{
    unsigned int a, b; int c;

    printf("Enter A: ");
    scanf("%i",&a);
    printf("Enter B: ");
    scanf("%i",&b);

    c = hamm(a,b);

    printf("Hamming distance = C = %d\n",c);
}
