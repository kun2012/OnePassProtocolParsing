exception Error

type token = 
  | TRUE
  | SUB
  | SEMI
  | RPAREN
  | REGEX of (
# 21 "ns_yac.mly"
       (string)
# 12 "ns_yac.ml"
)
  | RBRACK
  | OR
  | NT of (
# 19 "ns_yac.mly"
       (string)
# 19 "ns_yac.ml"
)
  | NOT
  | MUL
  | LT
  | LPAREN
  | LE
  | LBRACK
  | INT of (
# 22 "ns_yac.mly"
       (int)
# 30 "ns_yac.ml"
)
  | GT
  | GE
  | FALSE
  | EQUAL
  | EOF
  | DIV
  | COMMA
  | COLONEQUALS
  | BRACK of (
# 20 "ns_yac.mly"
       (string)
# 43 "ns_yac.ml"
)
  | BECOMES
  | AND
  | ADD

and _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  mutable _menhir_token: token;
  mutable _menhir_startp: Lexing.position;
  mutable _menhir_endp: Lexing.position;
  mutable _menhir_shifted: int
}

and _menhir_state = 
  | MenhirState94
  | MenhirState89
  | MenhirState86
  | MenhirState83
  | MenhirState82
  | MenhirState81
  | MenhirState78
  | MenhirState76
  | MenhirState71
  | MenhirState69
  | MenhirState62
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState43
  | MenhirState39
  | MenhirState38
  | MenhirState36
  | MenhirState32
  | MenhirState27
  | MenhirState21
  | MenhirState18
  | MenhirState16
  | MenhirState14
  | MenhirState11
  | MenhirState10
  | MenhirState8
  | MenhirState1


# 1 "ns_yac.mly"
  
  open Printf
  open Lexing
  open Ns_types
  open Ns_types.ParsedPCFG

  let is_act = ref false
  let cur_var = ref ""

  let check_var v =
    if not !is_act && !cur_var = "" then cur_var := v else
    if v <> !cur_var then failwith "ERROR(line %d): Non-unary expression"

  module VM = Ns_types.ParsedPCFG.VarMap
  let to_map l = List.fold_left (fun acc (v,e) -> VM.add v e acc) VM.empty l
    

# 110 "ns_yac.ml"
let _eRR =
  Error

let rec _menhir_goto_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv501 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv499 * _menhir_state * 'tv_term) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_term_ = 
# 116 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 127 "ns_yac.ml"
         in
        _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv500)) : 'freshtv502)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv511 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 135 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv509 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 143 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) * _menhir_state * 'tv_list_term_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv505 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 152 "ns_yac.ml"
            )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv503 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 159 "ns_yac.ml"
            )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s, _1), _, _2), _3), _, _5) = _menhir_stack in
            let _v : 'tv_ns_rule = 
# 43 "ns_yac.mly"
                                      ( (_1,_2,_3,_5) )
# 165 "ns_yac.ml"
             in
            _menhir_goto_ns_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv504)) : 'freshtv506)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv507 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 175 "ns_yac.ml"
            )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) * _menhir_state * 'tv_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv508)) : 'freshtv510)) : 'freshtv512)
    | _ ->
        _menhir_fail ()

and _menhir_run79 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "ns_yac.mly"
       (string)
# 185 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v

and _menhir_reduce15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_term_ = 
# 114 "/usr/share/menhir/standard.mly"
    ( [] )
# 196 "ns_yac.ml"
     in
    _menhir_goto_list_term_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_nonempty_list_term_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_term_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv485 * _menhir_state * 'tv_term) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_nonempty_list_term_ = 
# 126 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 213 "ns_yac.ml"
         in
        _menhir_goto_nonempty_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv497 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 221 "ns_yac.ml"
        )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 229 "ns_yac.ml"
        )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv491 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 238 "ns_yac.ml"
            )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv489 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 245 "ns_yac.ml"
            )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | BRACK _v ->
                _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | NT _ | REGEX _ | RPAREN | SEMI ->
                _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv490)) : 'freshtv492)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv493 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 264 "ns_yac.ml"
            )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv494)) : 'freshtv496)) : 'freshtv498)
    | _ ->
        _menhir_fail ()

