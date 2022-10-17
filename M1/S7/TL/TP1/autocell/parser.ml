type token =
  | EOF
  | DIMENSIONS
  | END
  | OF
  | ASSIGN
  | COMMA
  | LBRACKET
  | RBRACKET
  | LPAR
  | RPAR
  | DOT_DOT
  | DOT
  | ADD
  | SUB
  | MUL
  | DIV
  | MOD
  | IF
  | THEN
  | ELSE
  | LESS
  | GREATER
  | LESSEQ
  | GREATEREQ
  | EQUALS
  | DIFF
  | ID of (string)
  | INT of (int)

open Parsing;;
let _ = parse_error;;
# 17 "parser.mly"

open Common
open Ast
open Printf
open Symbols

(** Raise a syntax error with the given message.
	@param msg	Message of the error. *)
let error msg =
	raise (SyntaxError msg)


(** Restructure the when assignment into selections.
	@param f	Function to build the assignment.
	@param v	Initial values.
	@param ws	Sequence of (condition, expression).
	@return		Built statement. *)
let rec make_when f v ws =
	match ws with
	| [] ->	f v
	| (c, nv)::t ->
		IF_THEN(c, f v, make_when f nv t)

# 58 "parser.ml"
let yytransl_const = [|
    0 (* EOF *);
  257 (* DIMENSIONS *);
  258 (* END *);
  259 (* OF *);
  260 (* ASSIGN *);
  261 (* COMMA *);
  262 (* LBRACKET *);
  263 (* RBRACKET *);
  264 (* LPAR *);
  265 (* RPAR *);
  266 (* DOT_DOT *);
  267 (* DOT *);
  268 (* ADD *);
  269 (* SUB *);
  270 (* MUL *);
  271 (* DIV *);
  272 (* MOD *);
  273 (* IF *);
  274 (* THEN *);
  275 (* ELSE *);
  276 (* LESS *);
  277 (* GREATER *);
  278 (* LESSEQ *);
  279 (* GREATEREQ *);
  280 (* EQUALS *);
  281 (* DIFF *);
    0|]

