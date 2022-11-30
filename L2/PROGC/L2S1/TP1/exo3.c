#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define N_MAX 1000

typedef struct {
  int tab[N_MAX];
  int n;
} Tab;

Tab create_tab(int n){
  if (n > N_MAX) n = N_MAX;

  Tab tab;
  tab.n = n;

  for (int i = 0; i < n; i++){
    tab.tab[i] = rand();
  }

  return tab;
}

void cleanse_tab(Tab* tab){
  for (int i = 0; i < tab->n; i ++){
    if (tab->tab[i] % 7 == 0){
      tab->tab[i] = tab->tab[tab->n-1];
      tab->n -= 1;
      i -= 1;
    }
  }
}

void print_tab(Tab tab){
  for (int i = 0; i < tab.n; i ++){
    printf("%d ", tab.tab[i]);
  }
  printf("\n");
}

int main(int argc, char const *argv[]) {
  srand(time(NULL));
  Tab tab = create_tab(10);
  cleanse_tab(&tab);
  print_tab(tab);
  return 0;
}
