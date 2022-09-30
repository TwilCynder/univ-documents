#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <sys/wait.h>

int tube[2];
int nbSec;

void error(const char* msg, int code){
  perror(msg);
  exit(code);
}

void fils(){
  close(tube[1]);

  int i;
  while (read(tube[0], &i, sizeof(i)) > 0){
    printf("Info reçue\n");
  }

  close(tube[0]);
  exit(0);
}

void onSignal(){
  int i = 1;
  write(tube[1], &i, sizeof(i));
  alarm(nbSec);
}

void pere(int nbFois){
  close(tube[0]);

  struct sigaction my_sa;
  sigemptyset(&my_sa.sa_mask);
  my_sa.sa_handler = &onSignal;
  my_sa.sa_flags = 0;
  if (sigaction(SIGALRM, &my_sa, NULL) < 0) error("Sigaction", 10);

  onSignal();

  while (1){}

  close(tube[1]);
}

int main(int argc, char const *argv[])
{
  if (pipe(tube) == -1) error("Pipe", 1);

  if (argc < 3) {
    fprintf(stderr, "Usage : %s nbFois nbSec\n", argv[0]);
    exit(1);
  }

  int nbFois = atoi(argv[1]);
  nbSec = atoi(argv[2]);

  switch (fork()){
    case -1:
      error("Fork", 1);
    case 0:
      fils();
  }
  pere(nbFois);

  return 0;
}
