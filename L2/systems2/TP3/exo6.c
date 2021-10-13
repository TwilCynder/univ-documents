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

void clear(char* s, int players){
  printf("\033[H\033[J");
  fflush(stdout);
  for (int i = 0; i < players; i++){
    printf("%s\n", s);
  }
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
    }
    pause_miscroseconde();
  } while (c != 'f' && pos < distance + 1); 
}

void arg_error(){
  printf("Usage : exo6 nb_joueurs distance\n");
  Term_canonique();
  exit(1);
}

int main(int argc, char const *argv[])
{
  Term_non_canonique();
  printf("\033[?25l");

  pid_t pid;
  char* playerChars = "amyc";
  int nplayers;
  int distance;
  char* bg_string;
  int result[2];
  int circonstance;
  
  if (argc < 3){
    arg_error();
  }

  nplayers = atoi(argv[1]);
  distance = atoi(argv[2]);
  if (nplayers < 1 || distance < 1){
    arg_error();
  }

  if (nplayers > 4) nplayers = 4;

  bg_string = (char*)malloc(sizeof(char) * distance + 3);
  for (int i = 0; i < distance; i++){
    bg_string[i] = ' ';
  }
  bg_string[distance] = '|';
  bg_string[distance + 1] = 0;

  clear(bg_string, nplayers);

  for (int i = 0; i < nplayers; i++){
    pid = fork();
    if (!pid){
      joueur(playerChars[i], i + 1, distance);
      exit(i);
    }
  }

  for (int i = 0; i < nplayers; i++){
    wait(&circonstance);
    result[i] = WEXITSTATUS(circonstance);
  }
 
  printf("\n");
  for (int i = 0; i < nplayers; i++){
    printf("%d : Joueur %d\n", i + 1, result[i] + 1);
  }

  Term_canonique();

  return 0;
}
