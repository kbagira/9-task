#include <iostream>
using namespace std;
int main() {
    int rows, cols,i,j,n,m;
    cin>>n>>m;
    rows=n;
    cols=m;
    int arr[rows][cols];
    for(i=0; i<rows; i++){
        for(j=0; j<cols; j++){
            cin>>arr[i][j];
        }
    }
    int newArr[m][n];
    for(i=0; i<m; i++){
        for(j=0; j<n; j++){
            newArr[i][j]=arr[j][i];
        }
    }
    for(i=0; i<m; i++){
        for(j=0; j<n; j++){
            cout<<newArr[i][j]<<" ";
        }
        cout<<endl;
    }
    

    return 0;
}