and _menhir_run78 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 21 "ns_yac.mly"
       (string)
# 274 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv483 * _menhir_state * (
# 21 "ns_yac.mly"
       (string)
# 283 "ns_yac.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | BRACK _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
    | NT _ | REGEX _ | RPAREN | SEMI ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv484)

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "ns_yac.mly"
       (string)
# 299 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv481 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 308 "ns_yac.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | BRACK _v ->
        _menhir_run79 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv479 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 319 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState81 in
        ((let _menhir_stack = (_menhir_stack, _menhir_s) in
        let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv477 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 328 "ns_yac.ml"
        )) * _menhir_state) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | NT _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | REGEX _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82) : 'freshtv478)) : 'freshtv480)
    | NT _ | REGEX _ | RPAREN | SEMI ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81) : 'freshtv482)

and _menhir_goto_nonempty_list_ns_rule_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_ns_rule_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv459 * _menhir_state * 'tv_ns_rule) * _menhir_state * 'tv_nonempty_list_ns_rule_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv457 * _menhir_state * 'tv_ns_rule) * _menhir_state * 'tv_nonempty_list_ns_rule_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_nonempty_list_ns_rule_ = 
# 126 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 360 "ns_yac.ml"
         in
        _menhir_goto_nonempty_list_ns_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv458)) : 'freshtv460)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv475 * _menhir_state * 'tv_nonempty_list_ns_rule_) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_nonempty_list_ns_rule_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_nonempty_list_ns_rule_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_nonempty_list_ns_rule_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, spec) = _menhir_stack in
            let _v : (
# 35 "ns_yac.mly"
      (Ns_types.str_spec_t)
# 381 "ns_yac.ml"
            ) = 
# 40 "ns_yac.mly"
                          ( spec )
# 385 "ns_yac.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv465) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 35 "ns_yac.mly"
      (Ns_types.str_spec_t)
# 393 "ns_yac.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv463) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 35 "ns_yac.mly"
      (Ns_types.str_spec_t)
# 401 "ns_yac.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 35 "ns_yac.mly"
      (Ns_types.str_spec_t)
# 409 "ns_yac.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv462)) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)) : 'freshtv470)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_nonempty_list_ns_rule_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)) : 'freshtv476)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_INT_ : _menhir_env -> 'ttv_tail -> 'tv_option_INT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 429 "ns_yac.ml"
    )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv453 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 437 "ns_yac.ml"
    )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | BECOMES ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv449 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 446 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv447 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 453 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | NT _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | REGEX _v ->
            _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
        | SEMI ->
            _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState76
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv448)) : 'freshtv450)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 474 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)) : 'freshtv456)

and _menhir_error73 : _menhir_env -> ('ttv_tail * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 482 "ns_yac.ml"
)) * _menhir_state * 'tv_option_BRACK_ -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv445 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv446)

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv443 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv444)

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv441 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv442)

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv439 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv440)

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv437 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54) : 'freshtv438)

and _menhir_goto_separated_nonempty_list_SEMI_act_chunk_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMI_act_chunk_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMI_act_chunk_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_SEMI_act_chunk_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMI_act_chunk__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 593 "ns_yac.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_act_chunk__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv435 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMI_act_chunk_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv433 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_SEMI_act_chunk_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMI_act_chunk_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 609 "ns_yac.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_act_chunk_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_a_exp_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_a_exp_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv423 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 623 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_a_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv421) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_a_exp_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_a_exp__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 634 "ns_yac.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_a_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_a_exp_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_a_exp_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_a_exp_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 650 "ns_yac.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_a_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)) : 'freshtv428)
    | _ ->
        _menhir_fail ()

and _menhir_run14 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv420)

and _menhir_run20 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
    ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
    let _v : 'tv_a_exp = 
# 69 "ns_yac.mly"
                        ( _2 )
