#include <iostream>
#include <fstream>
#include <math.h>

using namespace std;

const int AR = 100;



double wavelength(double &lambda, int i){

double h = 6.62e-34;
double c = 2.99e8;



double E[AR] = {1.3778,  1.3933, 1.4091, 1.4253,   1.4419,  
		1.4588,  1.4762,  1.4940,  1.5122,  1.5309, 
		1.5500,  1.5696,  1.5897,  1.6104,  1.6316, 
		1.6533,  1.6757,  1.6986,  1.7222,  1.7465,
		1.7714,  1.7971,  1.8235,  1.8507,  1.8788, 
		1.9077,  1.9375,  1.9683,  2.0000,  2.0328, 
		2.0667,  2.1017,  2.1379,  2.1754,  2.2143, 
		2.2545,  2.2963,  2.3396,  2.3846,  2.4314, 
		2.4800,  2.5306,  2.5833,  2.6383,  2.6957,
		2.7556,  2.8182,  2.8837,  2.9524,  3.0244,  
		3.1000,  3.1795,  3.2632,  3.3514, 3.4444,   
		3.5429,  3.6471,  3.7576,  3.8750, 4.0000,  
		4.1333,  4.2759,  4.4286,  4.5926,  4.7692,  
		4.9600,  5.1667,  5.3913,  5.6364,  5.9048, 
		6.2000};



double Ej = E[i] * 1.6e-19;

 lambda = (h*c/Ej) * 1e9;



return lambda;


}






void pen(){

double n400fit = 1.0494;

double n400[99], p1[99], p2[99];

double index[99][71];

ifstream in, in2, in3;
ofstream out;

in.open("ref.txt");
in2.open("p1.txt");
in3.open("p2.txt");
if(in.fail() || in2.fail() || in3.fail())
{
	cout << "ERROR: File not found";
	exit(1);
}


for(int i =0; i < 99;i++)
{

	in >> n400[i];


	if(i == 80)
	{

		n400[i] = 1.0;
	}
}
/*for(int i = 0; i < 99;i++)
{
	cout << i + 1 << " " << n400[i] << "\n"; 
}*/



for(int i = 0; i < 99;i++)
{
	in2 >> p1[i];
}
/*for(int i = 0; i < 99;i++)
{
	cout << i + 1 << " " << p1[i] << "\n"; 
}*/




for(int i =0; i < 99;i++)
{

	in3 >> p2[i];

}
/*for(int i =0; i < 99; i++)
 {
	cout << i + 1 << " " << p2[i] << "\n";
}*/


double lambda[AR];
ofstream out2;
out2.open("Wavelength.txt");

for(int i =0; i < 71; i++)
{
	wavelength(lambda[i], i);

}
for(int i =0; i < 71; i++)
{
	cout << i + 1 << " " << lambda[i] << "\n";
	out2 << lambda[i] << endl;
}




for(int i = 0; i < 99;i++)
{

	for(int j = 0; j < 71; j++)
	{
		index[i][j] = (n400[i]/n400fit)*(sqrt(1+(p1[i]*lambda[j]*lambda[j])/(lambda[j] * lambda[j] - p2[i]*p2[i])));
	}
}


for(int i = 0; i < 99;i++)
{

	for(int j = 0; j < 71; j++)
	{
		cout << "tile_" << i+1 << " at index_" << j+1 << " = " << index[i][j] << endl;
	}

	cout << endl;

}




out.open("index.txt");

out << "my @ $irefr_aerogel " << "= ( ";
for(int i = 0; i < 99;i++)
{
	out << "[ ";
	for(int j = 0; j < 71; j++)
	{
		out << index[i][j];
		if(j == 70){out << "";} else {out << ", ";} 
	}

	out << "],";

}
out << ");";

in.close();
in2.close();
in3.close();
out.close();

}





