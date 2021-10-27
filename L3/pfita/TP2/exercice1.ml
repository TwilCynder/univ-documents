let e1 = ((1, true), 2) 

let e2 = ((fun a -> a), 'b')
         
let f1 = fun a b -> (a + 2, not b)
                    
let f2 = fun a -> true
  
let f3 = fun a b -> if (a = b) then 1 else 0 
  
let f4 = fun (a, b) -> (b, a)
                       
let f5 = 
  fun a b c d e -> let (i, j) = a e in
    c (b i j, d = e)

let f6 = fun a b c ->
  b c (a c)

let f7 = fun (a, b, c) ->
  b (c, (a c))

let f8 = fun a b c d -> let max a b = if a > b then a else b in
  (max a b, max c d )