# 683 "ns_yac.ml"
     in
    _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)

and _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv415 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv416)

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv413 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18) : 'freshtv414)

and _menhir_run21 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv411 * _menhir_state * 'tv_a_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv412)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_separated_nonempty_list_SEMI_pred_chunk_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMI_pred_chunk_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv405) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMI_pred_chunk_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv403) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_SEMI_pred_chunk_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__ = 
# 59 "/usr/share/menhir/standard.mly"
    ( x )
# 761 "ns_yac.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMI_pred_chunk__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv404)) : 'freshtv406)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv409 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMI_pred_chunk_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv407 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_SEMI_pred_chunk_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMI_pred_chunk_ = 
# 146 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 777 "ns_yac.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_pred_chunk_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv408)) : 'freshtv410)
    | _ ->
        _menhir_fail ()

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_p_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_p_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | FALSE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NOT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | TRUE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43) : 'freshtv402)

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_p_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv399 * _menhir_state * 'tv_p_exp) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | FALSE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NOT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | TRUE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56) : 'freshtv400)

and _menhir_goto_term : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_term -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState83 | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((if Pervasives.(=) _menhir_env._menhir_shifted (-1) then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83
        else
          let _tok = _menhir_env._menhir_token in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_term) = _menhir_stack in
          let (_tok : token) = _tok in
          ((match _tok with
          | NT _v ->
              _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
          | REGEX _v ->
              _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
          | RPAREN ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
              ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
              let _v : 'tv_nonempty_list_term_ = 
# 124 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 857 "ns_yac.ml"
               in
              _menhir_goto_nonempty_list_term_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)
          | _ ->
              assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
              _menhir_env._menhir_shifted <- (-1);
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv392)) : 'freshtv394)
    | MenhirState89 | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        ((if Pervasives.(=) _menhir_env._menhir_shifted (-1) then
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89
        else
          let _tok = _menhir_env._menhir_token in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv395 * _menhir_state * 'tv_term) = _menhir_stack in
          let (_tok : token) = _tok in
          ((match _tok with
          | NT _v ->
              _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
          | REGEX _v ->
              _menhir_run78 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _v
          | SEMI ->
              _menhir_reduce15 _menhir_env (Obj.magic _menhir_stack) MenhirState89
          | _ ->
              assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
              _menhir_env._menhir_shifted <- (-1);
              _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState89) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_goto_ns_rule : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_ns_rule -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_ns_rule) = Obj.magic _menhir_stack in
    ((if Pervasives.(=) _menhir_env._menhir_shifted (-1) then
      _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94
    else
      let _tok = _menhir_env._menhir_token in
      let (_menhir_env : _menhir_env) = _menhir_env in
      let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_ns_rule) = _menhir_stack in
      let (_tok : token) = _tok in
      ((match _tok with
      | NT _v ->
          _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
      | EOF ->
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_ns_rule) = Obj.magic _menhir_stack in
          ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
          let _v : 'tv_nonempty_list_ns_rule_ = 
# 124 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 910 "ns_yac.ml"
           in
          _menhir_goto_nonempty_list_ns_rule_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)
      | _ ->
          assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
          _menhir_env._menhir_shifted <- (-1);
          _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv386)) : 'freshtv388)

and _menhir_goto_option_BRACK_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_BRACK_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv369 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 927 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((if Pervasives.(=) _menhir_env._menhir_shifted (-1) then
          _menhir_error73 _menhir_env (Obj.magic _menhir_stack)
        else
          let _tok = _menhir_env._menhir_token in
          let (_menhir_env : _menhir_env) = _menhir_env in
          let (_menhir_stack : ('freshtv367 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 937 "ns_yac.ml"
          )) * _menhir_state * 'tv_option_BRACK_) = _menhir_stack in
          let (_tok : token) = _tok in
          ((match _tok with
          | INT _v ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : ('freshtv363 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 946 "ns_yac.ml"
              )) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
              let (_v : (
# 22 "ns_yac.mly"
       (int)
# 951 "ns_yac.ml"
              )) = _v in
              ((let _ = _menhir_discard _menhir_env in
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
              let (x : (
# 22 "ns_yac.mly"
       (int)
# 959 "ns_yac.ml"
              )) = _v in
              ((let _v : 'tv_option_INT_ = 
# 31 "/usr/share/menhir/standard.mly"
    ( Some x )
# 964 "ns_yac.ml"
               in
              _menhir_goto_option_INT_ _menhir_env _menhir_stack _v) : 'freshtv362)) : 'freshtv364)
          | BECOMES ->
              let (_menhir_env : _menhir_env) = _menhir_env in
              let (_menhir_stack : 'freshtv365) = Obj.magic _menhir_stack in
              ((let _v : 'tv_option_INT_ = 
# 29 "/usr/share/menhir/standard.mly"
    ( None )
# 973 "ns_yac.ml"
               in
              _menhir_goto_option_INT_ _menhir_env _menhir_stack _v) : 'freshtv366)
          | _ ->
              assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
              _menhir_env._menhir_shifted <- (-1);
              _menhir_error73 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv368)) : 'freshtv370)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373 * _menhir_state * (
# 21 "ns_yac.mly"
       (string)
# 985 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * (
# 21 "ns_yac.mly"
       (string)
# 991 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_term = 
# 47 "ns_yac.mly"
                 ( (Regex _1, _2) )
# 997 "ns_yac.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv377 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1005 "ns_yac.ml"
        )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv375 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1011 "ns_yac.ml"
        )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _1), _), _, _3), _, _5) = _menhir_stack in
        let _v : 'tv_term = 
