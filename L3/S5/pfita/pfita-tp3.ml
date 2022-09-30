let rec filter p l = match l with 
  | [] -> []
  | a :: l_ -> if p a then a :: filter p l_ else filter p l_
          
let rec forall p l = match l with
  | [] -> true
  | a :: l_ -> (p a) && forall p l_
                 
let rec exists p l = match l with
  | [] -> false
  | a :: l_ -> (p a) || exists p l_
                 
let fst (a, b) = a
  
let snd (a, b) = b
  
let rec estFonction l = 
  match l with 
  | [] -> true 
  | (a, b) :: l_ -> not (exists (fun x -> a = fst x) l_) && estFonction l_
                      
let rec image x f =  match f with 
  | [] -> failwith "Pas d'image"
  | (a, b) :: l_ -> if a = x then b else image x l_
          
let rec imageEns l f = match l with
  | [] -> [] 
  | x :: l_ -> (image x f) :: (imageEns l_ f)
  
let rec findImage i f = match f with 
    [] -> false |
    (x, y):: _f -> i = y || findImage i _f                            

let rec estInjective f = 
  let rec findImage i f = match f with 
      [] -> false |
      (x, y):: _f -> i = y || findImage i _f
  in match f with 
    [] -> true |
    (x, y) :: f_ -> not (findImage y f_) && estInjective f_
                      
let rec surcharge f1 f2