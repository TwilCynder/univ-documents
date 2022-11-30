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

struct s_SkipListIterator {
    /* the collection the iterator is attached to */
    SkipList collection;
    /* the first element according to the iterator direction */
    Element (*begin)(const SkipList);
    /* the current element pointed by the iterator */
    Element current;
    /* function that goes to the next element according to the iterator direction */
    Element(*next)(const Element);
};

void print_element_details(const Element e, const SkipList l){
	printf("-------------------\n");
	printf("Adress : %p\n", (void*)e);
	printf("Prev :   %p\n", (void*)e->prev);
	printf("Value : %d | Level : %d\n", e->value, e->levels);
	for (int i = e->levels - 1; i >= 0; --i){
		printf("Prev[%d] : %16p | Next[%d] : %16p\n", i, (void*)e->prev[i], i, (void*)e->next[i]);
	}
}

void dump_list_details(const SkipList l){
	printf( "Sentinel : %p\n", (void*)l->sentinel);
	print_element_details(l->sentinel, l);
	for (Element elem = l->sentinel->next[0]; elem != l->sentinel; elem = elem->next[0]){
		print_element_details(elem, l);
	}
}

Element create_element(int value, int level){
	Element res = malloc(sizeof(struct s_Element) + sizeof(Element*) * level * 2);

	res->prev = (Element*)(res + 1); 
	res->next = res->prev + level;	  	
	/* Certes, c'est moche et j'aurais pu faire comme ça
	res->prev = malloc(link_array_size);
	res->next = malloc(link_array_size);
	Mais j'avais *vraiment* envie d'y arriver en faisant une seule alloc par élément.
	*/															
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

	//print_element_details(sentinel, res);

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
	//printf("\033[0;33m===============================================\nInserting element %d\n\033[0m", value);

	Element* update = malloc((l->sentinel->levels) * sizeof(Element*));
	Element current = l->sentinel;

	for (int level = l->sentinel->levels - 1; level >= 0; level--){
		while (current->next[level] != l->sentinel && current->next[level]->value < value){
			current = current->next[level];
		}
		update[level] = current;
	}

	if (current->next[0] != l->sentinel && current->next[0]->value == value){
		return l;
	}

	int nblevels = rng_get_value(&l->rng, l->sentinel->levels - 1) + 1;
	Element new = create_element(value, nblevels);


	for (int i = 0; i < nblevels; i++){
		//printf("Updating (level %d) : %p (new : %p)\n", i, (void*)update[i], (void*)new);
		new->next[i] = update[i]->next[i];
		new->prev[i] = update[i];
		update[i]->next[i] = new;
		new->next[i]->prev[i] = new;
	}
	l->sentinel->value++;

	/*
	printf("\033[0;32m===============================================\nJust inserted element %d at adress %p. Size is now %d. Current state of the list : \n\033[0m", 
	value, (void*)new, l->sentinel->value);
	dump_list_details(l);
	fflush(stdout);
	*/

	return l;
}

bool skiplist_search(SkipList l, int value, unsigned int *nb_operations){
	*nb_operations = 1; //on checkera au moins un next de toute façon, donc on part à 1

	Element current = l->sentinel;
	for (int level = l->sentinel->levels - 1; level >= 0; level--){
		while (current->next[level] != l->sentinel && current->next[level]->value <= value){
			current = current->next[level];
			if (current->value == value){
				return true;
			}
			++*nb_operations;
		}
	}

	return false;
}

SkipList skiplist_remove(SkipList l, int value){

	Element current = l->sentinel;
	for (int level = l->sentinel->levels - 1; level >= 0; level--){
		while (current->next[level] != l->sentinel && current->next[level]->value <= value){
			current = current->next[level];
			if (current->value == value){
				for (;level >= 0; level--){
					current->prev[level]->next[level] = current->next[level];
					current->next[level]->prev[level] = current->prev[level];
				}
				free(current);
				l->sentinel->value--;
				return l;
			}
		}
	}

	return l;
}

Element iterate_forward(Element e){
	return e->next[0];
}

Element iterate_backwards(Element e){
	return e->prev[0];
}

Element first(SkipList l){
	return l->sentinel->next[0];
}

Element last(SkipList l){
	return l->sentinel->prev[0];
}

SkipListIterator skiplist_iterator_create(SkipList d, unsigned char w){
	SkipListIterator res = malloc(sizeof(struct s_SkipListIterator));

	res->next = (w == FORWARD_ITERATOR) ? &iterate_forward : &iterate_backwards;
	res->begin = (w == FORWARD_ITERATOR) ? &first : &last;
	res->collection = d;
	return res;
}

void skiplist_iterator_delete(SkipListIterator it){
	free(it);
}

SkipListIterator skiplist_iterator_begin(SkipListIterator it){
	it->current = it->begin(it->collection);
	return it;
}

bool skiplist_iterator_end(SkipListIterator it){
	return it->current == it->collection->sentinel;
}

SkipListIterator skiplist_iterator_next(SkipListIterator it){
	it->current = it->next(it->current);
	return it;
}

int skiplist_iterator_value(SkipListIterator it){
	return it->current->value;
}