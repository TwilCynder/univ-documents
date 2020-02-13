#include <stdio.h>
#include <unistd.h>
#include <time.h>
#include <sys/wait.h>
#include "term_mode.h"
#include "stdlib.h"

void pause_miscroseconde(){
  struct timespec micro_pause;
  micro_pause.tv_sec = 0;       /* secondes */
  micro_pause.tv_nsec = 1000;   /* nanosecondes */
  nanosleep( &micro_pause, NULL);
}

void clear(){
  printf("\033[H\033[J");
  fflush(stdout);
  printf("           |\n           |\n");
}

void printf_pos(char*s, int x, int y){
  printf ("\033[%d;%dH%s", y, x, s);
  fflush (stdout);
}

void joueur(char my_char, int ligne, int distance){
  char c;
  int pos = 1;

  ssize_t rd = 0;

  printf_pos(&my_char, pos, ligne);

  do{
    rd = read(STDIN_FILENO, &c, 1);
    if (rd != -1 && c == my_char){
      printf_pos(" ", pos, ligne);
      pos += 1;
      printf_pos(&my_char, pos, ligne);
      if 
    }
    pause_miscroseconde();
  } while (c != 'f'); 
  return 0;
}

int main(int argc, char const *argv[])
{
  Term_non_canonique();
  printf("\033[?25l");
  clear();

  pid_t pid;
  char* playerChars = "am";

  for (int i = 0; i < 2; i++){
    pid = fork();
    if (!pid){
      joueur(playerChars[i], i + 1, 10);
      exit(0);
    }
  }

  for (int i = 0; i < 2; i++){
    wait(0);
  }

  Term_canonique();

  return 0;
}
