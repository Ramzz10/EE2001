#include<bits/stdc++.h>
using namespace std;

int main(){
  ofstream file("data3.dat");
  int n,val;
  char a='a';
  cout<<"Enter number of bits : ";
  cin>>n;
  for(int i=0;i<pow(2,n);i++){
    a='a';
    val = i;
    file<<"#10 ";
    for(int j=n-1;j>=0;j--){
      file<<a<<" = "<<(int)(val/pow(2,j))<<"; ";
      val =val- ((int)(val/pow(2,j)))*pow(2,j);
      a++;
    }
    file<<"\n";
  }
  return 0;
}
