#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h> // inet_addr, htons
#include <time.h>

#include "router.h"
#include "console.h"
#include "packet.h"
#include "utils.h"

#define BUF_SIZE 1024
#define BROADCAST_PERIOD 3
#define FWD_DELAY_IN_MS 10
#define INFINITY 8

/* ====================================== */
/*  Shared data between threads and files */
int MY_ID;
/* ====================================== */

/* ========================================= */
/* ========== FORWARD DATA PACKET ========== */
/* ========================================= */

/* ========================================================================= */
/* ************************ A FAIRE PAR LES ETUDIANTS ********************** */
/* ========================================================================= */
int forward_packet(packet_data_t *packet, int psize, routing_table_t *rt) {

    
    for (int i = 0; i < rt->size; i++){ //Itération sur la table de routage
        if (rt->tab[i].dest == packet->dst_id){     //Si la destination du packet correspond à une entrée de la table
            send_packet(packet, psize, rt->tab[i].nexthop.ipv4, rt->tab[i].nexthop.port);   //On envoie ledit packet au voisin indiqué par l'entée de la table
            return 1;
        }
    }

    return 0;
}

/* ==================================================================== */
/* ========================== HELLO THREAD ============================ */
/* ==================================================================== */

/* ========================================================================= */
/* ************************ A FAIRE PAR LES ETUDIANTS ********************** */
/* ========================================================================= */

// Build distance vector packet
void build_dv_packet(packet_ctrl_t *p, routing_table_t *rt) {
    p->dv_size = rt->size;  //On envoie toute la table (taille vecteur == taile table)
    p->type = CTRL;         //Il s'agira d'un paquet de type contrôle
    p->src_id = MY_ID;      //initialisation du cham source du vecteur (qui est évidemment notre id)
    for (int i = 0; i < rt->size; i++){         //On itère sur toutes les entrées de la table de routage
        p->dv[i].dest = rt->tab[i].dest;        //Initialisation des champs du vecteur distance avec les infos de la table
        p->dv[i].metric = rt->tab[i].metric;
    }
}

// DV to prevent (partially) count to infinity problem
// Build a DV that contains the routes that have not been learned via
// this neighbour
void build_dv_specific(packet_ctrl_t *p, routing_table_t *rt, node_id_t neigh) {
                    //Cette fois la taille du vecteur sera différente de celle de la table et déterminée pendant la boucle donc on ne l'initialise pas maintenant.
    p->type = CTRL; //Il s'agira d'un paquet de type contrôle
    p->src_id = MY_ID;  //initialisation du cham source du vecteur (qui est évidemment notre id)
    int j = 0;         //Puisqu'on ne va pas copier certains entrées, on va itérer sur la table et le vecteur avec deux index séparés
    for (int i = 0; i < rt->size; i++){
        if (neigh != rt->tab[i].nexthop.id){    //Si la route correspondant à l'entrée courante ne part pas par le voisin auquel on envoie le vecteur :
            p->dv[j].dest = rt->tab[i].dest;    //On initialise les valeus
            p->dv[j].metric = rt->tab[i].metric;//Et on incrémente l'index utilisé pour le vecteur
            j++;
        }
    }
    p->dv_size = j; //La taille du vecteur est la valeur de l'index après éxécution de la boucle
}

//Copie une entrée
void copy_entry(routing_table_entry_t* source, routing_table_entry_t* target){
    target->dest = source->dest;
    target->nexthop = source->nexthop;
    target->metric = source->metric;
    target->time = source->time;
}

