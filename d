#include <iostream>
using namespace std;
int main() {
    int rows, cols,n;
    cin>>n;
    rows=n;
    cols=n;
    int num=1;
    int arr[rows][cols];
    for(int i=0; i<rows;i++){
        if(i%2==0){
            for(int j=0; j<cols; j++){
               arr[i][j]=num;
               num++;
            }
        }
        else{
             for(int j=cols-1; j>=0; j--){
               arr[i][j]=num;
               num++;
             }
        }
    }
    for(int i=0; i<rows;i++){
        for(int j=0; j<cols; j++){
            cout<<arr[i][j]<<" ";
        }
        cout<<endl;
    }
    
  
    

    return 0;
}
