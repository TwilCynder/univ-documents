#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/wait.h>

int tube[2];
int nbSec;
int nbFois;

void error(const char* msg, int code){
  perror(msg);
  exit(code);
}

void fils(){
  time_t now;
  close(tube[1]);

  int i;
  while (read(tube[0], &i, sizeof(i)) > 0){
    time(&now);
    printf("Fils - Message de mon pere : Message numero %d reçu a %s", i, ctime(&now));
  }

  close(tube[0]);
  printf("Fils : Je me termine a %s", ctime(&now));
  exit(0);
}

int i = 0;
void onSignal(){
  write(tube[1], &i, sizeof(i));
  i++;
  if (i >= nbFois){
    close(tube[1]);
  }
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

  wait(NULL);
  time_t now = time(NULL);
  printf("Pere : Je me termine en dernier a %s\n", ctime(&now));
  close(tube[1]);
}

int main(int argc, char const *argv[])
{
  if (pipe(tube) == -1) error("Pipe", 1);

  if (argc < 3) {
    fprintf(stderr, "Usage : %s nbFois nbSec\n", argv[0]);
    exit(1);
  }

  nbFois = atoi(argv[1]);
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
