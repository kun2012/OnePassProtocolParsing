all: 
	ocamlfind ocamlopt -package batteries -linkpkg PCFG.ml hashtbl_param.ml ean_std.ml  ruleset.ml pcregex.ml minreg.ml tcam.ml decider.ml fdd.ml bdd.ml optimizers.ml regex_dfa.ml ns_types.ml disj_set.ml nfa.ml d2fa.ml vsdfa.ml ns_run.ml simplify.ml ns_yac.ml ns_lex.ml ns_parse.ml ns_compile.ml -o ns_compile
	
compileLib: 
	ocamlfind ocamlc -package batteries -linkpkg PCFG.ml hashtbl_param.ml ean_std.ml  ruleset.ml pcregex.ml minreg.ml tcam.ml decider.ml fdd.ml bdd.ml optimizers.ml regex_dfa.ml ns_types.ml disj_set.ml nfa.ml d2fa.ml vsdfa.ml ns_run.ml simplify.ml ns_yac.ml ns_lex.ml ns_parse.ml ns_compile.ml -c
	
kun: 
	ocamlfind ocamlopt -package batteries -linkpkg PCFG.ml hashtbl_param.ml ean_std.ml  ruleset.ml pcregex.ml minreg.ml tcam.ml decider.ml fdd.ml bdd.ml optimizers.ml regex_dfa.ml ns_types.ml disj_set.ml nfa.ml d2fa.ml vsdfa.ml ns_run.ml simplify.ml ns_yac.ml ns_lex.ml ns_parse.ml kun_ns_compile.ml -o kun_ns_compile

nstypes: PCFG.ml ns_types.ml
	ocamlfind ocamlopt -package batteries -linkpkg PCFG.ml ns_types.ml -o nstypes	
	
regexdfa: hashtbl_param.ml ean_std.ml ruleset.ml minreg.ml pcregex.ml fdd.ml tcam.ml bdd.ml optimizers.ml regex_dfa.ml decider.ml
	ocamlfind ocamlopt -package batteries -linkpkg hashtbl_param.ml ean_std.ml ruleset.ml pcregex.ml minreg.ml tcam.ml decider.ml fdd.ml bdd.ml optimizers.ml regex_dfa.ml -o regexdfa

pcfg: PCFG.ml
	ocamlfind ocamlopt -package batteries -linkpkg PCFG.ml -o pcfg

ruleset: hashtbl_param.ml ean_std.ml ruleset.ml
	ocamlfind ocamlopt -package batteries -linkpkg -o ruleset hashtbl_param.ml ean_std.ml ruleset.ml

ruleset.cmo: ruleset.ml
	ocamlfind ocamlc -package batteries -linkpkg -c ruleset.ml

ean_std: hashtbl_param.cmo ean_std.cmo
	ocamlfind ocamlc -package batteries -linkpkg -o ean_std hashtbl_param.cmo ean_std.cmo

ean_std.cmo: ean_std.ml
	ocamlfind ocamlc -package batteries -linkpkg -c ean_std.ml
	
hashtbl_param.cmo:
	ocamlfind ocamlc -package batteries -linkpkg -c hashtbl_param.ml

clean:
	rm -f ean_std ruleset pcfg
	find -name "*.cmo" | xargs rm -f
	find -name "*.cmi" | xargs rm -f
	find -name "*.cmx" | xargs rm -f
	find -name "*.o" | xargs rm -f

