

let imp a b = (not a) || b
              
let xor = fun a b -> a <> b

let quadruplet = (true, (3, 12), (fun x -> x *. 0.5), "Test") 
  
let bissextile = fun x -> ((x mod 4) = 0) && (((x mod 100) <> 0) || ((x mod 400) = 0))
                                             
let nbjour (m, a) = match m with 
    1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31 |
    4 | 6 | 9 | 11 -> 30 |
    2 -> if bissextile a then 29 else 28 |
    _ -> 0

let valide (j, m, a) = (j > 0) && (j <= nbjour (m, a)) 
                                  
let lendemain2 (j, m, a) = if valide (j, m, a) 
  then 
    if j < nbjour (m, a) then
      (j + 1, m, a)
    else
      (if m = 12 then 
         (1, 1, a + 1) 
       else
         (1, m + 1, a))
  else 
    failwith "Invalid Date"
      
      
let lendemain (j, m, a) = if valide (j, m, a) 
  then
    let lastDay = ( j = nbjour(m, a)) in
    match lastDay, m with
    | true, 12 -> (1, 1, a + 1)
    | true, _  -> (1, m + 1, a)
    | _, _ -> (j + 1, m, a) 
  else 
    failwith "Invalid Date"