#include<bits/stdc++.h>
using namespace std;
void C1_str(short int *,short int , short int , short int );
void C1_beh(short int *,short int , short int , short int );
void C2_str(short int *,short int , short int , short int );
void C2_beh(short int *,short int , short int , short int );
void C3_str(short int *,short int , short int , short int, short int );
void C3_beh(short int *,short int , short int , short int, short int );
short int a,b,c,d,out;
void Circuit1(){
  //Circuit 1
  ifstream data_input1("data3.dat");
  cout<<"\n";
  cout<<"|\tA"<<" |"<<"\tB"<<" |"<<"\tC"<<" |"<<"   C1 Structual"<<" |\t"<<"C1 Behavioural |";
  cout<<"\n";
  while(data_input1>> a >> b >> c ){
      C1_str(&out,a,b,c);
      cout<<"|\t"<<a<<" |\t"<<b<<" |\t"<<c<<" |\t\t "<<out<<" |\t\t     ";
      C1_beh(&out,a,b,c);
      cout<<out<<" |";
      cout<<"\n";
  }
  data_input1.close();
  cout<<"\n\n";
}
void Circuit2(){
  //Circuit 2
  ifstream data_input2("data3.dat");
  cout<<"|\tB"<<" |"<<"\tC"<<" |"<<"\tD"<<" |"<<"   C2 Structual"<<" |\t"<<"C2 Behavioural |";
  cout<<"\n";
  while(data_input2>> a >> b >> c ){
      C2_str(&out,a,b,c);
      cout<<"|\t"<<a<<" |\t"<<b<<" |\t"<<c<<" |\t\t "<<out<<" |\t\t     ";
      C2_beh(&out,a,b,c);
      cout<<out<<" |";
      cout<<"\n";
  }
  cout<<"\n\n";
  data_input2.close();
}
void Circuit3(){
  //Circuit 3
  ifstream data_input3("data4.dat");
  cout<<"|\tA"<<" |"<<"\tB"<<" |"<<"\tC"<<" |"<<"\tD"<<" |"<<"   C3 Structual"<<" |\t"<<"C3 Behavioural |";
  cout<<"\n";
  while(data_input3>> a >> b >> c >> d ){
      C3_str(&out,a,b,c,d);
      cout<<"|\t"<<a<<" |\t"<<b<<" |\t"<<c<<" |\t"<<d<<" |\t\t "<<out<<" |\t\t     ";
      C3_beh(&out,a,b,c,d);
      cout<<out<<" |";
      cout<<"\n";
  }
  data_input3.close();
}

int main(){
  Circuit1();
  Circuit2();
  Circuit3();
  return 0;
}
