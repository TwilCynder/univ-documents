#include "controle.h"

uint8_t generer_controle(paquet_t* paquet){
    uint8_t controle = 0;
    controle = paquet->type ^ paquet->num_seq ^ paquet->lg_info;

    for (int i = 0; i < paquet->lg_info; i++){
        controle ^= paquet->info[i];
    }

    return controle;
}

int verifier_controle(paquet_t* paquet){
    return generer_controle(paquet) == paquet->somme_ctrl;
}