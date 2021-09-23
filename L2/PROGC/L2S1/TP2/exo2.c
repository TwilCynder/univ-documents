#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_VAL 100

typedef struct{
  int* tab;
  int n;
} Tab;

Tab createTab(int size){
  Tab tab;
  tab.tab = (int*)malloc(sizeof(int) * size);
  tab.n = size;

  if (tab.tab == NULL){
    fprintf(stderr, "Allocation error\n");
    exit(1);
  }

  return tab;
}

void resizeTab(Tab* tab, int newSize){
  tab->tab = (int*)realloc(tab->tab, newSize * sizeof(int));
  tab->n = newSize;
}

Tab createRandomTab(int size){
  Tab tab;
  tab.tab = (int*)malloc(size * sizeof(int));
  tab.n = size;

  if (tab.tab == NULL){
    fprintf(stderr, "Allocation error\n");
    exit(1);
  }

  for (int i = 0; i < tab.n; i++){
    tab.tab[i] = rand() % (MAX_VAL + 1);
  }

  return tab;
}

Tab extract_multiples(Tab* tab, int k){

  Tab newTab = createTab(1);

  for (int i = 0; i < tab->n; i ++){
    if (tab->tab[i] % k == 0){

      newTab.tab[newTab.n - 1] = tab->tab[i];
      resizeTab(&newTab, newTab.n + 1);

      tab->tab[i] = tab->tab[tab->n-1];
      tab->n -= 1;
      i -= 1;

    }
  }
  resizeTab(&newTab, newTab.n - 1); //pour des raisons pratiques newTab a toujours une case de trop : on la retire
  return newTab;
}

void viewTab(Tab tab){
  for (int i = 0; i < tab.n; i++){
    printf("%d ", tab.tab[i]);
  }
  printf("\n");
}

void testTabs(Tab originTab, Tab multiples_7){
  printf("Tableau initial sans multiples de 7 (%d) : \n", originTab.n);
  viewTab(originTab);

  printf("Tableau contenant les multiples de 7  (%d): \n", multiples_7.n);
  viewTab(multiples_7);
}

int main(int argc, char const *argv[]) {
  srand(time(NULL));

  int n;
  printf("Nombre de valeurs du tableau initial : ");
  scanf("%d", &n);

  Tab originTab = createRandomTab(n);

  Tab multiples = extract_multiples(&originTab, 7);

  testTabs(originTab, multiples);

  return 0;
}
