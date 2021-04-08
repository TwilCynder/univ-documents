#include <stdio.h>

void hms_time_p(int time, int *h, int *m, int *s){
  *h = time / 3600;
  time %= 3600;
  *m = time / 60;
  *s = time % 60;
}

void hms_time_a(long time, int Tab[]){
  hms_time_p(time, Tab, Tab + 1, Tab + 2);
}

int main(int argc, char const *argv[]) {
  int hms[3], time;


  scanf("%d", &time);
  hms_time_a(time, hms);
  printf("%d heure(s), %d minute(s), %d secondes\n", hms[0], hms[1], hms[2]);

  return 0;
}
