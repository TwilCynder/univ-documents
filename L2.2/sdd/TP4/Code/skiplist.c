#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "skiplist.h"
#include "rng.h"

typedef struct s_Element{
	int value;
	int level;
	Element* prev;
	Element* next;
}* Element;

struct s_SkipList{
	Element sentinel;
	RNG rng;
};

void print_element_details(Element e, SkipList l){
	printf("Value : %d\n", e->value);
	printf("Level : %d\n", e->level);
	for (int i = e->level - 1; i >= 0; --i){
		printf("Prev[%d] : %16p | Next[%d] : %16p", i, (void*)e->prev[i], i, e->next[i]);
	}
}

Element create_element(int value, int level){
	size_t link_array_size = sizeof(void*) * level;

	Element res = malloc(sizeof(struct s_Element) + link_array_size * 2);

	res->prev = res + sizeof(struct s_Element);
	res->next = res->next + link_array_size;
	res->value = value;
	res->level = level;
	return res;
}

SkipList skiplist_create(int nblevels) {
	SkipList res = malloc(sizeof(struct s_SkipList));
	res->rng = rng_initialize(0);
	Element sentinel = create_element(0, nblevels);
	for (int i = 0; i < nblevels; i++){
		res->sentinel->next[i] = sentinel;
		res->sentinel->prev[i] = sentinel;
	}
	res->sentinel = sentinel;

	return create_element(0, nblevels);
}

void skiplist_delete(SkipList d) {
	Element elem = d->sentinel->next[0];
	Element next;
	while(elem != d->sentinel){
		next = elem->next;
		free(elem);
		elem = next;
	}
	free(d->sentinel);
	free(d);
}

int skiplist_size(SkipList l){
	return l->sentinel->value;
}

int skiplist_at(SkipList l, unsigned int pos){
	if (pos < skiplist_size(l)) {
		fprintf(stderr, "NUL NUL NUL C NIMPORTE QUOI ABORT");
		exit(12);
	}

	Element elem = l->sentinel->next[0];

	for (int i = 0; i < pos; i++){
		elem = elem->next[0];
	}
	return elem->value;
}

void skiplist_map(SkipList l, ScanOperator f, void* userData){
	for (Element elem = l->sentinel->next[0]; elem != l->sentinel; elem = elem->next[0]){
		f(elem->value, userData);
	}
}

SkipList skiplist_insert(SkipList l, int value){
	
}

SkipList skiplist_insert(SkipList d, int value) {
	(void)value;
	return d;
}
