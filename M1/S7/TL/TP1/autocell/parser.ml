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

# 49 "parser.ml"
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
    0|]

let yytransl_block = [|
  273 (* ID *);
  274 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\004\000\004\000\005\000\003\000\003\000\
\006\000\006\000\007\000\009\000\009\000\009\000\009\000\009\000\
\010\000\010\000\010\000\010\000\008\000\008\000\008\000\000\000"

let yylen = "\002\000\
\007\000\003\000\001\000\001\000\003\000\005\000\000\000\002\000\
\003\000\003\000\005\000\001\000\001\000\001\000\003\000\002\000\
\001\000\003\000\003\000\003\000\001\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\024\000\000\000\000\000\000\000\000\000\
\000\000\000\000\004\000\000\000\000\000\007\000\000\000\000\000\
\002\000\000\000\005\000\000\000\001\000\000\000\000\000\008\000\
\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\
\014\000\013\000\012\000\000\000\017\000\000\000\000\000\000\000\
\000\000\016\000\000\000\000\000\000\000\000\000\000\000\011\000\
\015\000\000\000\000\000\018\000\019\000\020\000"

let yydgoto = "\002\000\
\004\000\009\000\018\000\010\000\011\000\024\000\035\000\036\000\
\037\000\038\000"

let yysindex = "\005\000\
\250\254\000\000\023\255\000\000\029\255\248\254\030\255\024\255\
\033\255\031\255\000\000\019\255\020\255\000\000\022\255\032\255\
\000\000\011\000\000\000\025\255\000\000\026\255\036\255\000\000\
\037\255\000\000\040\255\008\255\008\255\028\255\008\255\008\255\
\000\000\000\000\000\000\010\255\000\000\013\255\010\255\041\255\
\251\254\000\000\008\255\008\255\008\255\008\255\008\255\000\000\
\000\000\013\255\013\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\045\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\015\000\000\000\001\000\017\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\003\000\013\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\000\000\034\000\000\000\032\000\227\255\
\229\255\243\255"

let yytablesize = 290
let yytable = "\039\000\
\021\000\041\000\022\000\049\000\042\000\001\000\043\000\044\000\
\007\000\008\000\021\000\003\000\023\000\022\000\010\000\031\000\
\009\000\052\000\053\000\054\000\032\000\043\000\044\000\005\000\
\033\000\034\000\045\000\046\000\047\000\050\000\051\000\006\000\
\012\000\013\000\014\000\015\000\016\000\017\000\007\000\028\000\
\029\000\020\000\026\000\027\000\030\000\040\000\003\000\048\000\
\019\000\025\000\000\000\000\000\000\000\000\000\000\000\000\000\
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
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\
\022\000\021\000\000\000\022\000\021\000\021\000\022\000\022\000\
\022\000\021\000\023\000\022\000\010\000\023\000\009\000\000\000\
\023\000\023\000\000\000\023\000\000\000\023\000\000\000\010\000\
\000\000\009\000"

let yycheck = "\029\000\
\000\000\031\000\000\000\009\001\032\000\001\000\012\001\013\001\
\017\001\018\001\000\000\018\001\000\000\006\001\000\000\008\001\
\000\000\045\000\046\000\047\000\013\001\012\001\013\001\001\001\
\017\001\018\001\014\001\015\001\016\001\043\000\044\000\003\001\
\003\001\010\001\002\001\005\001\018\001\018\001\017\001\004\001\
\004\001\010\001\018\001\018\001\005\001\018\001\002\001\007\001\
\015\000\018\000\255\255\255\255\255\255\255\255\255\255\255\255\
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
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\006\001\255\255\
\006\001\009\001\255\255\009\001\012\001\013\001\012\001\013\001\
\006\001\017\001\006\001\017\001\006\001\009\001\006\001\255\255\
\012\001\013\001\255\255\017\001\255\255\017\001\255\255\017\001\
\255\255\017\001"

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
# 73 "parser.mly"
 (
		if _1 != 2 then error "only 2 dimension accepted";
		(_4, _6)
	)
# 236 "parser.ml"
               : Ast.prog))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 81 "parser.mly"
  (
			if _1 >= _3 then error "illegal field values";
			[("", (0, (_1, _3)))]
		)
# 247 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 86 "parser.mly"
  ( set_fields _1 )
# 254 "parser.ml"
               : 'config))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 91 "parser.mly"
  ( [_1] )
# 261 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'fields) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'field) in
    Obj.repr(
# 93 "parser.mly"
  (_3 :: _1 )
# 269 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 98 "parser.mly"
  (
			if _3 >= _5 then error "illegal field values";
			(_1, (_3, _5))
		)
# 281 "parser.ml"
               : 'field))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
  ( NOP )
# 287 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'opt_statements) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'statement) in
    Obj.repr(
# 108 "parser.mly"
  ( _1 )
# 295 "parser.ml"
               : 'opt_statements))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'cell) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 113 "parser.mly"
  (
			if (fst _1) != 0 then error "assigned x must be 0";
			if (snd _1) != 0 then error "assigned Y must be 0";
			SET_CELL (0, _3)
		)
# 307 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expression) in
    Obj.repr(
# 119 "parser.mly"
  (
			NOP
		)
# 317 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : int) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 127 "parser.mly"
  (
			if (_2 < -1) || (_2 > 1) then error "x out of range";
			if (_4 < -1) || (_4 > 1) then error "x out of range";
			(_2, _4)
		)
# 329 "parser.ml"
               : 'cell))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cell) in
    Obj.repr(
# 136 "parser.mly"
  ( CELL (0, fst _1, snd _1); )
# 336 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 139 "parser.mly"
  ( CST _1 ;  )
# 343 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 142 "parser.mly"
  (NONE; )
# 350 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expression) in
    Obj.repr(
# 145 "parser.mly"
  (NONE)
# 357 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 148 "parser.mly"
  (NONE)
# 364 "parser.ml"
               : 'operand))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 153 "parser.mly"
  (NONE)
# 371 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressionPrio1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 156 "parser.mly"
  (NONE)
# 379 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressionPrio1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 159 "parser.mly"
  (NONE)
# 387 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expressionPrio1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'operand) in
    Obj.repr(
# 162 "parser.mly"
  (NONE)
# 395 "parser.ml"
               : 'expressionPrio1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expressionPrio1) in
    Obj.repr(
# 167 "parser.mly"
  (NONE)
# 402 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressionPrio1) in
    Obj.repr(
# 170 "parser.mly"
  (NONE; )
# 410 "parser.ml"
               : 'expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expressionPrio1) in
    Obj.repr(
# 173 "parser.mly"
  (NONE)
# 418 "parser.ml"
               : 'expression))
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