# 49 "ns_yac.mly"
                                  ( (Capture (_3,_1), _5) )
# 1017 "ns_yac.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv381 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1025 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv379 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1031 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_term = 
# 48 "ns_yac.mly"
              ( (Nt _1, _2) )
# 1037 "ns_yac.ml"
         in
        _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)) : 'freshtv382)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_a_exp__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_a_exp__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv359 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1050 "ns_yac.ml"
    )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_a_exp__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv357 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1058 "ns_yac.ml"
    )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_a_exp__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv353 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1067 "ns_yac.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_a_exp__) = Obj.magic _menhir_stack in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv351 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1074 "ns_yac.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_a_exp__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, var), _, xs0) = _menhir_stack in
        let _v : 'tv_a_exp = let args =
          let xs = xs0 in
          
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 1082 "ns_yac.ml"
          
        in
        
# 66 "ns_yac.mly"
                                                           ( Function(var, get_f_id var, args) )
# 1088 "ns_yac.ml"
         in
        _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)) : 'freshtv354)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1098 "ns_yac.ml"
        )) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_a_exp__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)) : 'freshtv360)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv349 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LPAREN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11) : 'freshtv350)

and _menhir_goto_a_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_a_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)) : 'freshtv232)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv237 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | ADD | AND | COMMA | EQUAL | GE | GT | LE | LT | OR | RBRACK | RPAREN | SEMI | SUB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv233 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_a_exp = 
# 64 "ns_yac.mly"
                    ( Sub(_1,_3) )
# 1172 "ns_yac.ml"
             in
            _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv234)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv235 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)) : 'freshtv240)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv243 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv241 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _v : 'tv_a_exp = 
# 63 "ns_yac.mly"
                    ( Multiply(_1,_3) )
# 1191 "ns_yac.ml"
         in
        _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)) : 'freshtv244)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv247 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _v : 'tv_a_exp = 
# 65 "ns_yac.mly"
                    ( Divide(_1,_3) )
# 1203 "ns_yac.ml"
         in
        _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)) : 'freshtv248)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv255 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv253 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | ADD | AND | COMMA | EQUAL | GE | GT | LE | LT | OR | RBRACK | RPAREN | SEMI | SUB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_a_exp = 
# 62 "ns_yac.mly"
                    ( Plus(_1,_3) )
