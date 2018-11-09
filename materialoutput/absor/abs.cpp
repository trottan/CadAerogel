#include <iostream>
#include <fstream>
#include <math.h>
using namespace std;

const int HOLD = 99;
void abs(){

ifstream in, in2 ,in3, in4;

float lambda[HOLD], C[HOLD], A0[HOLD], t[HOLD];


in.open("Wavelength.txt");
in2.open("Clarity.txt");
in3.open("A0.txt");
in4.open("Thickness.txt");
if(in.fail() || in2.fail()||in3.fail()||in4.fail())
{
	cout << "ERROR: ONE FILE NOT FOUND" << endl;
	exit(1);
}


ofstream out;
out.open("AbsorptionLength.txt");

for(int i =0; i < 71; i++)
{
	in >> lambda[i];
}
for(int i =0; i < HOLD; i++)
{
	in2 >> C[i];
}
for(int i =0; i < HOLD; i++)
{
	in3 >> A0[i];
}
for(int i = 0; i < HOLD; i++)
{
	in4 >> t[i];
}


float absor[HOLD][HOLD];


for(int i = 0; i < HOLD; i++)
{
	t[i] = t[i] * 1e7;
}


//absor[1][1] = A0[0] * exp(-(t*C[0])/(pow(lambda[50],4)));

for(int i =0; i < HOLD;i++)
{
	for(int j = 0; j < 71;j++)
	{
		absor[i][j] = A0[i] * exp(-(t[i]*C[i])/(pow(lambda[j],4)));


	}
}



for(int i = 0; i < HOLD; i++)
{
	out << "Tile_" << i + 1 << ": " << endl;
	out << "\u03BB(nm)\t" << "T" << endl;
	for(int j = 0; j < 71; j++)
	{
		
		out << lambda[j] << "\t" << absor[i][j] << endl;
	
		
	}
	
	out << endl;	
}



in.close();
in2.close();
in3.close();
out.close();
}
