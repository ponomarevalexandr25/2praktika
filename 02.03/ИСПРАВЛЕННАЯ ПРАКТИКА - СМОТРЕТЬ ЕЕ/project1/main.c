#include <8051.h>
void main()
{
unsigned char i,j; // 8 bit peremen
unsigned char massiv [11]=
{
0xC0, 
0xF9,
0xA4,
0xB0,
0x99,
0x92,
0x82,
0xF8,
0x80,
0x90,
0xFF
};
unsigned char massiv2[10]=
{
0xF9,
0x90,
0xA4,
0x80,
0xB0,
0xF8,
0x99,
0x82,
0x92,
};
P1=0x00; // snachala on indikator
P2=massiv[10];
for(i=0;i<10;i++) // vvodim code v cicle v port 2
{
if(P10>0)
{
P2=massiv2[i]; // code ot 0 do 9
}
else
{
P2=massiv[i];
}
for(j=0;j<100;j++) // zadershka
continue;
}
P2=massiv[10]; // off indicator
while(1);
}