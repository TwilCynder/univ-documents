#include "bstree.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "queue.h"

void bstree_remove_node(ptrBinarySearchTree *t, ptrBinarySearchTree current);

/*------------------------  BSTreeType  -----------------------------*/

struct _bstree {
    BinarySearchTree *parent;
    BinarySearchTree *left;
    BinarySearchTree *right;
    int root;
};

/*------------------------  BaseBSTree  -----------------------------*/

BinarySearchTree *bstree_create() {
    return NULL;
}

/* This constructor is private so that we can maintain the oredring invariant on
 * nodes. The only way to add nodes to the tree is with the bstree_add function
 * that ensures the invariant.
 */
BinarySearchTree *bstree_cons(BinarySearchTree *left, BinarySearchTree *right, int root) {
    BinarySearchTree *t = malloc(sizeof(struct _bstree));
    t->parent = NULL;
    t->left = left;
    t->right = right;
    if (t->left != NULL)
        t->left->parent = t;
    if (t->right != NULL)
        t->right->parent = t;
    t->root = root;
    return t;
}

void delete_functor(const BinarySearchTree* n, void* _){
    (void)_;
    free((void*)n);
}

//Choix du visiteur : j'ai choisi le parcours en profondeur postfixe afin d'assurer que tous les sous-arbres d'un noeud sont supprimés avant ledit noeud.
void bstree_delete(ptrBinarySearchTree *t) {
    bstree_depth_postfix(*t, &delete_functor, 0);
    *t = NULL;
}

bool bstree_empty(const BinarySearchTree *t) {
    return t == NULL;
}

int bstree_root(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->root;
}

BinarySearchTree *bstree_left(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->left;
}

BinarySearchTree *bstree_right(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->right;
}

BinarySearchTree *bstree_parent(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->parent;
}

/*------------------------  BSTreeDictionary  -----------------------------*/

/* Obligation de passer l'arbre par référence pour pouvoir le modifier */
void bstree_add(ptrBinarySearchTree *t, int v) {
	BinarySearchTree* parent = NULL;
    BinarySearchTree** current = t;

    while (*current != NULL){
        parent = *current;

        if (bstree_root(parent) == v) return;

        current = (bstree_root(parent) < v) ? &(parent->right) : &(parent->left);
    }

    *current = bstree_cons(NULL, NULL, v);
    (*current)->parent = parent;
}

BinarySearchTree* bstree_find(BinarySearchTree *t, int v){
    BinarySearchTree* current = t;

    while (current != NULL && bstree_root(current) != v){

        current = (bstree_root(current) < v) ? bstree_right(current) : bstree_left(current);
    }
    return current;
}

bool bstree_search(const BinarySearchTree *t, int v) {
    return bstree_find((BinarySearchTree *)t, v) != NULL; //faire cette fonction n'était pas nécessaire pour search, mais évite de la duplication de code pour remove
}

BinarySearchTree *bstree_successor(const BinarySearchTree *x) {
    assert(!bstree_empty(x));
    
    BinarySearchTree* current;

    if (x->right){
        current = x->right;
        while (current->left != NULL){
            current = current->left;
        }
    } else {
        do{
            current = x->parent;
        } while(current && x == current->right);
    }

    return current;
}

BinarySearchTree *bstree_predecessor(const BinarySearchTree *x) {
    assert(!bstree_empty(x));
    
    BinarySearchTree* current;

    if (x->left){
        current = x->left;
        while (current->right != NULL){
            current = current->right;
        }
    } else {
        current = x->parent;
        while(current && x == current->left){
            x = current;
            current = x->parent;
        }
    }

    return current;
}

void bstree_swap_nodes(ptrBinarySearchTree *tree, ptrBinarySearchTree from, ptrBinarySearchTree to) {
    assert(!bstree_empty(*tree) && !bstree_empty(from) && !bstree_empty(to));

    //Après deux séances passées à tenter de comprendre cette fonction, j'ai fini par abandonner

    (void)tree;
    (void)from;
    (void)to;
}

