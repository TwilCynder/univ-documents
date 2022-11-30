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
	l->sentinel->value = 0;
	l->sentinel->next = l->sentinel;
	l->sentinel->previous = l->sentinel;
	return l;
}

/*-----------------------------------------------------------------*/

List *list_push_back(List *l, int v) {
	LinkedElement *e = malloc(sizeof(LinkedElement));
	e->next = l->sentinel;
	e->previous = l->sentinel->previous;
	e->previous->next = e;
	l->sentinel->previous = e;
	e->value = v;
	++(l->size);
	return l;
}

/*-----------------------------------------------------------------*/

void list_delete(ptrList *l) {
	LinkedElement* e = (*l)->sentinel;
	LinkedElement* nextElement;
	while (e != (*l)->sentinel){
		nextElement = e-> next;
		free(e);
		e = nextElement;
	}
	free((*l)->sentinel);
	free(*l);
	*l = NULL;
}

/*-----------------------------------------------------------------*/

List *list_push_front(List *l, int v) {
	LinkedElement *e = malloc(sizeof(LinkedElement));
	e->previous = l->sentinel;
	e->next = l->sentinel->next;
	e->next->previous=e;
	l->sentinel->next = e;
	e->value = v;
	++(l->size);
	return l;
}

/*-----------------------------------------------------------------*/

int list_front(List *l) {
	return l->sentinel->next;
}

/*-----------------------------------------------------------------*/

int list_back(List *l) {
	return l->sentinel->previous;
}

/*-----------------------------------------------------------------*/

List *list_pop_front(List *l) {
	return l;
}

/*-----------------------------------------------------------------*/

List *list_pop_back(List *l){
	return l;
}

/*-----------------------------------------------------------------*/

List *list_insert_at(List *l, int p, int v) {
	(void)v;
	(void)p;
	return l;
}

/*-----------------------------------------------------------------*/

List *list_remove_at(List *l, int p) {
	(void)p;
	return l;
}

/*-----------------------------------------------------------------*/

int list_at(List *l, int p) {
	(void)l;
	return p;
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
	LinkedElement* e = l->sentinel->next;
	LinkedElement* nextElement;

	while (e != l->sentinel){
		nextElement = e-> next;
		e->value = f(e->value);
		e = nextElement;
	}
	return l;
}


List *list_reduce(List *l, ReduceFunctor f, void *userData) {
	LinkedElement* e = l->sentinel->next;
	LinkedElement* nextElement;

	while (e != l->sentinel){
		nextElement = e-> next;
		e->value = f(e->value, userData);
		e = nextElement;
	}
	return l;
}

/*-----------------------------------------------------------------*/

List *list_sort(List *l, OrderFunctor f) {
	(void)f;
	return l;
}
