#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

void error(const char* msg, int code){
  perror(msg);
  exit(code);
}

void onSignal(int s){
  printf(">> Ctrl-C/SIGINT reçu par le processus de n° %d\n", getpid());
}

int main(int argc, char const *argv[])
{
  if (argc < 3) {
    fprintf(stderr, "Usage : %s nbFois nbSec\n", argv[0]);
    exit(1);
  }

  struct sigaction my_sa;
  sigemptyset(&my_sa.sa_mask);
  my_sa.sa_handler = &onSignal;
  my_sa.sa_flags = 0;
  sigaction(SIGINT, &my_sa, NULL);

  execl("./boucler", "boucler", argv[1], argv[2], NULL);

  error("Echec exec", 2);

  return 0;
}
