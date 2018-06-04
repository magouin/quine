#include<stdio.h>
/*
	This program will print its own source when run.
*/
void func(void){}
int main(){char*a="#include<stdio.h>%c/*%c	This program will print its own source when run.%c*/%cvoid func(void){}%cint main(){char*a=%c%s%c;%c/*%c	This program will print its own source when run.%c*/%cfunc();printf(a,10,10,10,10,10,34,a,34,10,10,10,10);}";
/*
	This program will print its own source when run.
*/
func();printf(a,10,10,10,10,10,34,a,34,10,10,10,10);}