// Remove old RT entries
void remove_obsolete_entries(routing_table_t *rt) {

    /*for (int i =0; i < rt->size; i++){
        routing_table_entry_t* entry = rt->tab + i;
        if (entry->dest != MY_ID && difftime(time(NULL), entry->time) > BROADCAST_PERIOD){
            rt->size--;
            for (int j = i; j < rt->size; j++){
                copy_entry(&rt->tab[j + 1], &rt->tab[j]);
            }
        }
    }*/

    //L'algorithme ci-dessous peut paraître fastidieux et inutilement compliqué, comparé à l'algo en commentaire ci-dessus qui aurait été la solution évidente,
    //cependant il permet d'éviter une complexité en O(n²). Autrement dit, décommenter le premier algo et commenter le second fonctionnerait tout aussi bien, mais
    //serait plus lent.
    //Pour supprimer un élément d'un tableau, il est nécessaire de décaler les éléments suivants : au lieu de faire ce décalage à chaque suppression (donc boucles imbriquées)
    //on marque les éléments à supprimer (en mettant leur id de destination à 0), puis on travers à nouveau le tableau pour faire le décalage en une seule fois.
    
    for (int i = 0; i < rt->size; i++){             //On itère sur toutes les entrée de la table de routage
        routing_table_entry_t* entry = rt->tab + i; //On garde un pointeur vers l'entrée courante pour la clarté (éviter les rt->tab[i] à répétition)
        if (entry->dest != MY_ID && difftime(time(NULL), entry->time) > BROADCAST_PERIOD){  //Si l'entrée est trop ancienne (et n'est pas la route vers le reouteur lui même)
            entry->dest = 0;    //alors on la marque pour que la seconde boucle la supprime
        }
    }
    //décalage des cases du tableau
    int decalage = 0;       //Nombre d'éléments supprimés, c'est à dire de combien de case il faut décaler les prochains éléments
    for (int i = 0; i < rt->size; i++){ //On itère sur toutes les entrées de la table de routage
        routing_table_entry_t* entry = rt->tab + i;     //On garde un pointeur vers l'entrée courante pour la clarté (éviter les (&)rt->tab[i] à répétition)
            while ( (entry + decalage)->dest == 0){     //Tant qu'on continue à trouver des éléments à supprimer :
                decalage++;                             // on augment le décalage
                rt->size--;                             // et on réduit la taille de la table
            }
            if (decalage > 0)                           //S'il y a un décalage (si il y a un élément supprimé)
                copy_entry(entry + decalage, entry);    //On décale
    }
    
}

// Hello thread to broadcast state to neighbors
void *hello(void *args) {

    /* Cast the pointer to the right type */
    struct th_args *pargs = (struct th_args *) args;
    /* Get routing and neighbors table */
    routing_table_t *rt = pargs->rt;
    neighbors_table_t *nt = pargs->nt;
    packet_ctrl_t packet;

    /* >>>>>>>>>> A COMPLETER PAR LES ETUDIANTS - DEB <<<<<<<<<< */

    while (1) {

        for (int i = 0; i < nt->size; i++){     //On itère sur tous les voisins
            build_dv_specific(&packet, rt, nt->tab[i].id);  //On construit le vecteur distance "personnalisé" pour ce voisin
            send_packet(&packet, sizeof(packet_ctrl_t), nt->tab[i].ipv4, nt->tab[i].port);  //Et on l'envoie
            log_dv(&packet, nt->tab[i].id, 1);  //Log
        }

        /* >>>>>>>>>> A COMPLETER PAR LES ETUDIANTS - FIN <<<<<<<<<< */
        sleep(BROADCAST_PERIOD);
        remove_obsolete_entries(rt);
    }
}

/* ==================================================================== */
/* ======================== UDP SERVER THREAD ========================= */
/* ==================================================================== */

/* ========================================================================= */
/* ************************ A FAIRE PAR LES ETUDIANTS ********************** */
/* ========================================================================= */

routing_table_entry_t* find_rt_entry(routing_table_t* rt, dv_entry_t* dve){
    //Cherche une entrée de la table avec la destination donnée et renvoie son adresse, ou NULL si introuvable
    for (int i = 0; i < rt->size; i++){
        if (dve->dest == rt->tab[i].dest) return rt->tab + i;
    }
    return NULL;
}

