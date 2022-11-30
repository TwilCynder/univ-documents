(* Auteur(s) du devoir maison :
   NOM: 
   Prénom:
   NOM_2:
   Prénom_2:
 *)

(* UPS - L3 Info - UE TAPFA - DM Coq

Ce devoir est à rendre sur Moodle avant le dimanche 17 avril 2022 à 23h59.

Il doit s’effectuer en monôme ou en binôme du même groupe de TP.

Vous devrez déposer votre code Coq sous la forme d’un fichier texte nommé

TPXY_NOM.v ou TPXY_NOM1_NOM2.v

(c'est-à-dire, TPXY pour le groupe de TPA X.Y
+ nom de famille de l'auteur ou des auteurs du devoir
+ extension de fichier .v)

Dans le cas d'un binôme, un seul dépôt devra être fait.

Tout *échange de code* entre différents monômes/binômes est interdit
et sera sanctionné. Lors de la correction, des outils de mesure de
similarité de code seront utilisés.

Votre fichier devra commencer par un commentaire entre (* ... *)
précisant le NOM et le Prénom de l’auteur ou des auteurs du DM.

En cas de question sur le DM, vous privilégieriez l'utilisation du
forum Moodle de l'UE TAPFA :
https://moodle.univ-tlse3.fr/mod/forum/view.php?id=28554

Remarque 1 : Tout commentaire utile (concernant les difficultés
rencontrées ou expliquant la solution) pourra être inséré entre
(* ... *) à proximité de la fonction ou de la preuve.

Remarque 2 : l'intégralité du fichier .v doit être accepté par Coq !
(en ne renvoyant aucune erreur quand on le compile avec "coqc TPXY_NOM.v"
ou lorsqu'on l'évalue entièrement en utilisant le raccourci adéquat,
par exemple "C-c C-b" dans ProofGeneral)
L'évaluation s'arrêtera à la première erreur rencontrée (mais
l'utilisation de commentaires est bien sûr possible pour masquer les
parties qui ne compileraient pas).

Remarque 3 : vous avez le droit d'utiliser toutes les tactiques vues
en Cours, en TP (ou dans la documentation de Coq !)

Remarque 4 : les zones à compléter sont signalées par un TODO.

Remarque 5 : pour toutes les preuves terminées, vous remplacerez
Admitted. par Qed.
*)

Require Import List.
Import ListNotations.
Require Import Lia. (* on utilisera donc 'lia' *)
Require Import PeanoNat.
(*
   Ce DM a pour but de proposer une implémentation de la signature suivante
   déclarant des opérations arithmétiques (successeur, addition, multiplication,
   exponentiation) et leurs liens avec les opérations sur les entiers.
*)
Module Type tArith.
  Parameter tnat: Type.
  Parameter tvalue: tnat -> nat.
  Parameter tsucc: tnat -> tnat.
  Parameter tadd: tnat -> tnat -> tnat.
  Parameter tmul: tnat -> tnat -> tnat.
  Parameter texp: tnat -> tnat -> tnat.
  Axiom tsuccOK: forall i, tvalue (tsucc i) = S (tvalue i).
  Axiom taddOK: forall i1 i2, tvalue (tadd i1 i2) = tvalue i1 + tvalue i2.
  Axiom tmulOK: forall i1 i2, tvalue (tmul i1 i2) = tvalue i1 * tvalue i2.
  Axiom texpOK: forall i1 i2, tvalue (texp i1 i2) = tvalue i1 ^ tvalue i2.
End tArith.

(*
Afin d'implémenter le type tnat, on considère la représentation d'un entier
en binaire par une liste de booléens poids faibles en tête. Par exemple,
10 sera représenté par la liste

  [false;true;false;true]
*)

(* Définir la fonction value: list bool -> nat renvoyant la valeur représentée
 par une liste de booléens (en suivant le schéma de Horner)
*)
Fixpoint value (l: list bool) := 0.  (* TODO *)

Lemma value_test1: value [false;true;false;true] = 10.
Proof.
  (* TODO *)
Admitted.

(* Définir la fonction bsucc: list bool -> list bool réalisant
l'incrémentation de la représentation binaire d'un entier
*)
Fixpoint bsucc (l: list bool): list bool := l. (* TODO *)

Lemma bsucc_test1: bsucc [false;true;false;true] = [true;true;false;true].
Proof.
  (* TODO *)
Admitted.

Lemma bsucc_test2: bsucc [true;true] = [false;false;true].
Proof.
  (* TODO *)
Admitted.

(*
  Démontrer que bsucc calcule bien la réprésentation du successeur.
*)
Lemma bsuccOK: forall l, value (bsucc l) = S (value l).
Proof.
  (* TODO par induction sur l *)
Admitted.

(*
  Définir la fonction badd: list bool -> list bool -> list bool effectuant
la somme de deux entiers codés en binaire. On utilisera bsucc.
*)
Fixpoint badd (l1 l2: list bool): list bool := l1. (* TODO *)

(*
  Montrer que badd calcule bien la représentation de la somme des 2 entiers.
*)
Lemma baddOK: forall l1 l2, value (badd l1 l2) = value l1 + value l2.
Proof.
  (* TODO par induction sur l1 puis destruct l2 *)