let yytransl_block = [|
  282 (* ID *);
  283 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\004\000\005\000\003\000\003\000\
\006\000\006\000\006\000\006\000\007\000\010\000\010\000\010\000\
\010\000\010\000\010\000\011\000\011\000\011\000\011\000\008\000\
\008\000\008\000\009\000\009\000\009\000\009\000\009\000\009\000\
\000\000"

let yylen = "\002\000\
\007\000\003\000\001\000\001\000\003\000\005\000\000\000\002\000\
\003\000\003\000\005\000\007\000\005\000\001\000\001\000\001\000\
\003\000\002\000\002\000\001\000\003\000\003\000\003\000\001\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\033\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\000\000\000\000\007\000\000\000\000\000\
\002\000\000\000\005\000\000\000\001\000\000\000\000\000\000\000\
\008\000\000\000\006\000\000\000\000\000\000\000\000\000\016\000\
\015\000\014\000\000\000\000\000\020\000\000\000\000\000\000\000\
\000\000\000\000\019\000\018\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\007\000\000\000\000\000\000\000\
\000\000\000\000\000\000\017\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\021\000\022\000\023\000\
\013\000\011\000\007\000\000\000\012\000"

let yydgoto = "\002\000\
\004\000\009\000\018\000\010\000\011\000\025\000\034\000\035\000\
\036\000\037\000\038\000"

let yysindex = "\014\000\
\229\254\000\000\019\255\000\000\039\255\242\254\046\255\036\255\
\048\255\047\255\000\000\030\255\031\255\000\000\028\255\049\255\
\000\000\074\000\000\000\042\255\000\000\044\255\035\255\066\255\
\000\000\068\255\000\000\070\255\035\255\035\255\035\255\000\000\
\000\000\000\000\043\255\055\255\000\000\003\255\035\255\035\255\
\051\255\252\254\000\000\000\000\035\255\035\255\035\255\035\255\
\035\255\035\255\035\255\035\255\000\000\035\255\035\255\035\255\
\027\255\027\255\072\255\000\000\003\255\003\255\027\255\027\255\
\027\255\027\255\027\255\027\255\004\255\000\000\000\000\000\000\
\000\000\000\000\000\000\005\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\078\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\076\000\077\000\000\000\000\000\026\000\051\000\063\255\064\255\
\065\255\067\255\069\255\071\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\219\255\000\000\069\000\000\000\240\255\241\255\
\000\000\229\255\255\255"

let yytablesize = 359
let yytable = "\003\000\
\024\000\026\000\043\000\044\000\060\000\074\000\077\000\045\000\
\046\000\022\000\022\000\007\000\008\000\042\000\001\000\069\000\
\054\000\055\000\056\000\005\000\023\000\023\000\075\000\057\000\
\058\000\025\000\070\000\071\000\072\000\024\000\024\000\063\000\
\064\000\065\000\066\000\067\000\068\000\076\000\045\000\046\000\
\022\000\006\000\029\000\061\000\062\000\013\000\030\000\031\000\
\012\000\014\000\026\000\015\000\026\000\007\000\045\000\046\000\
\016\000\017\000\020\000\026\000\032\000\033\000\047\000\048\000\
\049\000\050\000\051\000\052\000\027\000\039\000\028\000\040\000\
\053\000\021\000\041\000\010\000\009\000\059\000\073\000\003\000\
\027\000\028\000\029\000\019\000\030\000\000\000\031\000\000\000\
\032\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\
\000\000\024\000\000\000\000\000\024\000\024\000\000\000\000\000\
\000\000\024\000\024\000\024\000\024\000\024\000\024\000\024\000\
\024\000\024\000\024\000\025\000\000\000\000\000\000\000\025\000\
\000\000\000\000\025\000\000\000\000\000\025\000\025\000\000\000\
\000\000\000\000\025\000\025\000\025\000\025\000\025\000\025\000\
\025\000\025\000\025\000\025\000\026\000\000\000\000\000\000\000\
\026\000\000\000\000\000\026\000\000\000\000\000\026\000\026\000\
\000\000\000\000\000\000\026\000\026\000\026\000\026\000\026\000\
\026\000\026\000\026\000\026\000\026\000\010\000\009\000\022\000\
\000\000\010\000\009\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\023\000\000\000\010\000\009\000\010\000\009\000\
\000\000\000\000\000\000\024\000\000\000\010\000\009\000"

let yycheck = "\027\001\
\000\000\018\000\030\000\031\000\009\001\002\001\002\001\012\001\
\013\001\006\001\006\001\026\001\027\001\029\000\001\000\053\000\
\014\001\015\001\016\001\001\001\017\001\017\001\019\001\039\000\
\040\000\000\000\054\000\055\000\056\000\026\001\026\001\047\000\
\048\000\049\000\050\000\051\000\052\000\075\000\012\001\013\001\
\006\001\003\001\008\001\045\000\046\000\010\001\012\001\013\001\
\003\001\002\001\000\000\005\001\069\000\026\001\012\001\013\001\
\027\001\027\001\010\001\076\000\026\001\027\001\020\001\021\001\
\022\001\023\001\024\001\025\001\027\001\004\001\027\001\004\001\
\018\001\000\000\005\001\000\000\000\000\027\001\007\001\002\001\
\018\001\018\001\018\001\015\000\018\001\255\255\018\001\255\255\
\018\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\255\255\255\255\255\255\006\001\255\255\
\255\255\009\001\255\255\255\255\012\001\013\001\255\255\255\255\
\255\255\017\001\018\001\019\001\020\001\021\001\022\001\023\001\
\024\001\025\001\026\001\002\001\255\255\255\255\255\255\006\001\
\255\255\255\255\009\001\255\255\255\255\012\001\013\001\255\255\
\255\255\255\255\017\001\018\001\019\001\020\001\021\001\022\001\
\023\001\024\001\025\001\026\001\002\001\255\255\255\255\255\255\
\006\001\255\255\255\255\009\001\255\255\255\255\012\001\013\001\
\255\255\255\255\255\255\017\001\018\001\019\001\020\001\021\001\
\022\001\023\001\024\001\025\001\026\001\002\001\002\001\006\001\
\255\255\006\001\006\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\017\001\255\255\017\001\017\001\019\001\019\001\
\255\255\255\255\255\255\026\001\255\255\026\001\026\001"

let yynames_const = "\
  EOF\000\
  DIMENSIONS\000\
  END\000\
  OF\000\
  ASSIGN\000\
  COMMA\000\
  LBRACKET\000\
  RBRACKET\000\
  LPAR\000\
  RPAR\000\
  DOT_DOT\000\
  DOT\000\
  ADD\000\
  SUB\000\
  MUL\000\
  DIV\000\
  MOD\000\
  IF\000\
  THEN\000\
  ELSE\000\
  LESS\000\
  GREATER\000\
  LESSEQ\000\
  GREATEREQ\000\
  EQUALS\000\
  DIFF\000\
  "

let yynames_block = "\
  ID\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'config) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 82 "parser.mly"
 (
		if _1 != 2 then error "only 2 dimension accepted";
		(_4, _6)
	)
# 292 "parser.ml"
               : Ast.prog))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 90 "parser.mly"
  (
			if _1 >= _3 then error "illegal field values";
			[("", (0, (_1, _3)))]
		)
