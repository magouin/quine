#include<stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
int main(){int i = 5;if(i<=0)return(0);char*a="#include<stdio.h>%c#include <stdlib.h>%c#include <sys/types.h>%c#include <sys/stat.h>%c#include <fcntl.h>%cint main(){int i = %d;if(i==0)return(0);char*a=%c%s%c;int fd;char str[]=%cSully_0.c%c;char cmd[]=%cgcc -Wall -Wextra -Werror Sully_0.c ; ./a.out%c;cmd[32]+=i-1;str[6]+=i-1;fd=open(str,O_WRONLY|O_CREAT,0644);if(fd<0)return(1);dprintf(fd,a,10,10,10,10,10,i - 1,34,a,34,34,34,34,34);system(cmd);}";int fd;char str[]="Sully_0.c";char cmd[]="gcc -Wall -Wextra -Werror Sully_0.c ; ./a.out";cmd[32]+=i-1;str[6]+=i-1;fd=open(str,O_WRONLY|O_CREAT,0644);if(fd<0)return(1);dprintf(fd,a,10,10,10,10,10,i - 1,34,a,34,34,34,34,34);system(cmd);}