let nom = "TINARRAGE" and prenom = "Téo" 

let rec doublons liste = match liste with
    [] -> [] 
  | x::l_ -> 
      let res = doublons l_ in
      if List.mem x l_ && not (List.mem x res) then
        x::res
      else
        res 
          
let rec occs l = 
  let rec incElement res e = match res with
      [] -> [(e, 1)]
    | (a, b)::l_ -> if a = e then (a, b+1)::l_ else (a, b)::(incElement l_ e)
  in
  match l with
    [] -> []
  | x::l_ -> incElement (occs l_) x
               
module ENV_LIST : tENV_LIST  = struct
  type ('x, 'v) env = ('x * 'v) list
  let empty = []
  let rec get x env = match env with 
      [] -> failwith "No such element"
    | (k, v)::l_ -> if k = x then v else get x l_ 
  let rec put k v env = match env with 
      [] -> [(k, v)]
    | (k_, v_)::l_ -> if k_ = k then (k, v)::l_ else (k_, v_)::(put k v l_)
end

module ENV_FUN : tENV_FUN = struct
  type ('x, 'v) env = 'x -> 'v
  let empty = fun x -> failwith "no such element"
  let get x e = e x
  let put x v e = fun k -> if k = x then v else e k
end
    
let regle_if expr = match expr with
    If (b, BConst true, BConst false) -> b
  | If (b, BConst true, e) -> Call (Or, b, e)
  | If (b, t, BConst false) -> Call (And, b, t)
  | e -> e
  
let rec apply regle e = match e with
    If (cond, t, e) -> regle (If(cond, apply regle t, apply regle e))
  | Let (name, e1, e2) -> regle (Let(name, apply regle e1, apply regle e2))
  | Call (op, lhs, rhs) -> regle (Call(op, apply regle lhs, apply regle rhs) )
  | exp -> regle exp
    
let rec forall pred e = match e with
    If (cond, t, e) -> forall pred cond && forall pred t && forall pred e
  | Let (name, e1, e2) -> forall pred e1 && forall pred e2 
  | Call (op, lhs, rhs) -> forall pred lhs && forall pred rhs
  | exp -> pred exp
  
let rec no_let e = match e with
    If (cond, t, e) -> no_let cond && no_let t && no_let e
  | Let (name, e1, e2) -> false
  | Call (op, lhs, rhs) -> no_let lhs && no_let rhs
  | exp -> true
    
let rec subst e0 e1 e =
  let test_subst e0 e1 e2 e3 = if e2 = e0 then e1 else e3
  in 
  match e with 
    If (cond, t, e) -> test_subst e0 e1 e (If(subst e0 e1 cond, subst e0 e1 t, subst e0 e1 e))
  | Let (name, e1, e2) -> failwith "Cannot use subst n on expressions containing a Let"
  | Call (op, lhs, rhs) -> test_subst e0 e1 e (Call(op, subst e0 e1 lhs, subst e0 e1 rhs))
  | exp -> test_subst e0 e1 exp exp
  
let rec subst_list e0 e1 eList = match eList with
    [] -> []
  | exp::l_ -> (subst e0 e1 exp)::(subst_list e0 e1 l_)
                                  
let regle_let exp = match exp with
    Let (name, e1, e2) -> subst (Var(name)) e1 e2
  | e -> e
    
let elim_let = apply regle_let    

let rec ssexpr exp = match exp with 
    If (cond, t, e) -> exp::(ssexpr cond @ ssexpr t @ ssexpr e)
  | Let (name, e1, e2) -> exp::(ssexpr e1 @ ssexpr e2)
  | Call (op, lhs, rhs) -> exp::(ssexpr lhs @ ssexpr rhs)
  | exp -> [exp]
  
let gen_lets exp expList = 
  let rec gen_lets_ expList = match expList with 
      [] -> failwith "This is not supposed to happen"
    |  [exp] -> exp
    | e::l_ -> let symbol = gensym() in
        Let(symbol, e, gen_lets_ (subst_list e (Var(symbol)) l_))
  in
  gen_lets_ (expList @ [exp])
  

