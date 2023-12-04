#include <iostream>
using namespace std;

int main() {
    int N;
    cin >> N;
    int arr[N][N];
    int num = 1;

    for (int d = 0; d < 2 * N - 1; ++d) {
        if (d % 2 != 0) {
            int i, j;

            if (d < N) {
                i = d;
                j = 0;
            } else {
                i = N - 1;
                j = d - N + 1;
            }

            while (i >= 0 && j < N) {
                arr[i--][j++] = num++;
            }
        } else {
            int j, i;

            if (d < N) {
                j = d;
                i = 0;
            } else {
                j = N - 1;
                i = d - N + 1;
            }

            while (j >= 0 && i < N) {
                arr[i++][j--] = num++;
            }
        }
    }

    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
            cout << arr[i][j] << ' ';
        }
        cout << endl;
    }

    return 0;
}
