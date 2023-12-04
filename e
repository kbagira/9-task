#include <iostream>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;
    int rows=n;
    int cols=m;
    int prices[rows][cols];
    int sold[rows][cols];
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            cin >> prices[i][j];
        }
    }
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            cin >> sold[i][j];
        }
    }
    long long totalRevenue = 0;
    for (int i = 0; i < n; ++i) {
        for (int j = 0; j < m; ++j) {
            if (sold[i][j] == 1) {
                totalRevenue += prices[i][j];
            }
        }
    }

    cout << totalRevenue;

    return 0;
}
