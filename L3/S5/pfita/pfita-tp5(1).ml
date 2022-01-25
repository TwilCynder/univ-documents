(* Exercice 1 - Signature *)

module type tARITH = sig
  type t
  val zero : t
  val one : t
  val add : t -> t -> t
  val mul : t -> t -> t
  val opp : t -> t
  val of_int : int -> t
  val to_string : t -> string
end 

(* Exercice 2 - Modules implémentant une signature *)
module INT : tARITH = struct 
  type t = int
  let zero = 0
  let one = 1
  let add = (+)
  let mul = ( * )
  let opp i = -i
  let of_int i = i
  let to_string i = string_of_int i
end

module M3 : tARITH = struct 
  type t = Zero | Un | Deux
  let zero = Zero
  let one = Un
  let succ n =
    match n with
      Zero -> Un
    | Un -> Deux
    | Deux -> Zero

  let pred n =
    match n with
      Zero -> Deux
    | Un -> Zero
    | Deux -> Un 

  let add = fun x y -> match x with
      Zero -> y
    | Un -> succ y
    | Deux -> succ (succ y)

  let mul = fun x y -> match x with
      Zero -> Zero
    | Un -> y
    | Deux -> add y y

  let opp = fun x -> match x with
      Zero -> Zero
    | Un -> Deux 
    | Deux -> Un
      
  let rec  of_int i = match i mod 3 with 
      0 -> Zero
    | 1 -> Un
    | 2 -> Deux
    | _ -> of_int (i + 3)
             
  let to_string i = match i with 
      Zero -> "0"
    | Un -> "1"
    | Deux -> "2"
      
end 
(*
   3) Il s'agit d'un modulo 2^63
   4) Le type de M3.one est M3.t.
   
*)

let checkA1 = fun n -> n = M3.add n (M3.opp n)
let checkA2 = fun n -> n = M3.mul n M3.one
let checkA3 = fun m n -> M3.add (M3.of_int m) (M3.of_int n) = M3.of_int(m + n)
                       
(* Exercice 3 - Signature paramétrée *)

module type tEXP = functor (A : tARITH) -> sig
  type t
  val cst : A.t -> t
  val opp : t -> t
  val add : t -> t -> t
  val mul : t -> t -> t
  val compute : t -> A.t
end

(* Exercice 4 - Foncteur implémentant une signature paramétrée *)
  
module EXP : tEXP = functor(A : tARITH) -> struct
  type t = Const of A.t | Sum of t * t | Prod of t * t | Opp of t
  let cst a = Const a
  let opp a = Opp a
  let add a b = Sum (a, b)
  let mul a b = Prod (a, b)
  let rec compute e = match e with 
      Const a -> a 
    | Sum (a, b) -> A.add (compute a) (compute b)
    | Prod (a, b) -> A.mul (compute a) (compute b)
    | Opp a -> A.opp (compute a) 
end

(* Exercice 5 - Instanciation *)

module EXP_INT = EXP(INT)
module EXP_M3  = EXP(M3)
    
let two = INT.of_int 2
let expr_int = EXP_INT.(mul (cst two ) (add (cst two)(cst two)))
                 
let two = M3.of_int 2
let expr_m3 = EXP_M3.(mul (cst two ) (add (cst two)(cst two)))
  

(* Exercice 6 - Polynômes *)

module type tPOLY = functor (A : tARITH) -> sig
  type t
  val zero : t
  val one : t
  val add : t -> t -> t
  val mul : t -> t -> t
  val opp : t -> t
  val of_int : int -> t
  val to_string : t -> string
  val cst : A.t -> t
  val varx : t
  val evalx : t -> A.t -> A.t
  val def : int -> (int -> A.t) -> t
end

module POLY : tPOLY = functor(A : tARITH) -> struct
  type t = A.t list 
  let zero = []
  let one = [A.one]
  let rec add a b = match a, b with
      [], [] -> []
    | [], b_ -> b_
    | a_, [] -> a_
    | x::a_, y::b_ -> (A.add x y) :: (add a_ b_) 
  let of_int i = [A.of_int i]
end