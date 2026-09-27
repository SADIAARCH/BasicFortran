#include <stdio.h>

#define ROW 5
#define COL 5

float area(int r)
{
    return 3.1416 * r * r;
}

float perimeter(int r)
{
    return 2 * 3.1416 * r;
}

int main()
{
    int radius[ROW][COL];
    float areas[ROW][COL];

    FILE *fp;

    fp = fopen("circle.txt", "w");

    if(fp == NULL)
    {
        printf("File cannot be opened.\n");
        return 1;
    }

    int i, j, serial = 1;

    printf("Enter %d radius values:\n", ROW * COL);

    for(i = 0; i < ROW; i++)
    {
        for(j = 0; j < COL; j++)
        {
            scanf("%d", &radius[i][j]);
        }
    }

    fprintf(fp,"Serial\tRadius\tArea\t\tPerimeter\n");

    for(i = 0; i < ROW; i++)
    {
        for(j = 0; j < COL; j++)
        {
            areas[i][j] = area(radius[i][j]);

            fprintf(fp,"%d\t%d\t%.2f\t\t%.2f\n",
                    serial,
                    radius[i][j],
                    area(radius[i][j]),
                    perimeter(radius[i][j]));

            serial++;
        }
    }

    fclose(fp);

    printf("\nRadius and Corresponding Areas\n\n");

    for(i = 0; i < ROW; i++)
    {
        for(j = 0; j < COL; j++)
        {
            printf("%d -> %.2f\t", radius[i][j], areas[i][j]);
        }
        printf("\n");
    }

    printf("\nData stored successfully in circle.txt\n");

    return 0;
}
