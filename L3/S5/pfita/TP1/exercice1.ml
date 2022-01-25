(** avec la première version, si on essaie avec 2022 on a une match exception car 2022 ne match avec aucun pattern *)

let estZero_v1 x = match x with 0 -> "zero"
  
let estZero_v2 x = match x with 0 -> "zero" | _ -> "nonZero"
  
let voyelle x = match x with 
    'a' | 'e' | 'i' | 'o' | 'u' -> true |
    _ -> false
  