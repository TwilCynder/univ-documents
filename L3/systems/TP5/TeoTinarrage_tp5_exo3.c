#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/wait.h>

#define LG_MAX 80

int tube[2];
int nbSec;
int nbFois;

void error(const char* msg, int code){
  perror(msg);
  exit(code);
}

void fils(){
  close(tube[1]);

  char leMsg[LG_MAX];
  time_t now;

  int cptEnvois;
  int res;
  while ((res = read(tube[0], leMsg, LG_MAX)) > 0){
    printf("\tFils - Recu de mon pere : %s", leMsg);
  }

  if (res == -1) error("Lecture tube fils", 10);

  close(tube[0]);
  time(&now);
  printf("Fils : Je me termine a %s", ctime(&now));
  exit(0);
}

int cptEnvois = 0;
void onSignal(){
  time_t now;
  char monMsg[LG_MAX];

  sprintf(monMsg, "%s %d %s %s", "Message numero", cptEnvois, " envoye a ", 
		  (time(&now), ctime(&now)));

  if (write(tube[1], monMsg, LG_MAX) ==-1){
    error("Ecriture tube pere", 11);
  }
  cptEnvois++;

  if (cptEnvois >= nbFois){
    close(tube[1]);
  } else {
    alarm(nbSec);
  }
}

void monTraitement (void) {
  while (cptEnvois < nbFois);	
}

void pere(int nbFois){
  close(tube[0]);

  struct sigaction my_sa;
  sigemptyset(&my_sa.sa_mask);
  my_sa.sa_handler = &onSignal;
  my_sa.sa_flags = 0;
  if (sigaction(SIGALRM, &my_sa, NULL) < 0) error("Sigaction", 10);

  alarm(nbSec);

  monTraitement();
  wait(NULL);
  time_t now = time(NULL);
  printf("Pere : Je me termine en dernier a %s\n", ctime(&now));
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