# 1226 "ns_yac.ml"
             in
            _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv251 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv252)) : 'freshtv254)) : 'freshtv256)
    | MenhirState27 | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let _tok = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv257 * _menhir_state * 'tv_a_exp) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | INT _v ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | LPAREN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | NT _v ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv258)) : 'freshtv260)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_a_exp_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1278 "ns_yac.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_a_exp_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)) : 'freshtv268)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state * 'tv_assign) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * 'tv_assign) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | RBRACK | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv289) = Obj.magic _menhir_stack in
            ((let _v : 'tv_end_act = 
# 56 "ns_yac.mly"
          ( cur_var := ""; is_act:=false; )
# 1311 "ns_yac.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv287) = _menhir_stack in
            let (_v : 'tv_end_act) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv285 * _menhir_state * 'tv_assign) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            let (_v : 'tv_end_act) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv283 * _menhir_state * 'tv_assign) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            let (_ : 'tv_end_act) = _v in
            ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
            let _v : 'tv_act_chunk = 
# 54 "ns_yac.mly"
                                ( _1, _2 )
# 1326 "ns_yac.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_act_chunk) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
            ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            let _tok = _menhir_env._menhir_token in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277 * _menhir_state * 'tv_act_chunk) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv271 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv269 * _menhir_state * 'tv_act_chunk) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | NT _v ->
                    _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv270)) : 'freshtv272)
            | RBRACK ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv273 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_SEMI_act_chunk_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1362 "ns_yac.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMI_act_chunk_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv274)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv275 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)) : 'freshtv280)) : 'freshtv282)) : 'freshtv284)) : 'freshtv286)) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state * 'tv_assign) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)) : 'freshtv296)
    | MenhirState36 | MenhirState62 | MenhirState38 | MenhirState56 | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)) : 'freshtv302)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv309 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv307 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | OR | RBRACK | RPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 73 "ns_yac.mly"
                   ( Lessthan (_1,_3) )
# 1437 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)) : 'freshtv310)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv315 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | OR | RBRACK | RPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 75 "ns_yac.mly"
                   ( LessthanEq (_1,_3) )
# 1471 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv313 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)) : 'freshtv316)) : 'freshtv318)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | OR | RBRACK | RPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv319 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 74 "ns_yac.mly"
                   ( Greaterthan (_1,_3) )
# 1505 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv320)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)) : 'freshtv326)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv331 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | OR | RBRACK | RPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 76 "ns_yac.mly"
                   ( GreaterthanEq (_1,_3) )
# 1539 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv329 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv341 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | AND | OR | RBRACK | RPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 72 "ns_yac.mly"
                      ( Equal (_1,_3) )
# 1573 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv336)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv337 * _menhir_state * 'tv_a_exp) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv347 * _menhir_state) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv345 * _menhir_state) * _menhir_state * 'tv_a_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | ADD ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | EQUAL ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MUL ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | SUB ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv343 * _menhir_state) * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)) : 'freshtv348)
    | _ ->
        _menhir_fail ()

and _menhir_goto_p_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_p_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state) * _menhir_state * 'tv_p_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv181 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let _ = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv179 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 82 "ns_yac.mly"
                        ( _2 )
# 1649 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv183 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)) : 'freshtv186)) : 'freshtv188)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state * 'tv_p_exp) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state * 'tv_p_exp) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _v : 'tv_p_exp = 
# 79 "ns_yac.mly"
                   ( Or (_1,_3) )
# 1668 "ns_yac.ml"
         in
        _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)) : 'freshtv192)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv195 * _menhir_state * 'tv_p_exp) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state * 'tv_p_exp) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _v : 'tv_p_exp = 
# 78 "ns_yac.mly"
                    ( And (_1,_3) )
# 1680 "ns_yac.ml"
         in
        _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv194)) : 'freshtv196)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv203 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_p_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | RBRACK | RPAREN | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _v : 'tv_p_exp = 
# 77 "ns_yac.mly"
              ( Not _2 )
# 1703 "ns_yac.ml"
             in
            _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv198)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)) : 'freshtv204)
    | MenhirState36 | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_p_exp) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | RBRACK | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219 * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _v : 'tv_pred_chunk = 
