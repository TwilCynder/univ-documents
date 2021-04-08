#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "skiplist.h"
#include "rng.h"

typedef struct s_Element{
	int value;
	int levels;
	struct s_Element** prev;
	struct s_Element** next;
}* Element;

struct s_SkipList{
	Element sentinel;
	RNG rng;
};

void print_element_details(Element e, SkipList l){
	printf("Value : %d\n", e->value);
	printf("Level : %d\n", e->levels);
	for (int i = e->levels - 1; i >= 0; --i){
		printf("Prev[%d] : %16p | Next[%d] : %16p", i, (void*)e->prev[i], i, e->next[i]);
	}
}

Element create_element(int value, int level){
	size_t link_array_size = sizeof(void*) * level;

	Element res = malloc(sizeof(struct s_Element) + link_array_size * 2);

	res->prev = (Element*)res + sizeof(struct s_Element);
	res->next = res->prev + link_array_size;
	res->value = value;
	res->levels = level;
	return res;
}

SkipList skiplist_create(int nblevels) {
	SkipList res = malloc(sizeof(struct s_SkipList));
	res->rng = rng_initialize(0);
	Element sentinel = create_element(0, nblevels);
	for (int i = 0; i < nblevels; i++){
		sentinel->next[i] = sentinel;
		sentinel->prev[i] = sentinel;
	}

	res->sentinel = sentinel;
	return res;
}

void skiplist_delete(SkipList d) {
	Element elem = d->sentinel->next[0];
	Element next;
	while(elem != d->sentinel){
		next = elem->next[0];
		free(elem);
		elem = next;
	}
	free(d->sentinel);
	free(d);
}

unsigned int skiplist_size(SkipList l){
	return l->sentinel->value;
}

int skiplist_at(SkipList l, unsigned int pos){
	if (pos < skiplist_size(l)) {
		fprintf(stderr, "NUL NUL NUL C NIMPORTE QUOI ABORT");
		exit(12);
	}

	Element elem = l->sentinel->next[0];

	for (unsigned int i = 0; i < pos; i++){
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
	Element* update = malloc((l->sentinel->levels) * sizeof(Element*));
	Element current = l->sentinel;
	fprintf(stderr, "Insert  : %d------------------------------------------------\n", value);
	fprintf(stderr, "Sentinel : %p\n", (void*)l->sentinel);
	for (int level = l->sentinel->levels - 1; level >= 0; level--){
		fprintf(stderr, "level : %d\n", level);
		while (current->next[level] != l->sentinel && current->next[level]->value < value){
			fprintf(stderr, "Going to next (%d)\n", current->next[level]->value);
			current = current->next[level];
		}
		if (current->next[level]->value >= value){
			fprintf(stderr, "Quit because next was >\n");
		}
		update[level] = current;
	}
	int nblevels = rng_get_value(&l->rng, l->sentinel->levels - 1) + 1;
	Element new = create_element(value, nblevels);

	fprintf(stderr, "nblevels : %d\n",nblevels);

	for (int i = 0; i < nblevels; i++){
		fprintf(stderr, "update->next : %p\n", (void*)update[i]->next[i]);
		new->next[i] = update[i]->next[i];
		update[i]->next[i] = new;
		new->prev[i] = update[i];
		new->next[i]->prev[i] = new;
	}
	l->sentinel->value++;
	return l;
}

bool skiplist_search(SkipList l, int value, unsigned int *nb_operations){
	Element current = l->sentinel;
	for (int level = l->sentinel->levels - 1; level >= 0; level--){
		while (current->next[level] != l->sentinel && current->next[level]->value < value){
			*nb_operations++;
			current = current->next[level];
		}
	}
	return current != l->sentinel && current->value == value;
}
