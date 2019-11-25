#define NMAX 20

typedef int Tab[NMAX];

int weight(Tab, T, int first, int last){
  int sum = 0;
  for (int i = first; i <= last; i++){
    sum += T[i];
  }
  return sum;
}

int naiveWeak(Tab T, int* first, int* last){
  int w;
  int max = 0;
  int max_f, max_l;
  for (int f = 0; f < n; f++){
    for (int l = f; l < n; l++){
      w = weight(T, f, l);
      if (w > max){
        max = w;
        max_f = f;
        max_l = l;
      }
    }
  }
  *first = max_f;
  *last = max_l;
  return max;
}

int naiveString(Tab T, int* first, int* last){
  int w;
  int max = 0;
  int max_f, max_l;
  for (int f = 0; f < n; f++){
    w = 0;
    for (int l = f; l < n; l++){
      w += T[l];
      if (w > max){
        max = w;
        max_f = f;
        max_l = l;
      }
    }
  }
  *first = max_f;
  *last = max_l;
  return max;
}

int main(int argc, char const *argv[]) {
  /* code */
  return 0;
}