# 59 "ns_yac.mly"
                   ( let r = (!cur_var, _1) in cur_var := ""; r )
# 1733 "ns_yac.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_pred_chunk) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
            ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            let _tok = _menhir_env._menhir_token in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213 * _menhir_state * 'tv_pred_chunk) = _menhir_stack in
            let (_tok : token) = _tok in
            ((match _tok with
            | SEMI ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
                ((let _tok = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_pred_chunk) = _menhir_stack in
                let (_tok : token) = _tok in
                ((match _tok with
                | FALSE ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | INT _v ->
                    _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | LPAREN ->
                    _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | NOT ->
                    _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | NT _v ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
                | TRUE ->
                    _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState62
                | _ ->
                    assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                    _menhir_env._menhir_shifted <- (-1);
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv206)) : 'freshtv208)
            | RBRACK ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_SEMI_pred_chunk_ = 
# 144 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1779 "ns_yac.ml"
                 in
                _menhir_goto_separated_nonempty_list_SEMI_pred_chunk_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)
            | _ ->
                assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
                _menhir_env._menhir_shifted <- (-1);
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)) : 'freshtv216)) : 'freshtv218)) : 'freshtv220)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221 * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)) : 'freshtv224)) : 'freshtv226)
    | _ ->
        _menhir_fail ()

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv177) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _v : 'tv_term = 
# 50 "ns_yac.mly"
          ( printf "ERROR(line %d): couldn't parse term\n%!" (_startpos.pos_lnum); exit 1 )
# 1810 "ns_yac.ml"
     in
    _menhir_goto_term _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)

and _menhir_run70 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv175) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos__1_ in
    let _v : 'tv_ns_rule = 
# 44 "ns_yac.mly"
          ( printf "ERROR(line %d): couldn't parse rule\n%!" (_startpos.pos_lnum); exit 1 )
# 1825 "ns_yac.ml"
     in
    _menhir_goto_ns_rule _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_option_BRACK_ = 
# 29 "/usr/share/menhir/standard.mly"
    ( None )
# 1834 "ns_yac.ml"
     in
    _menhir_goto_option_BRACK_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_reduce30 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 20 "ns_yac.mly"
       (string)
# 1841 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s x ->
    let _v : 'tv_option_BRACK_ = 
# 31 "/usr/share/menhir/standard.mly"
    ( Some x )
# 1847 "ns_yac.ml"
     in
    _menhir_goto_option_BRACK_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_loption_separated_nonempty_list_SEMI_act_chunk__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMI_act_chunk__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv173) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv171) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | RBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv167) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv165) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv159) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, xs0) = _menhir_stack in
            let _v : (
# 36 "ns_yac.mly"
      (Ns_types.ParsedPCFG.actions)
# 1879 "ns_yac.ml"
            ) = let act =
              let xs = xs0 in
              
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 1885 "ns_yac.ml"
              
            in
            
# 53 "ns_yac.mly"
                                                          ( to_map act )
# 1891 "ns_yac.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv157) = _menhir_stack in
            let (_v : (
# 36 "ns_yac.mly"
      (Ns_types.ParsedPCFG.actions)
# 1898 "ns_yac.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
            let (_v : (
# 36 "ns_yac.mly"
      (Ns_types.ParsedPCFG.actions)
# 1905 "ns_yac.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
            let (_1 : (
# 36 "ns_yac.mly"
      (Ns_types.ParsedPCFG.actions)
# 1912 "ns_yac.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv154)) : 'freshtv156)) : 'freshtv158)) : 'freshtv160)) : 'freshtv162)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)) : 'freshtv168)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv169) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_act_chunk__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)) : 'freshtv172)) : 'freshtv174)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "ns_yac.mly"
       (string)
# 1933 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv151 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1942 "ns_yac.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | COLONEQUALS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1951 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let _ = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1958 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_assign = 
# 55 "ns_yac.mly"
                         ( cur_var := _1; is_act:=true; _1 )
# 1964 "ns_yac.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_assign) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state * 'tv_assign) = Obj.magic _menhir_stack in
        ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        let _tok = _menhir_env._menhir_token in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state * 'tv_assign) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | INT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | NT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv140)) : 'freshtv142)) : 'freshtv144)) : 'freshtv146)) : 'freshtv148)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 1996 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)

and _menhir_goto_loption_separated_nonempty_list_SEMI_pred_chunk__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv137) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = Obj.magic _menhir_stack in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv135) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | RBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv125) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv123) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, xs0) = _menhir_stack in
            let _v : (
# 37 "ns_yac.mly"
      (Ns_types.ParsedPCFG.predicates)
# 2029 "ns_yac.ml"
            ) = let pred =
              let xs = xs0 in
              
