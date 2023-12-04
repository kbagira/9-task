#include <iostream>
using namespace std;
int main() {
    int rows, cols,i,j;
    rows=2;
    cols=3;
    double arr[rows][cols];
    for(i=0; i<rows; i++){
        for(j=0; j<cols; j++){
            cin>>arr[i][j];
        }
    }
    double d=arr[0][0]*arr[1][1]-arr[1][0]*arr[0][1];
    double dx=arr[0][2]*arr[1][1]-arr[1][2]*arr[0][1];
    double dy=arr[0][0]*arr[1][2]-arr[1][0]*arr[0][2];
    double x=dx/(d);
    double y=dy/(d);
    cout<<x<<endl;
    cout<<y;

    return 0;
}
