let f i = if i  < 0 then failwith "< 0" else i
    
let safe i = try f i with Failure s -> 0 
        