#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define NB_PINGS 5

int ping_pipe[2];
int pong_pipe[2];

void erreur(const char* msg, int code){ 
  perror(msg);
  exit(code);
}

void ping(){
  if (close(ping_pipe[0]) == -1) erreur("Close ping pipe en lecture", 1);
  if (close(pong_pipe[1]) == -1) erreur("Close pong pipe en ecriture", 2);
  
  int ret;
  char c = 1;
  int ping_count = 0;
  printf("Ping\n");
  if (write(ping_pipe[1], &c, 1) == -1) erreur("Ping", 3);

  while (ping_count < NB_PINGS){
    ret = read(pong_pipe[0], &c, 1);
    ping_count++;
    printf("Ping\n");
    if (write(ping_pipe[1], &c, 1) == -1) erreur("Ping", 3);
  }

  if (ret == -1){
    erreur("Lecture pong", 10);
  }

  close(pong_pipe[0]);
  close(ping_pipe[1]);
  
}


void pong(){
  if (close(pong_pipe[0]) == -1) erreur("Close ping pipe en lecture", 4);
  if (close(ping_pipe[1]) == -1) erreur("Close pong pipe en ecriture", 5);
  
  int ret;
  char c = 1;
  while (ret = read(ping_pipe[0], &c, 1)){  
    printf("Pong\n");
    if (write(pong_pipe[1], &c, 1) == -1) erreur("Pong", 6);
  }

  if (ret == -1){
    erreur("Lecture ping", 11);
  }

  close(ping_pipe[0]);
  close(pong_pipe[1]);
  
}

int main(int argc, char const *argv[])
{
  if (pipe(ping_pipe) == -1) erreur ("Creation pipe ping", 21);
  if (pipe(pong_pipe) == -1) erreur ("Creation pipe pong", 22);

  switch (fork()){
    case -1:
      perror("Impossible de fork");
      exit (1);
    case 0:
      ping();
      break;
    default:
      pong();
  }

  return 0;
}