// t -> the tree to remove from, current -> the node to remove
void bstree_remove_node(ptrBinarySearchTree *t, ptrBinarySearchTree current) {
    assert(!bstree_empty(*t) && !bstree_empty(current));

    if (current->left && current->right){ //le noeud a 2 fils
        //Nécessite swap_nodes, donc abandonné
    } else { //cas de un enfant et aucun enfant traités de la même manière
        ptrBinarySearchTree child = (current->left != NULL) ? current->left : current->right; //child null si aucun enfant donc
        if (*t == current) *t = child;

        if (current->parent){
            if (current == current->parent->left){
                current->parent->left = child;
            } else {
                current->parent->right = child;
            }
        }

        if (child){
            child->parent = current->parent;
        }
    }
    free(current);
}

void bstree_remove(ptrBinarySearchTree *t, int v) {
    BinarySearchTree* node = bstree_find(*t, v);
    if (node){
        bstree_remove_node(t, node);
    }
}

/*------------------------  BSTreeVisitors  -----------------------------*/

void bstree_depth_prefix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    if (t == NULL) return;

    f(t, userData);
    bstree_depth_prefix(t->left, f, userData);
    bstree_depth_prefix(t->right, f, userData);
}

void bstree_depth_infix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    if (t == NULL) return;

    bstree_depth_infix(t->left, f, userData);
    f(t, userData);
    bstree_depth_infix(t->right, f, userData);
}

void bstree_depth_postfix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    if (t == NULL) return;

    bstree_depth_postfix(t->left, f, userData);
    bstree_depth_postfix(t->right, f, userData);
    f(t, userData);
}

void bstree_iterative_depth_infix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    assert(!bstree_empty(t));
    const BinarySearchTree* current = t;
    const BinarySearchTree* next = t->parent;
    const BinarySearchTree* prev = t->parent;
    
    while (!bstree_empty(current)){
        if (prev == current->parent){
            prev = current;
            next = current->left;
        }
        if (bstree_empty(next) || prev == current->left){
            next = current->right;
            prev = current;
            f(current, userData);
        }
        if (bstree_empty(next) || prev == current->right){
            next = current->parent;
            prev = current;
        }
        current = next;
    }

}

void bstree_iterative_breadth_prefix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    Queue* q = createQueue();
    const BinarySearchTree* current = t;
    if (t == NULL) return;

    queuePush(q, current);

    while (!queueEmpty(q)){
        current = queueTop(q);
        queuePop(q);
        if (current->left != NULL) queuePush(q, current->left);
        if (current->right != NULL) queuePush(q ,current->right);
        f(current, userData);
    }

    free(q);
}

/*------------------------  BSTreeIterator  -----------------------------*/

struct _BSTreeIterator {
    /* the collection the iterator is attached to */
    const BinarySearchTree *collection;
    /* the first element according to the iterator direction */
    const BinarySearchTree *(*begin)(const BinarySearchTree *);
    /* the current element pointed by the iterator */
    const BinarySearchTree *current;
    /* function that goes to the next element according to the iterator direction */
    BinarySearchTree *(*next)(const BinarySearchTree *);
};

/* minimum element of the collection */
const BinarySearchTree *goto_min(const BinarySearchTree *e) {
	while (e->left){
        e = e->left;
    }
	return e;
}

/* maximum element of the collection */
const BinarySearchTree *goto_max(const BinarySearchTree *e) {
	while (e->right){
        e = e->right;
    }
	return e;
}

/* constructor */
BSTreeIterator *bstree_iterator_create(const BinarySearchTree *collection, IteratorDirection direction) {
	BSTreeIterator* it = malloc(sizeof(BSTreeIterator));
    it->collection = collection;
    if (direction == forward){
        it->begin = &goto_min;
        it->next = &bstree_successor;
    } else {
        it->begin = &goto_max;
        it->next = &bstree_predecessor;
    }

	return it;
}

/* destructor */
void bstree_iterator_delete(ptrBSTreeIterator *i) {
    free(*i);
    *i = NULL;
}

BSTreeIterator *bstree_iterator_begin(BSTreeIterator *i) {
    i->current = i->begin(i->collection);
    return i;
}

bool bstree_iterator_end(const BSTreeIterator *i) {
    return i->current == NULL;
}

BSTreeIterator *bstree_iterator_next(BSTreeIterator *i) {
    i->current = i->next(i->current);
    return i;
}

const BinarySearchTree *bstree_iterator_value(const BSTreeIterator *i) {
    return i->current;
}

