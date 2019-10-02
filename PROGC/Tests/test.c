#include <stdio.h>

int main(int argc, char const *argv[]) {
  int i,tab[3]={0,2,1};
  for (i=0;i<3;i++){
    tab[i]=tab[tab[i]];
    printf("%d", tab[i]);
  }
  return 0;
}
