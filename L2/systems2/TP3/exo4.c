#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include "term_mode.h"
#include "stdlib.h"

void touche(){
  char c;
  pid_t pid = getpid();
  ssize_t rd = 0;
  do{
    rd = read(STDIN_FILENO, &c, 1);
    if (rd != -1){
      printf("[%d] %c\n", pid, c);
    }
  } while (c != 'f'); 
  return;
}

int main(int argc, char const *argv[])
{
  Term_non_canonique();

  pid_t pid;

  for (int i = 0; i < 2; i++){
    pid = fork();
    if (!pid){
      touche();
      exit(0);
    }
  }

  for (int i = 0; i < 2; i++){
    wait(0);
  }

  Term_canonique();

  return 0;
}
