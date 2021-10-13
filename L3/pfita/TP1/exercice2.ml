let estZero_v1 x = match x with 0 -> "zero"
  
let estZero_v2 x = match x with 0 -> "zero" | _ -> "nonZero"
  
let voyelle x = match x with 
    'a' | 'e' | 'i' | 'o' | 'u' | 'y' -> true |
    _ -> false
  
let rang x = match x with
    "lundi" -> 1 |
    "mardi" -> 2 |
    "mercredi" -> 3 |
    "jeudi" -> 4 |
    "vendredi" -> 5|
    "samedi" -> 6 |
    "dimanche" -> 7 |
    _ -> 0
    
let inf j1 j2 = match rang j1, rang j2 with
    0, _ -> false |
    _, 0 -> false |
    r1, r2 -> r1 mod 7 = r2 - 1
                          
let jsem x = match x with 
    1 -> "lundi" |
    2 -> "mardi" |
    3 -> "mercredi" |
    4 -> "jeudi" |
    5 -> "vendredi" |
    6 -> "samedi" |
    7 -> "dimanche" |
    _ -> "jour inconnu"
    
let jourSucc1 x = match x with 
    "lundi" -> "mardi" |
    "mardi" -> "mercredi" |
    "mercredi" -> "jeudi" |
    "jeudi" -> "vendredi" |
    "vendredi" -> "samedi" |
    "samedi" -> "dimanche" |
    "dimanche" -> "lundi" |
    _ -> "jour inconnu"
    
let jourSucc2 = fun x -> let r = rang x in 
  if r = 0 then "jour inconnu" else 
  if r = 7 then "lundi" else jsem (r+1) 
      
let jourSucc3 = fun x -> let r = rang x in 
  if r = 0 then "jour inconnu" else jsem ((r mod 7) + 1)
      
let jourPred1 x = match x with 
    "lundi" -> "dimanche" |
    "mardi" -> "lundi" |
    "mercredi" -> "mardi" |
    "jeudi" -> "mercredi" |
    "vendredi" -> "jeudi" |
    "samedi" -> "vendredi" |
    "dimanche" -> "samedi" |
    _ -> "jour inconnu"
    
let jourPred2 = fun x -> let r = rang x in 
  if r = 0 then "jour inconnu" else 
  if r = 1 then "dimanche" else jsem (r-1) 
      
let jourPred3 = fun x -> let r = rang x in 
  if r = 0 then "jour inconnu" else jsem (((r + 5) mod 7 ) + 1)
      
let bissextile = fun x -> ((x mod 4) = 0) && (((x mod 100) <> 0) || ((x mod 400) = 0))
                                             
let nbjour m a = match m with 
    1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31 |
    4 | 6 | 9 | 11 -> 30 |
    2 -> if bissextile a then 29 else 28 |
    _ -> 0
    