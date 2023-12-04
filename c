#include <iostream>
using namespace std;
int main() {
    int rows, cols,n;
    cin>>n;
    rows=n;
    cols=n;
    int arr[rows][cols];
    for(int i=0; i<rows;i++){
        for(int j=0; j<cols; j++){
            cin>>arr[i][j];
        }
    }
    int d1=0;
    int d2=0;
     for(int i=0; i<rows;i++){
        d1=d1+arr[i][i];
        d2=d2+arr[i][n-1-i];
    }
    cout<<d1<<" "<<d2;
    

    return 0;
}
