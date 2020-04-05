#include<iostream>
#include<cstdlib>
#include<fstream>
#include <ctime>

using namespace std;

void sortowanie_przez_selekcje(int tab[],int n) //n - iloœæ elementów jak¹ bêdziemy sortowaæ
{
int indeks_komorki; //zmienna pomocnicza która przechowuje indeks komórki 
    //z minimaln¹ wartoœci¹
  for(int i=0;i<n-1;i++){
  	indeks_komorki = i;
  	
    for(int j=i+1;j<n;j++){ //pêtla wyszukuje najmniejszy element w podzbiorze nieposortowanym
    	if(tab[j]<tab[indeks_komorki]){
      		indeks_komorki = j;
      	}
 	}
    //zamiana elementu najmniejszego w podzbiorze z pierwsz¹ pozycj¹ nieposortowan¹, w tym celu zosta³a wykorzystana wbudowana funkcja swap zamieniaj¹ca elementy
	swap(tab[i], tab[indeks_komorki]);
  }
}

int main()
{
	ofstream out( "selekcja_liczby_losowe.txt" );
	int *tab, n, a, b;
	srand( time( NULL ) );
	
	cout<<"Ile liczb chcesz posortowac (losowych)? ";
	cin>>n;
	cout<<"Podaj poczatek przedzialu";
	cin>>a;
	cout<<"Podaj koniec przedzialu";
	cin>>b;
	
	tab = new int [n];
	
	out<<"liczby losowe przed sortowaniem:"<<endl;
	
	for(int i=0;i<n;i++){
		tab[i]=rand() % ((b-a)+1) + a ; //wylosowanie liczb do posorotwania
		out<<tab[i]<<endl;
	}
	
	out<<endl;
	
	sortowanie_przez_selekcje(tab,n); //sortowanie przez selekcjê
	
	out<<"liczby losowe po sortowaniu:"<<endl;
	
	for(int i=0;i<n;i++){
		cout<<tab[i]<<" "; //wypisanie posortowanych elementów
		out<<tab[i]<<endl;
	}
		
	cout<<endl;
	out.close();
	system("pause");	
	return 0;
}