# 303 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 95 "parser.mly"
  ( set_fields _1 )
# 310 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 100 "parser.mly"
  ( [_1] )
# 317 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'fields) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 102 "parser.mly"
  (_3 :: _1 )
# 325 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 107 "parser.mly"
  (
			if _3 >= _5 then error "illegal field values";
			(_1, (_3, _5))
		)
# 337 "parser.ml"
               : 'field))
; (fun __caml_parser_env ->
    Obj.repr(
# 115 "parser.mly"
  ( NOP )
# 343 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'statement) in
    Obj.repr(
# 118 "parser.mly"
  ( SEQ (_1, _2) )
# 351 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cell) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 123 "parser.mly"
  (
			if (fst _1) != 0 then error "assigned x must be 0";
			if (snd _1) != 0 then error "assigned Y must be 0";
			SET_CELL (0, _3)
		)
# 363 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 129 "parser.mly"
  (
			let reg = get_var _1 in if reg = -1 then SET_VAR(declare_var _1, _3) else SET_VAR(reg, _3)
		)
# 373 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'condition) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 135 "parser.mly"
  ( IF_THEN(_2, _4, NOP))
# 381 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 5 : 'condition) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'opt_statements) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    Obj.repr(
# 139 "parser.mly"
  (IF_THEN(_2, _4, _6))
# 390 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 145 "parser.mly"
  (
			if (_2 < -1) || (_2 > 1) then error "x out of range";
			if (_4 < -1) || (_4 > 1) then error "x out of range";
			(_2, _4)
		)
# 402 "parser.ml"
               : 'cell))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cell) in
    Obj.repr(
# 154 "parser.mly"
  ( CELL (0, fst _1, snd _1); )
# 409 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 157 "parser.mly"
  ( CST _1 ;  )
# 416 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 160 "parser.mly"
  ( let reg = get_var _1 in if reg = -1 then error ("Usage of undeclared variable " ^ _1) else VAR(reg) )
# 423 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expression) in
    Obj.repr(
# 163 "parser.mly"
  (_2)
# 430 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 166 "parser.mly"
  (NEG(_2))
# 437 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 169 "parser.mly"
  (_2)
# 444 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 174 "parser.mly"
  ( _1 )
# 451 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressionPrio1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 177 "parser.mly"
  (BINOP(OP_MUL, _1, _3))
# 459 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressionPrio1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 180 "parser.mly"
  (BINOP(OP_DIV, _1, _3))
# 467 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressionPrio1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 183 "parser.mly"
  (BINOP(OP_MOD, _1, _3))
# 475 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expressionPrio1) in
    Obj.repr(
# 188 "parser.mly"
  ( _1 )
# 482 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressionPrio1) in
    Obj.repr(
# 191 "parser.mly"
  (BINOP(OP_ADD, _1, _3))
# 490 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressionPrio1) in
    Obj.repr(
# 194 "parser.mly"
  (BINOP(OP_SUB, _1, _3))
# 498 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 199 "parser.mly"
  (COMP(COMP_LT, _1, _3))
# 506 "parser.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 202 "parser.mly"
  (COMP(COMP_GT, _1, _3))
# 514 "parser.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 205 "parser.mly"
  (COMP(COMP_LE, _1, _3))
# 522 "parser.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 208 "parser.mly"
  (COMP(COMP_GE, _1, _3))
# 530 "parser.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 211 "parser.mly"
  (COMP(COMP_EQ, _1, _3))
# 538 "parser.ml"
               : 'condition))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 214 "parser.mly"
  (COMP(COMP_NE, _1, _3))
# 546 "parser.ml"
               : 'condition))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.prog)
