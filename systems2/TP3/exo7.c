#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
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

void pause_miliseconde(){
  struct timespec micro_pause;
  micro_pause.tv_sec = 0;       /* secondes */
  micro_pause.tv_nsec = 1000000;   /* nanosecondes */
  nanosleep( &micro_pause, NULL);
}

void clear(char* s, int players){
  printf("\033[H\033[J");
  fflush(stdout);
  for (int i = 0; i < players; i++){
    printf("%s\n", s);
  }
}

void printf_pos(char c, int x, int y){
  printf ("\033[%d;%dH%c", y, x, c);
  fflush (stdout);
}

void joueur(char my_char, int ligne, char distance, int monitor_file){
  char c;
  char pos = 1;

  ssize_t rd = 0;

  do{
    rd = read(STDIN_FILENO, &c, 1);
    if (rd != -1 && c == my_char){
      pos += 1;
      lseek(monitor_file, sizeof(char) * ligne, SEEK_SET);
      write(monitor_file, &pos, sizeof(char));
    }
    pause_miscroseconde();
  } while (c != 'f' && pos < distance + 1);
}

void monitor(int monitor_file, int nplayers, char* playerChars){
  char playerPos[nplayers];
  char prevPlayerPos[nplayers];

  for (int i = 0; i < nplayers; i++){
    printf_pos(playerChars[i], 1, i + 1);
  }

  for (int i = 0; i < nplayers; i++){
    prevPlayerPos[i] = 0;
  }

  while (1){
    lseek(monitor_file, 0, SEEK_SET);
    read(monitor_file, playerPos, sizeof(char) * nplayers);
    for (int i = 0; i < nplayers; i++){
      if (playerPos[i] != prevPlayerPos[i]){
        printf_pos(' ', prevPlayerPos[i], i + 1);
        prevPlayerPos[i] = playerPos[i];
        printf_pos(playerChars[i], playerPos[i], i + 1);
      }
    }
    pause_miliseconde();
  }
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

  int monitor_file = open("monitor",O_CREAT|O_RDWR|O_TRUNC, S_IRWXU);

  clear(bg_string, nplayers);

  char* buf = malloc(sizeof(char) * nplayers);
  for (int i = 0; i < nplayers; i++) buf[i] = 1;
  write(monitor_file, buf, sizeof(char) * nplayers);
  free(buf);

  for (int i = 0; i < nplayers; i++){
    pid = fork();
    if (!pid){
      joueur(playerChars[i], i, distance, monitor_file);
      exit(i);
    }
  }

  pid = fork();
  if (!pid){
    monitor(monitor_file, nplayers, playerChars);
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
