#include <iostream> 
#include "conio.h"
#include <string>

using namespace std;

extern "C"
{
	void __cdecl asm_in( char *second, char *first);
}


extern "C"
{
	void __cdecl asm_out(char *second,char *first)
	{
		
	
		int j;
		int k = 0;
		for (int i = 0; i < 5; i++) {
			if (first[i] == second[i]) {
				k++;
					/*for (j = i; j < 5 - k; j++) {
						first[j] = first[j + 1];
						second[j] = second[j + 1];
					}
					for (j = 5 - k; j < 5; j++) {
						first[j] = ' ';
						second[j] = ' ';
					}*/
				first[i] = ' ';
				second[i] = ' ';
			}
		}
		for (int i = 0; i < 5; i++) {

		cout << first[i];
			
	}
		cout << endl;
	
		
		cout << second;


		cin.get();
	}
}


int main()
{

	char str1[5];
	char str2[5];
	asm_in(str1,str2);
	
	cin.get();
}
