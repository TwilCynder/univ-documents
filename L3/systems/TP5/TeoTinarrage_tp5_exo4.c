#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/wait.h>

#define MAX_OUVRIERS 20

typedef struct {
    pid_t client;
    int info[20]; //impossible d'utiliser un tableau dynamique ici
} Commande;


int* tubes;
int tube_ecriture_commande;
int nbClients;
int nbOuvriers;

void error(const char* msg, int code){
    perror(msg);
    exit(code);
}

void ouvrier(int num){
    Commande commande;
    int result;

    int num_pipe_ecriture = num * 2 + 3; //on reste dans le tableau car cette fonction n'est pas appelée pour le dernier ouvrier
    int num_pipe_lecture = num * 2;

    int pipe_lecture = tubes[num_pipe_lecture];
    int pipe_ecriture = tubes[num_pipe_ecriture];

    for (int i = 0; i < nbOuvriers * 2; i++){
        if (i != num_pipe_ecriture && i != num_pipe_lecture) {
            if (close(tubes[i])) error("Fermeture pipes (orientation)", 2);
        }
    }

    while ((result = read(pipe_lecture, &commande, sizeof(Commande))) > 0){
        printf("Ouvrier %d : Reception de la commande du client %d\n", num,  commande.client);
        printf("    <<%d ", commande.client);
        for (int i = 0; i < nbOuvriers; i++){
            printf("Info[%d] = %d ", i, commande.info[i]);
        }
        printf(">>\n");

        commande.info[num] = num;
        if (write(pipe_ecriture, &commande, sizeof(Commande)) == -1) error("Ecriture tube", 3);
    }
    
    if (result == -1) error("Erreur read", 11);

    if (close(pipe_ecriture) == -1) error("Fermeture pipe entrée", 8);
    if (close(pipe_lecture) == -1) error("Fermeture pipe sortie", 9);
    exit(0);
}

void dernierOuvrier(){
    int num = nbOuvriers - 1;
    Commande commande;
    int result;

    int num_pipe_lecture = (num) * 2;

    int pipe_lecture = tubes[num_pipe_lecture];

    for (int i = 0; i < nbOuvriers * 2; i++){
        if (i != num_pipe_lecture) {
            if (close(tubes[i])) error("Fermeture pipes (orientation)", 2);
        }
    }

    while ((result = read(pipe_lecture, &commande, sizeof(Commande))) > 0){
        printf("Ouvrier %d : Reception de la commande du client %d\n", num, commande.client);
        printf("    <<%d ", commande.client);
        for (int i = 0; i < nbOuvriers; i++){
            printf("Info[%d] = %d ", i, commande.info[i]);
        }
        printf(">>\n");
        
        commande.info[num] = num;
        printf("Ouvrier %d : j'informe le client que sa commande est prête\n", num);
        kill(commande.client, SIGUSR1);
    }
    
    if (close(pipe_lecture) == -1) error("Fermeture pipe sortie", 10);
    exit(0);
}

int clientNum;
void onSignal(int s){
    printf("Client %d (%d) : Ma commande est arrivée ! \n", clientNum, getpid());
}

void envoyerCommande(){
    Commande c;
    c.client = getpid();
    for (int i = 0; i < nbOuvriers; i++){
        c.info[i] = c.client;
    }
    printf("Client %d (%d) : Commande envoyée à l’ouvrier 0... je vais l’attendre\n", clientNum, getpid());
    write(tubes[1], &c, sizeof(Commande));
}

void client(int num){
    srand(time(NULL) * num);
    close(tubes[0]); //on ferme tous les tubes sauf l'entrée du premier
    for (int i = 2; i < nbClients; i++){
        close(tubes[i]);
    }

    struct sigaction my_sa;
    sigemptyset(&my_sa.sa_mask);
    my_sa.sa_handler = &onSignal;
    my_sa.sa_flags = 0;
    if (sigaction(SIGUSR1, &my_sa, NULL) == -1) error("Sigaction", 20);

    clientNum = num;

    sleep(rand() % 5);
    envoyerCommande();
    pause();
    if (close(tubes[1]) == -1) error("Fermeture pipe ecriture client", 6);
    exit(0);
}

int main(int argc, char const *argv[])
{
    if (argc < 3) {
        fprintf(stderr, "Usage : %s nbOuvriers nbClients\n", argv[0]);
        exit(1);
    }

    nbOuvriers = atoi(argv[1]);
    nbClients = atoi(argv[2]);

    tubes = malloc(sizeof(int) * nbOuvriers * 2);
    for (int i = 0; i < nbOuvriers; i++){
        if (pipe(tubes + (i * 2)) == -1) error("Création pipe", 2);
    }
    int tube_ecriture_commande = tubes[1];

    for (int i = 0; i < nbOuvriers; i ++){
        switch (fork()){
            case -1:
                error("Impossible de fork", 5);
            case 0:
                if (i == nbOuvriers -1) dernierOuvrier();
                ouvrier(i);
        }
    }


    for (int i = 0; i < nbClients; i++){
        switch (fork()){
            case -1:
                error("Impossible de fork", 5);
            case 0:
                client(i);
        }
    }

for (int i = 0; i < nbOuvriers * 2; i++){
    close(tubes[i]);
  }

    for (int i = 0; i < nbClients + nbOuvriers; i++){
        wait(NULL);
    }

    printf("Fin de l'application\n");

    return 0;
}
