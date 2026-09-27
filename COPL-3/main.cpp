#include <iostream>
#include <vector>

using namespace std;

vector<vector<int>> multiply(vector<vector<int>>& mat1,
                             vector<vector<int>>& mat2)
{
    int m = mat1.size();
    int k = mat1[0].size();
    int n = mat2[0].size();

    vector<vector<int>> result(m, vector<int>(n, 0));

    for (int i = 0; i < m; i++)
    {
        for (int t = 0; t < k; t++)
        {
            if (mat1[i][t] != 0)
            {
                for (int j = 0; j < n; j++)
                {
                    result[i][j] += mat1[i][t] * mat2[t][j];
                }
            }
        }
    }

    return result;
}

int main()
{
    vector<vector<int>> mat1 = {
        {1, 0, 0},
        {-1, 0, 3}
    };

    vector<vector<int>> mat2 = {
        {7, 0, 0},
        {0, 0, 0},
        {0, 0, 1}
    };

    vector<vector<int>> ans = multiply(mat1, mat2);

    cout << "Result Matrix\n";

    for (auto &row : ans)
    {
        for (auto x : row)
            cout << x << " ";   // Space between numbers

        cout << endl;
    }

    return 0;
}
