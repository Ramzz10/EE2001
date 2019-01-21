void AND(short int *out,short int inp1, short int inp2)
{
  *out=inp1&inp2;
}
void OR(short int *out,short int inp1, short int inp2)
{
  *out=inp1|inp2;
}
void NOT(short int *out,short int inp)
{
  *out=~inp;
}
void XOR(short int *out,short int inp1, short int inp2)
{
  *out=inp1^inp2;
}
void NAND(short int *out,short int inp1, short int inp2)
{
  *out=~(inp1&inp2);
}
void NOR(short int *out,short int inp1, short int inp2)
{
  *out=~(inp1|inp2);
}
void XNOR(short int *out,short int inp1, short int inp2)
{
  *out=~(inp1^inp2);
}
