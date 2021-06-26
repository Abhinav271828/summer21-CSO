#include <stdio.h>

#define N 8

extern void rotate(short int A[N][N]);

int main (void)
{
    short int A[N][N];
    for (int i = 0; i < 8; i++)
    {
        printf("Enter row %d: ",i);
        for (int j = 0; j < 8; j++)
            scanf(" %hi", &A[i][j]);
    }

    rotate(A);

    printf("Rotated:\n");
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++)
            printf("%hi ",A[i][j]);
        printf("\n");
    }
}
