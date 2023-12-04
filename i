#include <iostream>
using namespace std;

int main() {
    int na, ma, nb, mb;
    cin >> na >> ma;
    int A[na][ma];
    for (int i = 0; i < na; ++i) {
        for (int j = 0; j < ma; ++j) {
            cin >> A[i][j];
        }
    }
    cin >> nb >> mb;
    int B[nb][mb];
    for (int i = 0; i < nb; ++i) {
        for (int j = 0; j < mb; ++j) {
            cin >> B[i][j];
        }
    }
    if (ma != nb) {
        cout << -1 << endl;
        return 0;
    }
    int C[na][mb];
    for (int i = 0; i < na; ++i) {
        for (int j = 0; j < mb; ++j) {
            C[i][j] = 0;
            for (int k = 0; k < ma; ++k) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    cout << na << " " << mb << endl;

    for (int i = 0; i < na; ++i) {
        for (int j = 0; j < mb; ++j) {
            cout << C[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}

