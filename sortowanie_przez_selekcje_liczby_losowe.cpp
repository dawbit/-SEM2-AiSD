#include<iostream>
#include<cstdlib>
#include<fstream>
#include <ctime>

using namespace std;

void sortowanie_przez_selekcje(int tab[],int n) //n - ilo�� element�w jak� b�dziemy sortowa�
{
int indeks_komorki; //zmienna pomocnicza kt�ra przechowuje indeks kom�rki 
    //z minimaln� warto�ci�
  for(int i=0;i<n-1;i++){
  	indeks_komorki = i;
  	
    for(int j=i+1;j<n;j++){ //p�tla wyszukuje najmniejszy element w podzbiorze nieposortowanym
    	if(tab[j]<tab[indeks_komorki]){
      		indeks_komorki = j;
      	}
 	}
    //zamiana elementu najmniejszego w podzbiorze z pierwsz� pozycj� nieposortowan�, w tym celu zosta�a wykorzystana wbudowana funkcja swap zamieniaj�ca elementy
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
	
	sortowanie_przez_selekcje(tab,n); //sortowanie przez selekcj�
	
	out<<"liczby losowe po sortowaniu:"<<endl;
	
	for(int i=0;i<n;i++){
		cout<<tab[i]<<" "; //wypisanie posortowanych element�w
		out<<tab[i]<<endl;
	}
		
	cout<<endl;
	out.close();
	system("pause");	
	return 0;
}
