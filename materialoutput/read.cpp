#include <iostream>
#include <fstream>
#include <string>
using namespace std;


void read(){

string filename =  "PassPorts.txt";


ifstream in;

in.open(filename);
if(in.fail())
{
	cout << "ERROR: file not found";
	exit(1);
}



int size = 1300;
//cout <<"Hello";
long double hold[size];


for(int i =0; i < size;i++)
{
	in >> hold[i];
}

ofstream out, out2, out3,out4;

// these are for older files that I have moved so I just got rid of the code
/*out.open("abs.txt");
out2.open("ref.txt");
out3.open("p1.txt");
out4.open("p2.txt");


int count = 0, count2 =0;

for(int i =0; i < size;i++)
{
	if(hold[i] > 40 && hold[i] < 61)
	{
		out << "\"" << hold[i] << "*cm\", ";

		count++;
	}else if(hold[i] == 0.097) {
		out3 << hold[i] << " "; //<< "\n";
		
	}else if(hold[i] == 84.13) {
		out4 << hold[i] << " "; //<< "\n";
		
	} else if(hold[i] > 1.04 && hold[i] < 1.06) {

		out2 << hold[i] << " ";
		count2++;
	}
	


//cout << "Count " << count << " + count2 " << count2 << endl;


out.open("A0.txt");

for(int i =0; i < size; i++)
{

 if(hold[i] < 1 && hold[i] > .8999)
	{
		out << hold[i] << " ";

	}
}*/


// This clmn had to be done by hand as it lost two decimal places
/*out.open("Clarity.txt");
for(int i = 0; i < size; i++)
{
	if(hold[i] < 0.009 && hold[i] > 0.003)
	{
		out << hold[i] << endl;

	}

}*/ 


out.open("Thickness.txt");
for(int i = 0; i < size; i++)
{
	if(hold[i] == 20 || hold[i] == 30)
	{
		hold[i] = hold[i]/10;
		out << hold[i] << endl;

	}

} 




in.close();
out.close();
/*out2.close();
out3.close();
out4.close();*/

}

