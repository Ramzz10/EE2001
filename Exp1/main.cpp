#include<bits/stdc++.h>
using namespace std;
void C1_str(short int *,short int , short int , short int);
void C1_beh(short int *,short int , short int , short int);
void C2_str(short int *,short int , short int , short int);
void C2_beh(short int *,short int , short int , short int);
void C3_str(short int *,short int , short int , short int, short int);
void C3_beh(short int *,short int , short int , short int, short int);

int main(){
  ifstream data_input("data.dat");
  short int a,b,c,d,out;
  //Circuit 1
  cout<<"A"<<"\t||"<<"B"<<"\t||"<<"C"<<"\t||"<<"C1 Structual"<<"\t||"<<"C1 Behavioural";
  while(data_input>> a >> b >> c ){
      C1_str(out,a,b,c);
      cout<<a<<"\t||"<<b<<"\t||"<<c<<"\t||"<<out<<"\t||";
      C1_beh(out,a,b,c);
      cout<<out;
  }
  cout<<"\n\n";
  //Circuit 2
  cout<<"B"<<"\t||"<<"C"<<"\t||"<<"D"<<"\t||"<<"C2 Structual"<<"\t||"<<"C2 Behavioural";
  while(data_input>> a >> b >> c ){
      C2_str(out,a,b,c);
      cout<<a<<"\t||"<<b<<"\t||"<<c<<"\t||"<<out<<"\t||";
      C2_beh(out,a,b,c);
      cout<<out;
  }
  cout<<"\n\n";
  //Circuit 3
  cout<<"A"<<"\t||"<<"B"<<"\t||"<<"C"<<"\t||"<<"D"<<"\t||"<<"C3 Structual"<<"\t||"<<"C3 Behavioural";
  while(data_input>> a >> b >> c >> d ){
      C3_str(out,a,b,c,d);
      cout<<a<<"\t||"<<b<<"\t||"<<c<<"\t||"<<d<<"\t||"<<out<<"\t||";
      C3_beh(out,a,b,c,d);
      cout<<out;
  }
  return 0;
}
