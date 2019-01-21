void AND(short int *,short int , short int );
void NAND(short int *,short int , short int );
void NOT(short int *, short int);
void NOR(short int *,short int , short int );
void XNOR(short int *,short int , short int );
void OR(short int *,short int , short int );
void XOR(short int *,short int , short int );

//structural models for the circuits
void C1_str(short int *out,short int a,short int b ,short int c){
  //z=(a+b)(a+NOT b)(NOT a+b+NOT c)

  short int tmp1,tmp2,tmp3;

  NOT(&tmp1,a);             //tmp2 = (NOT a)
  NOT(&tmp3,c);             //tmp4 = (NOT c)
  OR(&tmp1,tmp1,tmp3);      //tmp5 = (NOT a + NOT c)
  OR(&tmp3,tmp1,b);         //tmp6 = (NOT a + NOT c + b)
  OR(&tmp1,a,c);            //tmp1 = (a+c)
  AND(&tmp3,tmp3,tmp1)                                // tmp3 = (a+c)(NOT a + NOT c +b )
  NOT(&tmp1,b)              //tmp2 = (NOT b)
  OR(&tmp1,a,tmp1);         //tmp3 = (a+NOT b)
  //AND(&tmp2,tmp1,tmp2);     //tmp2 = (a+b)(a+ NOT b)
  AND(out,tmp1,tmp3);       //out = (a+b)(a+ NOT b)(NOT a + b + NOT c)

}
