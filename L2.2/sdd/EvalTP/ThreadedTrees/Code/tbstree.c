#include "tbstree.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

/*------------------------  TBSTreeType  -----------------------------*/

struct _tbstree {
    // Links towards subtrees
    ThreadedBinaryTree *parent;
    ThreadedBinaryTree *left;
    ThreadedBinaryTree *right;
    // Key of the tree
    int root;
    // are the left and right pointers threads ?
    bool leftthread;
    bool rightthread;
};

/*------------------------  BaseTBSTree  -----------------------------*/

ThreadedBinaryTree *tbstree_create() {
    return NULL;
}


bool tbstree_empty(const ThreadedBinaryTree *t) {
    return t == NULL;
}

int tbstree_root(const ThreadedBinaryTree *t) {
    assert(!tbstree_empty(t));
    return t->root;
}

ThreadedBinaryTree *tbstree_left(const ThreadedBinaryTree *t) {
    assert(!tbstree_empty(t));
    return t->left;
}


ThreadedBinaryTree *tbstree_right(const ThreadedBinaryTree *t) {
    assert(!tbstree_empty(t));
    return t->right;
}

bool tbstree_isleftthreaded(const ThreadedBinaryTree *t) {
    assert(!tbstree_empty(t));
    return t->leftthread;
}

bool tbstree_isrightthreaded(const ThreadedBinaryTree *t) {
    assert(!tbstree_empty(t));
    return t->rightthread;
}

/*------------------------  Private interface -----------------------------*/

ThreadedBinaryTree *tbstree_cons(int root) {
    ThreadedBinaryTree *t = malloc(sizeof(struct _tbstree));
    t->parent = NULL;
    t->left = NULL;
    t->right = NULL;
    t->root = root;
    t->leftthread = false;
    t->rightthread = false;
    return t;
}

ThreadedBinaryTree *bstree_successor(const ThreadedBinaryTree *x) {
    assert(!tbstree_empty(x));
    ThreadedBinaryTree *y = x->right;
    if (y) {
        while (y->left)
            y = y->left;
    } else {
        y = x->parent;
        while (y && (x == y->right)) {
            x = y;
            y = y->parent;
        }
    }
    return y;
}

ThreadedBinaryTree *bstree_predecessor(const ThreadedBinaryTree *x) {
    assert(!tbstree_empty(x));
    ThreadedBinaryTree *y = x->left;
    if (y) {
        while (y->right)
            y = y->right;
    } else {
        y = x->parent;
        while (y && (x == y->left)) {
            x = y;
            y = y->parent;
        }
    }
    return y;
}

/***************************************************************************************/
/**                               Control start here                                  **/
/***************************************************************************************/
/**
 *  Nom         :   Tinarrage
 *  Prenom      :   Téo
 *  Num Etud    :   21805419
 **/

/*
 * Exercice 3 : rétablissement de l'invariant de structure.
 */
void fix_tree_threads(ptrThreadedBinaryTree current) {
    current->left = bstree_predecessor(current);
    current->right = bstree_successor(current);
    
    if (current->left) current->leftthread = true;
    if (current->right) current->rightthread = true;

    //on m'a conseillé de tout faire dans cette fonction comme dit dans le sujet, mais j'aurais personnellement plus penché pour effectuer une partie de ce code dans add :
    //cette dernière fait déjà les tests ci dessous, ça aurait évité une redondance à ce niveau
    if (current->parent){
        if (current == current->parent->left){
            current->parent->leftthread = false;
        } else {
            current->parent->rightthread = false;
        }
    }
}

/*
 *  Exercice 1 : Ecrire la fonction d'ajout dans l'arbre binaire de recherche
 *  Exercice 3 : Etablir l'invariant des arbres cousus après insertion
 */
void tbstree_add(ptrThreadedBinaryTree *t, int v) {
    /* Exercice 1 */
    ThreadedBinaryTree* parent = NULL;
    ThreadedBinaryTree* current = *t;

    while (current != NULL){
        parent = current;
        if (tbstree_root(parent) == v) return;

        if (tbstree_root(parent) < v){
            if (tbstree_isrightthreaded(parent)){
                current = NULL;
            } else {
                current = tbstree_right(parent);
            }
        } else {
            if (tbstree_isleftthreaded(parent)){
                current = NULL;
            } else {
                current = tbstree_left(parent);
            }
        }

    }
    current = tbstree_cons(v);
    if (parent) {
            fflush(stdout);
            current->parent = parent;
        if (tbstree_root(parent) > v) parent->left = current;
        else parent->right = current;
    }

    if (*t == NULL) *t = current;

    /* Add the value into the Binary search tree */

    /* Exercice 3 */
    fix_tree_threads(current);
    /* Fix threads on the new inserted node */
}

/*
 * Exercice 2 : Parcours classiques de l'arbre
 */
void tbstree_depth_infix(const ThreadedBinaryTree *t, OperateFunctor f, void *userData) {
    if (t == NULL) return; //could have made this test with the others, reducing the amount of recursive calls, but like this i can ensure that the initial pointer passed by the user isn't NULL
    if (!tbstree_isleftthreaded(t)){
        tbstree_depth_infix(tbstree_left(t), f, userData);
    }
    f(t, userData);

    if (!tbstree_isrightthreaded(t)){
        tbstree_depth_infix(tbstree_right(t), f, userData);
    }
}

void tbstree_depth_prefix(const ThreadedBinaryTree *t, OperateFunctor f, void *userData) {
    if (t == NULL) return; //could have made this test with the others, reducing the amount of recursive calls, but like this i can ensure that the initial pointer passed by the user isn't NULL
    f(t, userData);
    if (!tbstree_isleftthreaded(t)){
        tbstree_depth_prefix(tbstree_left(t), f, userData);
    }

    if (!tbstree_isrightthreaded(t)){
        tbstree_depth_prefix(tbstree_right(t), f, userData);
    }
}

/*
 * Exercice 4 - parcours de l'arbre en utilisant les coutures
 */
void tbstree_inorder(const ThreadedBinaryTree *t, OperateFunctor f, void *userData) {
    //looking for the first node
    while (t->left){
        t = t->left;
    }

    do {
        
        f(t, userData);
        t = t->right;

    } while (t != NULL);
}
