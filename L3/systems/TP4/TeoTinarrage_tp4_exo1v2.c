#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

#define ECHANGES_MAX 100

int ping_pipe[2];
int pong_pipe[2];    

void error(const char* msg, int code){
    perror(msg);
    exit(code);
}

void ping_process(int n){
    if (close(ping_pipe[0]) == -1) error("Fermeture ping pipe sortie", 1);
    if (close(pong_pipe[1]) == -1) error("Fermeture pong pipe entrée", 2);


    int i = 0;
    int count = 0;

    int result;
    do {
        i++;
        printf("Processus de pid %d : Ping [%d]\n", getpid(), i);
        if (write(ping_pipe[1], &i, 1) == -1) error("Ecriture ping", 4);
        count++;

        if (count >= n){
            printf("Fin Ping\n");
            exit(0);
        }
    } while ((result = read(pong_pipe[0], &i, 1)) > 0);

    if (result == -1) error("Lecture pong", 3);
    //Si on atteint cette ligne c'est que pong s'est terminé (read a renvoyé 0), avant ping, ce qui n'est pas supposé arriver
    fprintf(stderr, "Erreur : ping s'est terminé avant ping");

    if (close(pong_pipe[0]) == -1) error("Fermeture pong pipe sortie", 8);
    if (close(ping_pipe[1]) == -1) error("Fermeture ping pipe entrée", 9);
}

void pong_process(){
    if (close(pong_pipe[0]) == -1) error("Fermeture pong pipe sortie", 4);
    if (close(ping_pipe[1]) == -1) error("Fermeture ping pipe entrée", 5);


    int i = 0;

    int result;
    while ((result = read(ping_pipe[0], &i, 1)) > 0){
        i++;
        if (write(pong_pipe[1], &i, 1) == -1) error("Ecriture pong", 7);
        printf("Processus de pid %d : Pong [%d]\n", getpid(), i);
    }
    if (result == -1) error("Ecriture pong", 6);

    if (close(ping_pipe[0]) == -1) error("Fermeture ping pipe sortie", 10);
    if (close(pong_pipe[1]) == -1) error("Fermeture pong pipe entrée", 11);
    printf("Fin Pong\n");
    exit(0);
}

int main(int argc, char const *argv[])
{
    pipe(ping_pipe);
    pipe(pong_pipe);

    if (argc < 2) fprintf(stderr, "Usage : %s nb_echanges\n", argv[0]);
    int nb_echanges = atoi(argv[1]);
    if (nb_echanges < 1){
        nb_echanges = 1;
    }
    if (nb_echanges > ECHANGES_MAX){
        nb_echanges = ECHANGES_MAX;
    }

    switch (fork()){
        case -1:
            error("Fork", 20);
        case 0:
            pong_process();
    }
    ping_process(nb_echanges);

    return 0;
}