// Update routing table from received distance vector
int update_rt(routing_table_t *rt, overlay_addr_t *src, dv_entry_t dv[], int dv_size) {
    for (int i = 0; i < dv_size; i++){  //On itère sur toutes les entrées du vecteur reçu
        dv_entry_t* distance_vector_entry = dv + i;     //On garde un pointeur vers l'entrée courante pour la clarté
        routing_table_entry_t* routing_table_entry = find_rt_entry(rt, distance_vector_entry);  //On récupère une éventuelle entrée de la table ayant la même destination
        if (routing_table_entry){   //On teste si l'adresse est non-nulle, auquel cas il y avait bien une entrée avec la bonne destination
            if ( (routing_table_entry->metric > (distance_vector_entry->metric + 1)) || routing_table_entry->nexthop.id == src->id){    //Si la distance associée à l'entrée de la table est supérieure à celle de la longueur de la route reçue (+1)
                routing_table_entry->metric = distance_vector_entry->metric+1;  //On met à jour la route qu'on avait
                routing_table_entry->nexthop = *src;
                routing_table_entry->time    = time(NULL);
            }   
        } else if (distance_vector_entry->metric + 1 < INFINITY){ //Sinon, on teste si la route n'est pas trop longue (afin d'éviter les count to infinity (4.4.2.b))
            add_route(rt, distance_vector_entry->dest, src, distance_vector_entry->metric + 1); //auquel cas elle est ajoutée à la table
        }
    }
    
    return 1;
}

overlay_addr_t* find_nt_entry(neighbors_table_t *nt, node_id_t id){
    //Même chose que find_rt_entry
    for (int i = 0; i < nt->size; i++){
        if (nt->tab[i].id == id) return nt->tab + i;
    }
    return NULL;
}

// Server thread waiting for input packets
void *process_input_packets(void *args) {

    int sock;
    struct sockaddr_in my_adr, neigh_adr;
    socklen_t adr_len = sizeof(struct sockaddr_in);
    char buffer_in[BUF_SIZE];
    /* Cast the pointer to the right type */
    struct th_args *pargs = (struct th_args *) args;
    /* Get routing and neighbors table */
    routing_table_t *rt = pargs->rt;
    neighbors_table_t *nt = pargs->nt;

    int port = PORT(MY_ID);
    int size = 0;

    /* Create (server) socket */
    /* ---------------------- */
    if ( (sock = socket(AF_INET, SOCK_DGRAM, 0)) < 0 ) {
        perror("socket error");
        exit(EXIT_FAILURE);
    }

    /* Bind address and port */
    /*-----------------------*/
    /* Init server adr  */
    memset(&my_adr, 0, sizeof(my_adr));
    my_adr.sin_family = AF_INET;
    my_adr.sin_port = htons(port);
    my_adr.sin_addr.s_addr = htonl(INADDR_ANY);

    if (bind(sock, (struct sockaddr *) &my_adr, sizeof(my_adr)) < 0) {
        perror("bind error");
        close(sock);
        exit(EXIT_FAILURE);
    }

    logger("SERVER TH","waiting for incoming messages");
    while (1) {

        if ( (size = recvfrom(sock, buffer_in, BUF_SIZE, 0, (struct sockaddr *) &neigh_adr, &adr_len)) < 0 ) {
            perror("recvfrom error");
            exit(EXIT_FAILURE);
        }

        switch (buffer_in[0]) {

            case DATA:
                logger("SERVER TH", "DATA packet received");
                packet_data_t *pdata = (packet_data_t *) buffer_in;
                if (pdata->dst_id == MY_ID) {
                    switch (pdata->subtype) {
                        case ECHO_REQUEST:
                            send_ping_reply(pdata, rt);
                            break;
                        case ECHO_REPLY:
                            print_ping_reply(pdata);
                            break;
                        case TR_REQUEST:
                            send_traceroute_reply(pdata, rt);
                            break;
                        case TR_TIME_EXCEEDED:
                            print_traceroute_path(pdata);
                            break;
                        case TR_ARRIVED:
                            print_traceroute_last(pdata);
                            break;
                        default:
                            logger("SERVER TH","unidentified data packet received");
                    }
                }
                else {
                    /* I am NOT the recipient ==> forward packet */
                    /* >>>>>>>>>> A COMPLETER PAR LES ETUDIANTS - DEB <<<<<<<<<< */

                    pdata->ttl--;   //Le time to live du packet est décrémenté (il doit l'être à chaque routeur traversé)
                    if (pdata->ttl <= 0){   //Si la durée de vie est arrivée à 0 (le packet a traversé trop de routeurs)
                        send_time_exceeded(pdata, rt);  //On envoie un packet d'erreur
                    } else {
                        forward_packet(pdata, size, rt);    //Sinon, on transmet simplement le packet au bon voisin
                    }


                    /* >>>>>>>>>> A COMPLETER PAR LES ETUDIANTS - FIN <<<<<<<<<< */
                }
                break;

            case CTRL:
                logger("SERVER TH", "CTRL packet received");
                packet_ctrl_t *pctrl = (packet_ctrl_t *) buffer_in;
                log_dv(pctrl, pctrl->src_id, 0);
                /* >>>>>>>>>> A COMPLETER PAR LES ETUDIANTS - DEB <<<<<<<<<< */

                //On a reçu un packet de contrôle, a priori contenant un vecteur distance
                update_rt(rt, find_nt_entry(nt, pctrl->src_id), pctrl->dv, pctrl->dv_size); //On met à jour la table de routage (en passant à la fonction l'objet correspondant au voisin qui a envoyé le packet )

                /* >>>>>>>>>> A COMPLETER PAR LES ETUDIANTS - FIN <<<<<<<<<< */
                break;

            default:
                // drop
                logger("SERVER TH", "unidentified packet received.");
                break;
        }
    }
}

