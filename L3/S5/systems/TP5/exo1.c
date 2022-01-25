#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include "afficher.h"
#include <sys/wait.h>

void error(const char* msg, int code){
  perror(msg);
  exit(code);
}

void onSignal(int s){
  printf(">> Ctrl-C/SIGINT reçu par le processus de n° %d\n", getpid());
}

void fils(){
  while (1){
    afficher(2);
  }
}

int main(int argc, char const *argv[])
{
  struct sigaction my_sa;
  sigemptyset(&my_sa.sa_mask);
  my_sa.sa_handler = &onSignal;
  my_sa.sa_flags = 0;
  sigaction(SIGINT, &my_sa, NULL);

  switch (fork()){
    case -1:
      error("Fork", 1);
    case 0:
      fils();
  }

  while (1){
    afficher(2);
  }

  return 0;
}
