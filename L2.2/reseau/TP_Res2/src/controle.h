#include "couche_transport.h"

#ifndef __CONTROLE_H__
#define __CONTROLE_H__

uint8_t generer_controle(paquet_t* paquet);
int verifier_controle(paquet_t* paquet);

#endif