Admitted.

(*
 Afin de définir une version plus efficace de la somme, on donne la fonction
b1add_r effectuant la somme des 2 bits b1 et b2 et de la retenue r. Le
résultat est un couple de bits, poids faible en tête.
*)

Definition b1add_r b1 b2 r :=
  match b1,b2 with
    true, true => (r,true)
  | true,false => (negb r, r)
  | false, true => (negb r,r)
  | false,false => (r, false)
  end.

(*
Définir la fonction badd_r: list bool -> list bool -> bool -> list bool
effectuant la somme des entiers représentés par les 2 listes et du booléen
représentant une retenue. Cette fonction récursive utilisera b1add_r, bsucc,
mais pas badd.
*)
Fixpoint badd_r (l1 l2: list bool) (r:bool): list bool := l1. (* TODO *)

(*
  Vérifier que la fonction badd_r est correcte:
*)
Lemma badd_rOK: forall l1 l2 r,
  value (badd_r l1 l2 r) = value l1 + value l2 + (if r then 1 else 0).
Proof.
  (* TODO *)
Admitted.

(*
En déduire la fonction badd': list bool -> list bool -> list bool effectuant
la somme des entiers représentés par les 2 listes utilisant badd_r.
*)
Definition badd' (l1 l2: list bool): list bool := l1. (* TODO *)

(*
  Vérifier que la fonction badd' est correcte:
*)
Lemma badd'_OK: forall l1 l2,
  value (badd' l1 l2) = value l1 + value l2.
Proof.
  (* TODO *)
Admitted.

(*
On aurait pu déduire le résultat précédent de la preuve de l'égalité des 2
fonctions badd et badd'. On commence par montrer le résultat intermédiaire
suivant:
*)

Lemma badd_badd_r: forall l1 l2 r,
    badd_r l1 l2 r = if r then bsucc (badd l1 l2) else badd l1 l2.
Proof.
  (* TODO *)
Admitted.

(*
et on en déduit l'égalité point à point des 2 variantes:
*)

Lemma badd_badd': forall l1 l2, badd l1 l2 = badd' l1 l2.
Proof.
  (* TODO *)
Admitted.

(*
Définir la fonction récursive terminale brmul_r dérivée de l'algorithme
ci-dessous. On notera que le troisième argument ne désigne plus une retenue
mais le résultat, qu'on notera donc res.

Fonction brmul_r (x,y,res)
  Tant que x est différent de 0
    Si x est impair alors
       res = res + y; x = x / 2; y = y * 2
    Sinon
       x = x / 2; y = y * 2
    Fin si;
  Fin tant que
  Renvoyer res
Fin fonction
*)

Fixpoint brmul_r (x y res: list bool): list bool := res. (* TODO *)

(*
  vérifier la correction de cette fonction.
*)
Lemma brmul_rOK: forall x y res,
    value (brmul_r x y res) = value res + value x*value y.
Proof.
  (* TODO par induction sur x *)
Admitted.

(*
  On en déduit la fonction brmul:
*)
Definition brmul x y := brmul_r x y [].

(* vérifier la correction de brmul
*)
Lemma brmulOK: forall x y, value (brmul x y) = value x * value y.
Proof.
  (* TODO *)
Admitted.

(* Définir en suivant l'algorithme ci-dessousla fonction récursive terminale
d'exponentiation rapide:

Fonction bexp_r (x,y,res)
  Tant que y est différent de 0
    Si y est impair alors
       res = res * x; y = y / 2; x = x * x
    Sinon
       y = y / 2; x = x * x
    Fin si;
  Fin tant que
  Renvoyer res
Fin fonction
*)

Fixpoint bexp_r (x y res: list bool): list bool := res. (* TODO *)

(* Afin de démontrer sa correction, on introduit des lemmes intermédiaires *)

Lemma mul_pow: forall a b c, (a*b)^c = a^c*b^c.
Proof.
  (* TODO avec une induction c et lia *)
Admitted.

Lemma pow_add: forall a b c, a^(b+c) = a^b*a^c.
Proof.
  (* TODO avec une induction sur b et lia *)
Admitted.

(*
  Démontrer la correction de bexp_r.
*)
Lemma bexp_rOK: forall y x res,
    value (bexp_r x y res) = value res * (value x ^ value y).
Proof.
  (* TODO par induction sur y, en utilisant Nat.pow_succ_r et Nat.add_0_r *)
Admitted.

(* On en déduit l'exponentiation *)
Definition bexp x y := bexp_r x y [true].

(* démontrer la correction de bexp *)
Lemma bexpOK: forall x y, value (bexp x y) = value x ^ value y.
Proof.
  (* TODO en utilisant Nat.add_0_r *)
Admitted.

(* La spécification a bien été implémentée *)
Module LBArith <: tArith.
  Definition tnat := list bool.
  Definition tvalue := value.
  Definition tsucc := bsucc.
  Definition tadd := badd.
  Definition tmul := brmul.
  Definition texp := bexp.
  Definition tsuccOK := bsuccOK.
  Definition taddOK := baddOK.
  Definition tmulOK := brmulOK.
  Definition texpOK := bexpOK.
End LBArith.