/* ==================================================================== */
/* ========================== MAIN PROGRAM ============================ */
/* ==================================================================== */

int main(int argc, char **argv) {

    routing_table_t myrt;
    neighbors_table_t mynt;
    pthread_t th1_id, th2_id;
    struct th_args args;
    int test_forwarding = 0;

    // printf("sizeof(routing table) = %lu bytes\n", sizeof(myrt));
    // printf("sizeof(neighbors table) = %lu bytes\n", sizeof(myrt));

    if (argc!=3) {
        printf("Usage: %s <id> <net_topo_conf>\n", argv[0]);
        printf("or\n");
        printf("Usage: %s <id> --test-forwarding\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    // ==== Init ROUTER ====
    myrt.size = 0;
    mynt.size = 0;
    int rid = atoi(argv[1]);
    MY_ID = rid; // shared ID between threads
    printf("**************\n");
    printf("* RTR ID : %d *\n", MY_ID);
    printf("**************\n");

    if (strcmp(argv[2], "--test-forwarding") == 0) {
        init_full_routing_table(&myrt);
        test_forwarding = 1;
    }
    else {
        read_neighbors(argv[2], rid, &mynt);
        init_routing_table(&myrt);
    }
    // ====================
    // print_neighbors(&mynt);
    // print_rt(&myrt);
    args.rt = &myrt;
    args.nt = &mynt;

    /* Create a new thread th1 (process input packets) */
    pthread_create(&th1_id, NULL, &process_input_packets, &args);
    logger("MAIN TH","process input packets thread created with ID %u", (int) th1_id);

    if ( !test_forwarding ) {
        /* Create a new thread th2 (hello broadcast) */
        pthread_create(&th2_id, NULL, &hello, &args);
        logger("MAIN TH","hello thread created with ID %u", (int) th2_id);
    }

    int quit=0, len;
    char *command = NULL;
    size_t size;
    while (!quit) {
        print_prompt();
        len = getline(&command, &size, stdin);
        command[len-1] = '\0'; // remove newline
        quit = !strcmp("quit", command) || !strcmp("exit", command);
        if (!quit)
            process_command(command, &myrt, &mynt);
        free(command);
        command = NULL;
    }

    /* Make sure threads have finished */
    // pthread_join(th1_id, NULL);
    // pthread_join(th2_id, NULL);

    return EXIT_SUCCESS;
}