(*renvoie toutes les sous-expr SAUF les BConst, IConst et Var*)      
let rec ssexpr_adv exp = match exp with 
    If (cond, t, e) -> exp::(ssexpr_adv cond @ ssexpr_adv t @ ssexpr_adv e)
  | Let (name, e1, e2) -> exp::(ssexpr_adv e1 @ ssexpr_adv e2)
  | Call (op, lhs, rhs) -> exp::(ssexpr_adv lhs @ ssexpr_adv rhs)
  | exp -> []               

           
let optim_lets exp = 
  let opt_lets exp = gen_lets exp (doublons (ssexpr_adv exp))
  in 
  opt_lets (elim_let exp)
    
let op_to_string op = match op with
    And -> "And"
  | Or -> "Or"
  | Add -> "Add"
  | Leq -> "Less-or-equal"      

module EVAL : tEVAL = functor (E : tENV) -> struct
  type value = Vint of int | Vbool of bool 
  
  let eval_op op lhs rhs = match op, lhs, rhs with 
      And, Vbool a, Vbool b -> Vbool(a && b)
    | Or, Vbool a, Vbool b -> Vbool(a || b)
    | Add, Vint a, Vint b -> Vint(a + b)
    | Leq, Vint a, Vint b -> Vbool(a <= b)
    | op, _, _ -> failwith ("Operands type mismatch in operation " ^ (op_to_string op)) 
         
  let rec eval env exp = 
    match exp with 
    | IConst i -> Vint i
    | BConst b -> Vbool b
(*On pourrait faire juste "E.get name env", mais dans ce cas l'erreur affichée en cas 
  d'utilisation d'une var non présente dans l'environement serait 
  "no such element", donc pour afficher un message d'erreur plus pertinent
  pour la situation, on fait un try catch*)
    | Var name -> (try E.get name env with Failure exp -> failwith ("Unbound variable " ^ name))
    | If (cond, t, e) -> if (eval env cond) = (Vbool true) then eval env t else eval env e 
    | Let (name, e1, e2) -> eval (E.put name (eval env e1) env) e2
    | Call (op, lhs, rhs) -> eval_op op (eval env lhs) (eval env rhs) 
end

module TYPECHECK : tTYPECHECK = functor (E : tENV) -> struct 
  let typeof_op binop = match binop with
      And -> (Bool, Bool, Bool)
    | Or  -> (Bool, Bool, Bool)
    | Add -> (Int, Int, Int)
    | Leq -> (Bool, Int, Int)
             
  let rec typeof env exp = match exp with 
    | IConst i -> Int
    | BConst b -> Bool
    | Var name -> E.get name env
    | If (cond, t, e) -> 
        let type_then = typeof env t in 
        let type_else = typeof env e in  
        if type_then = type_else then type_then else failwith "Type mismatch in operation If"  
    | Let (name, e1, e2) -> typeof (E.put name (typeof env e1) env) e2
    | Call (op, lhs, rhs) -> 
        let (ret_type, lhs_type, rhs_type) = typeof_op op in
        if ((typeof env lhs) = lhs_type) && ((typeof env rhs) = rhs_type) then
          ret_type else (failwith ("Type mismatch in operation " ^ (op_to_string op)))
                                            
    
end

module EL = EVAL(ENV_LIST)
module TCL = TYPECHECK(ENV_LIST)

let test2 =
  Call (Leq, Call (Add, IConst 7, IConst 3), Call (Add, IConst 7, IConst 3))

let tol =   ( Call(Add, Call(Add, Var("x"), Var("x")),
                   Let("y", IConst(1),
                       Call(Add, Call(Add, Var("x"), Var("x")), Var("y")))) )
   
let test = Let("x", IConst(5),
               Let("a0", Call(Leq, IConst(0), Var("x")),
                   Let("b0", Call(Leq, Var("x"), IConst(10)),
                       If(Call(And, Var("a0"), Var("b0")),
                          IConst(2),
                          IConst(0)))))