# 135 "/usr/share/menhir/standard.mly"
    ( xs )
# 2035 "ns_yac.ml"
              
            in
            
# 58 "ns_yac.mly"
                                                              ( to_map pred )
# 2041 "ns_yac.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121) = _menhir_stack in
            let (_v : (
# 37 "ns_yac.mly"
      (Ns_types.ParsedPCFG.predicates)
# 2048 "ns_yac.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ns_yac.mly"
      (Ns_types.ParsedPCFG.predicates)
# 2055 "ns_yac.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
            let (_1 : (
# 37 "ns_yac.mly"
      (Ns_types.ParsedPCFG.predicates)
# 2062 "ns_yac.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv118)) : 'freshtv120)) : 'freshtv122)) : 'freshtv124)) : 'freshtv126)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv127) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)) : 'freshtv130)) : 'freshtv132)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)) : 'freshtv136)) : 'freshtv138)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv115) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_p_exp = 
# 80 "ns_yac.mly"
         ( Const true )
# 2089 "ns_yac.ml"
     in
    _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "ns_yac.mly"
       (string)
# 2096 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2105 "ns_yac.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2114 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv105 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2121 "ns_yac.ml"
        )) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | INT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | LPAREN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | NT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState10 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_a_exp__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 2138 "ns_yac.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_a_exp__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv106)) : 'freshtv108)
    | ADD | AND | COMMA | DIV | EQUAL | GE | GT | LE | LT | MUL | OR | RBRACK | RPAREN | SEMI | SUB ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv109 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2150 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_a_exp = 
# 68 "ns_yac.mly"
       ( check_var _1; Variable )
# 2156 "ns_yac.ml"
         in
        _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2166 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv101 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | FALSE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NOT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | TRUE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv102)

and _menhir_run39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv99 * _menhir_state) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | FALSE ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | INT _v ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LPAREN ->
        _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NOT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NT _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | TRUE ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39) : 'freshtv100)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 22 "ns_yac.mly"
       (int)
# 2224 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 22 "ns_yac.mly"
       (int)
# 2234 "ns_yac.ml"
    )) = _v in
    ((let _v : 'tv_a_exp = 
# 67 "ns_yac.mly"
        ( Constant _1 )
# 2239 "ns_yac.ml"
     in
    _menhir_goto_a_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _ = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv95) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _v : 'tv_p_exp = 
# 81 "ns_yac.mly"
          ( Const false )
# 2252 "ns_yac.ml"
     in
    _menhir_goto_p_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv96)

