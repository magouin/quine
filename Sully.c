#include<stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/stat.h>
int main(){
int i = 5;
struct stat buffer;int exist = stat("Sully_5",&buffer);i+=(exist == 0)?0:1;
if(i<=0)return(0);char*a="#include<stdio.h>%c#include <stdlib.h>%c#include <sys/types.h>%c#include <sys/stat.h>%c#include <fcntl.h>%c#include <sys/stat.h>%cint main(){%cint i = %d;%cstruct stat buffer;int exist = stat(%cSully_5%c,&buffer);i+=(exist == 0)?0:1;%cif(i<=0)return(0);char*a=%c%s%c;int fd;char str[]=%cSully_0.c%c;char cmd[]=%cgcc -Wall -Wextra -Werror Sully_0.c -o Sully_0 ; ./Sully_0%c;cmd[32]+=i-1;cmd[45]+=i-1;cmd[57]+=i-1;str[6]+=i-1;fd=open(str,O_WRONLY|O_CREAT,0644);if(fd<0)return(1);dprintf(fd,a,10,10,10,10,10,10,10,i - 1,10,34,34,10,34,a,34,34,34,34,34);system(cmd);}";int fd;char str[]="Sully_0.c";char cmd[]="gcc -Wall -Wextra -Werror Sully_0.c -o Sully_0 ; ./Sully_0";cmd[32]+=i-1;cmd[45]+=i-1;cmd[57]+=i-1;str[6]+=i-1;fd=open(str,O_WRONLY|O_CREAT,0644);if(fd<0)return(1);dprintf(fd,a,10,10,10,10,10,10,10,i - 1,10,34,34,10,34,a,34,34,34,34,34);system(cmd);}