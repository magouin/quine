#include<stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
/*
	This program will print its own source when run.
*/
#define A
#define B
#define FT(x)int main(){ char*a="#include<stdio.h>%c#include <sys/types.h>%c#include <sys/stat.h>%c#include <fcntl.h>%c/*%c	This program will print its own source when run.%c*/%c#define A%c#define B%c#define FT(x)int main(){ char*a=%c%s%c;int fd;fd=open(%cGrace_kid.c%c,O_WRONLY|O_CREAT,0644);if(fd<0)return(1);dprintf(fd,a,10,10,10,10,10,10,10,10,10,34,a,34,34,34,10,10);}%cFT(xxxxxxxx)%c";int fd;fd=open("Grace_kid.c",O_WRONLY|O_CREAT,0644);if(fd<0)return(1);dprintf(fd,a,10,10,10,10,10,10,10,10,10,34,a,34,34,34,10,10);}
FT(xxxxxxxx)