and _menhir_discard : _menhir_env -> token =
  fun _menhir_env ->
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = _menhir_env._menhir_lexer lexbuf in
    _menhir_env._menhir_token <- _tok;
    _menhir_env._menhir_startp <- lexbuf.Lexing.lex_start_p;
    _menhir_env._menhir_endp <- lexbuf.Lexing.lex_curr_p;
    let shifted = Pervasives.(+) _menhir_env._menhir_shifted 1 in
    if Pervasives.(>=) shifted 0 then
      _menhir_env._menhir_shifted <- shifted;
    _tok

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state * 'tv_ns_rule) = Obj.magic _menhir_stack in
        (_menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _menhir_env._menhir_startp : 'freshtv34)
    | MenhirState89 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        (_menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState89 _menhir_env._menhir_startp : 'freshtv36)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv37 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2284 "ns_yac.ml"
        )) * _menhir_state) * _menhir_state * 'tv_nonempty_list_term_) = Obj.magic _menhir_stack in
        (_menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState86 : 'freshtv38)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_term) = Obj.magic _menhir_stack in
        (_menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _menhir_env._menhir_startp : 'freshtv40)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2296 "ns_yac.ml"
        )) * _menhir_state) = Obj.magic _menhir_stack in
        (_menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState82 _menhir_env._menhir_startp : 'freshtv42)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2304 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState81 : 'freshtv44)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * (
# 21 "ns_yac.mly"
       (string)
# 2312 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        (_menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState78 : 'freshtv46)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv47 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2320 "ns_yac.ml"
        )) * _menhir_state * 'tv_option_BRACK_) * 'tv_option_INT_) = Obj.magic _menhir_stack in
        (_menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _menhir_env._menhir_startp : 'freshtv48)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2328 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51) = Obj.magic _menhir_stack in
        (_menhir_run70 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _menhir_env._menhir_startp : 'freshtv52)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state * 'tv_pred_chunk) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv57 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv59 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv65 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67 * _menhir_state * 'tv_p_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_act_chunk) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv83 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_a_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv87 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2430 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_assign) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv94)

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 19 "ns_yac.mly"
       (string)
# 2447 "ns_yac.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _tok = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2456 "ns_yac.ml"
    )) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | BRACK _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * (
# 19 "ns_yac.mly"
       (string)
# 2465 "ns_yac.ml"
        )) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState71 in
        let (_v : (
# 20 "ns_yac.mly"
       (string)
# 2471 "ns_yac.ml"
        )) = _v in
        ((let _ = _menhir_discard _menhir_env in
        _menhir_reduce30 _menhir_env (Obj.magic _menhir_stack) _menhir_s _v) : 'freshtv30)
    | BECOMES | INT _ ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState71
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv32)

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_startp = lexbuf.Lexing.lex_start_p;
      _menhir_endp = lexbuf.Lexing.lex_curr_p;
      _menhir_shifted = 4611686018427387903;
      }

and act : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 36 "ns_yac.mly"
      (Ns_types.ParsedPCFG.actions)
# 2497 "ns_yac.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | NT _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
        | RBRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState1 in
            ((let _v : 'tv_loption_separated_nonempty_list_SEMI_act_chunk__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 2526 "ns_yac.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_SEMI_act_chunk__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv20)) : 'freshtv22)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv24)) : 'freshtv26)) : 'freshtv28))

and pred : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 37 "ns_yac.mly"
      (Ns_types.ParsedPCFG.predicates)
# 2543 "ns_yac.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | LBRACK ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        ((let _tok = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = _menhir_stack in
        let (_tok : token) = _tok in
        ((match _tok with
        | FALSE ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | INT _v ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | LPAREN ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NOT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NT _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | TRUE ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | RBRACK ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState36 in
            ((let _v : 'tv_loption_separated_nonempty_list_SEMI_pred_chunk__ = 
# 57 "/usr/share/menhir/standard.mly"
    ( [] )
# 2582 "ns_yac.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_SEMI_pred_chunk__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
        | _ ->
            assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
            _menhir_env._menhir_shifted <- (-1);
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv8)) : 'freshtv10)
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv12)) : 'freshtv14)) : 'freshtv16))

and spec : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 35 "ns_yac.mly"
      (Ns_types.str_spec_t)
# 2599 "ns_yac.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = () in
    ((assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
    let _tok = _menhir_env._menhir_token in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = _menhir_stack in
    let (_tok : token) = _tok in
    ((match _tok with
    | NT _v ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | _ ->
        assert (Pervasives.(<>) _menhir_env._menhir_shifted (-1));
        _menhir_env._menhir_shifted <- (-1);
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69) : 'freshtv2)) : 'freshtv4))





