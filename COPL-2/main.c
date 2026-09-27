#include <stdio.h>

void multiply(int m, int k, int n,
              int mat1[m][k],
              int mat2[k][n],
              int result[m][n])
{
    int i, j, t;

    // Initialize result matrix
    for(i = 0; i < m; i++)
        for(j = 0; j < n; j++)
            result[i][j] = 0;

    // Sparse multiplication
    for(i = 0; i < m; i++)
    {
        for(t = 0; t < k; t++)
        {
            if(mat1[i][t] != 0)
            {
                for(j = 0; j < n; j++)
                {
                    result[i][j] += mat1[i][t] * mat2[t][j];
                }
            }
        }
    }
}

int main()
{
    int mat1[2][3] = {
        {1,0,0},
        {-1,0,3}
    };

    int mat2[3][3] = {
        {7,0,0},
        {0,0,0},
        {0,0,1}
    };

    int result[2][3];

    multiply(2,3,3,mat1,mat2,result);

    printf("Result Matrix:\n");

    for(int i=0;i<2;i++)
    {
        for(int j=0;j<3;j++)
            printf("%4d",result[i][j]);
        printf("\n");
    }

    return 0;
}
