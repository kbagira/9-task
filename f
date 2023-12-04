#include <iostream>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;
    int arr[n][m];
    int num = 1;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            arr[i][j] = num++;
        }
    }

    int unchanged = 0;

    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            int oldSeat = i * m + j + 1;
            int newSeat = j * n + i + 1;
            
            if (oldSeat == newSeat) {
                unchanged++;
            }
        }
    }

    cout << unchanged;

    return 0;
}
