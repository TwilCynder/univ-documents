#include "bstree.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "queue.h"

void bstree_remove_node(ptrBinarySearchTree *t, ptrBinarySearchTree current);

/*------------------------  BSTreeType  -----------------------------*/

typedef enum {RED, BLACK} NodeColor;

struct _bstree {
    BinarySearchTree *parent;
    BinarySearchTree *left;
    BinarySearchTree *right;
    int root;
    NodeColor color;
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
    t->color = RED;
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

bool isLeftChild(const BinarySearchTree *t){
    return t == t->parent->left;
}

/*-------------------RBTree----------------------------*/

NodeColor rbtree_color(const BinarySearchTree *t){
    assert(!bstree_empty(t));
    return t->color;
}

void leftrotate(BinarySearchTree *x){
    BinarySearchTree* y = x->right;

    y->parent = x->parent;
    
    if (x->parent){
        if (x == x->parent->left){
            x->parent->left = y;
        } else {
            x->parent->right = y;
        }
    }

    x->parent = y;

    x->right = y->left;
    if (y->left)
        y->left->parent = x;
    y->left = x;

}

void rightrotate(BinarySearchTree *y){
    BinarySearchTree* x = y->left;

    x->parent = y->parent;

    if (y->parent){
        if (y == y->parent->left){
            y->parent->left = x;
        } else {
            y->parent->right = x;
        }
    }

    y->parent = x;

    y->left = x->right;
    if (x->right)
    x->right->parent = y;
    x->right = y;
}

void  testrotateleft(BinarySearchTree *t) {
    leftrotate(t);
}

/**
 * @brief Returns whether t is the left child of its parent
 * Assumes that the parent is not null, this verification must be done by the caller
 * @param t a BST
 */
void  testrotateright(BinarySearchTree *t) {
    rightrotate(t);
}

BinarySearchTree* grandparent(BinarySearchTree* t){
    return (t->parent != NULL) ? t->parent->parent : NULL;
}

//assumes that t has a parent
BinarySearchTree* uncle(BinarySearchTree* t){
    BinarySearchTree* pp = grandparent(t);

    return (isLeftChild(t->parent)) ? pp->right : pp->left;
}

bool isBlack(BinarySearchTree* t){
    return t == NULL || t->color ==  BLACK;
}

//forward declaring this one, since i don't want to add it to the header and fixredblack_insert_case2 calls it.
BinarySearchTree* fixredblack_insert(BinarySearchTree* x);

BinarySearchTree* fixredblack_insert_case2_left(BinarySearchTree* x){
    BinarySearchTree* pp = grandparent(x);
    if (!isLeftChild(x)){
        leftrotate(x->parent);

    }
    //x should be the left child of pp

    rightrotate(pp);

    pp->parent->color = BLACK;
    pp->color = RED;

    return x;
}

BinarySearchTree* fixredblack_insert_case2_right(BinarySearchTree* x){
    BinarySearchTree* pp = grandparent(x);
    if (isLeftChild(x)){
        rightrotate(x->parent);

    }
    //x should be the right child of pp

    leftrotate(pp);

    pp->parent->color = BLACK;
    pp->color = RED;

    return x;
}

BinarySearchTree* fixredblack_insert_case2(BinarySearchTree* x){
    if (isLeftChild(x->parent)){
        return fixredblack_insert_case2_left(x);
    } else {
        return fixredblack_insert_case2_right(x);
    }
}

//assumes that x has a parent and a grandparent
BinarySearchTree* fixredblack_insert_case1(BinarySearchTree* x){
    BinarySearchTree* f = uncle(x);

    if (isBlack(f)) return fixredblack_insert_case2(x);

    f->color = BLACK;
    x->parent->color = BLACK;
    grandparent(x)->color = RED;
    return fixredblack_insert(grandparent(x));
}

//Assumes that x has a parent
BinarySearchTree* fixredblack_insert_case0(BinarySearchTree* x){
    if (grandparent(x) == NULL){
        x->parent->color = BLACK;
        return x;
    }
    return fixredblack_insert_case1(x);
}

/**
 * @brief Fixes the coloration of a tree after insertion of a node
 * Assumes that the inserted node is red.
 * @param x the inserted node.
 * @return BinarySearchTree* the node where the correction ended.
 */
BinarySearchTree* fixredblack_insert(BinarySearchTree* x){
    if (x->parent == NULL || x->parent->color == BLACK) return x;

    return fixredblack_insert_case0(x);
}


char* color_string(NodeColor c){
    return (c == RED) ? "red" : "grey";
}

void printNode(const BinarySearchTree *t, void *userData){
    FILE *file = (FILE *) userData;

    fprintf(file, "\tn%d [fillcolor=%s, style=filled, label=\"{{<parent>}|%d|{<left>|<right>}}\"];\n",
            bstree_root(t),color_string(rbtree_color(t)), bstree_root(t));

    if (bstree_left(t)) {
        fprintf(file, "\tn%d:left:c -> n%d:parent:c [headclip=false, tailclip=false]\n",
                bstree_root(t), bstree_root(bstree_left(t)));
    } else {
        fprintf(file, "\tlnil%d [style=filled, fillcolor=grey, label=\"NIL\"];\n", bstree_root(t));
        fprintf(file, "\tn%d:left:c -> lnil%d:n [headclip=false, tailclip=false]\n",
                bstree_root(t), bstree_root(t));
    }
    if (bstree_right(t)) {
        fprintf(file, "\tn%d:right:c -> n%d:parent:c [headclip=false, tailclip=false]\n",
                bstree_root(t), bstree_root(bstree_right(t)));
    } else {
        fprintf(file, "\trnil%d [style=filled, fillcolor=grey, label=\"NIL\"];\n", bstree_root(t));
        fprintf(file, "\tn%d:right:c -> rnil%d:n [headclip=false, tailclip=false]\n",
                bstree_root(t), bstree_root(t));
    }
}

void rbtree_export_dot(const  BinarySearchTree *t, FILE *file) {
    fprintf(file , "digraph  RedBlackTree  {\n\tgraph[ranksep =0.5];\n\tnode [shape = record ];\n\n");
    bstree_iterative_depth_infix(t, printNode , file);
    fprintf(file , "\n}\n");
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

    fixredblack_insert(*current);

    //si le noeud qui était la racine a maintenant un parent non-nul, cela signifie que ce parent est la nouvelle racine (il y a eu une rotation)
    //cela ne marche que si on n'appelle cette fonction qu'avec des arbres sans parent (ce qui sera toujours le cas pour ce TP)
    if ((*t)->parent != NULL) *t = (*t)->parent;
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

