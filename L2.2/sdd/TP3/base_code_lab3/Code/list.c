/*-----------------------------------------------------------------*/
/*
 Licence Informatique - Structures de données
 Mathias Paulin (Mathias.Paulin@irit.fr)
 
 Implantation du TAD List vu en cours.
 */
/*-----------------------------------------------------------------*/
#include <stdio.h>
#
#include <stdlib.h>
#include <assert.h>

#include "list.h"

typedef struct s_LinkedElement {
	int value;
	struct s_LinkedElement *previous;
	struct s_LinkedElement *next;
} LinkedElement;

/* Use of a sentinel for implementing the list :
 The sentinel is a LinkedElement * whose next pointer refer always to the head of the list and previous pointer to the tail of the list
 */
struct s_List {
	LinkedElement *sentinel;
	int size;
};


/*-----------------------------------------------------------------*/

List *list_create() {
	List *l = malloc(sizeof(List));
	l->sentinel = malloc(sizeof(LinkedElement));

	if (!l || !l->sentinel) return NULL;

	l->sentinel->next = l->sentinel;
	l->sentinel->previous = l->sentinel;
	l->size = 0;
	return l;
}

/*-----------------------------------------------------------------*/

List *list_push_back(List *l, int v) {
	LinkedElement* elem = malloc(sizeof(LinkedElement));

	if (!elem) return NULL;

	elem->value = v;
	elem->next = l->sentinel;
	elem->previous = l->sentinel->previous;
	l->sentinel->previous->next = elem;
	l->sentinel->previous = elem;
	l->size++;
	return l;
}

/*-----------------------------------------------------------------*/

void list_delete(ptrList *l) {
	List* list = *l;
	LinkedElement* elem = list->sentinel->next;
	LinkedElement* next;
	while(elem != list->sentinel){
		next = elem->next;
		free(elem);
		elem = next;
	}
	free(list->sentinel);
	free(list);
	*l = 0;
}

/*-----------------------------------------------------------------*/

List *list_push_front(List *l, int v) {
	LinkedElement* elem = malloc(sizeof(LinkedElement));
	elem->value = v;
	elem->previous = l->sentinel;
	elem->next = l->sentinel->next;
	l->sentinel->next->previous = elem;
	l->sentinel->next = elem;
	l->size++;
	return l;
}

/*-----------------------------------------------------------------*/

int list_front(List *l) {
	if (list_is_empty(l)){
		fprintf(stderr, "Erreur : tentative d'accès à une liste vide\n");
		return 0;
	}
	return l->sentinel->next->value;
}

/*-----------------------------------------------------------------*/

int list_back(List *l) {
	if (list_is_empty(l)){
		fprintf(stderr, "Erreur : tentative d'accès à une liste vide\n");
		return 0;
	}
	return l->sentinel->previous->value;
}

/*-----------------------------------------------------------------*/

List *list_pop_front(List *l) {
	if (list_is_empty(l)){
		fprintf(stderr, "Erreur : tentative de supression d'élément dans une list vide\n");
		return NULL;
	}
	LinkedElement* elem = l->sentinel->next;
	l->sentinel->next = elem->next;
	elem->next->previous = l->sentinel;
	free(elem);
	l->size--;
	return l;
}

/*-----------------------------------------------------------------*/

List *list_pop_back(List *l){
	if (list_is_empty(l)){
		fprintf(stderr, "Erreur : tentative de supression d'élément dans une list vide\n");
		return NULL;
	}
	LinkedElement* elem = l->sentinel->previous;
	l->sentinel->previous = elem->previous;
	elem->previous->next = l->sentinel;
	free(elem);
	l->size--;
	return l;
}

/*-----------------------------------------------------------------*/

LinkedElement* find(List*l, int p){
	LinkedElement* it = l->sentinel->next;
	for (int i = 0; i < p; i++){
		it = it->next;
	}
	return it;
}

List *list_insert_at(List *l, int p, int v) {

	if (p < 0 ||  p > l->size){
		fprintf(stderr, "Erreur : tentative d'insertion hors des limites de la liste");
	}

	LinkedElement* it = find(l, p); //l'élément sera inséré avant celui-ci
	LinkedElement* elem = malloc(sizeof(LinkedElement));
	elem->value = v;
	elem->next = it;
	elem->previous = it->previous;
	it->previous = elem;
	it->previous->next = elem;
	l->size++;

	return l;
}

/*-----------------------------------------------------------------*/

List *list_remove_at(List *l, int p) {
	if (p < 0 ||  p >= l->size){
		fprintf(stderr, "Erreur : tentative de supression hors des limites de la liste");
	}

	LinkedElement* it = find(l, p);
	it->next->previous = it->previous;
	it->previous->next = it->next;
	free(it);
	l->size--;

	return l;
}

/*-----------------------------------------------------------------*/

int list_at(List *l, int p) {
	if (p < 0 ||  p >= l->size){
		fprintf(stderr, "Erreur : tentative de supression hors des limites de la liste");
	}
	return find(l, p)->value;
}

/*-----------------------------------------------------------------*/

bool list_is_empty(List *l) {
	return l->sentinel->next == l->sentinel;
}

/*-----------------------------------------------------------------*/

int list_size(List *l) {
	return l->size;
}

/*-----------------------------------------------------------------*/

List * list_map(List *l, SimpleFunctor f) {
	LinkedElement* elem = l->sentinel->next;
	while(elem != l->sentinel){
		elem ->value = f(elem->value);
		elem = elem->next;
	}
	return l;
}


List *list_reduce(List *l, ReduceFunctor f, void *userData) {
	LinkedElement* elem = l->sentinel->next;
	while(elem != l->sentinel){
		elem ->value = f(elem->value, userData);
		elem = elem->next;
	}
	return l;
}

/*-----------------------------------------------------------------*/

List *list_sort(List *l, OrderFunctor f) {
	(void)f;
	return l;
}

