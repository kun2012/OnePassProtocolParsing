open Batteries
open Printf
open Regex_dfa

(*
let debug = false
let oc = 
	if debug then stdout
	else open_out "dfa.table"

let simple_test = false
let regexfile = 
	if simple_test then "simple_regex"
		else "HttpRegex"

let regex_modifiers = []
let http_dec = 0
let dop = {dec0 = -1; merge = (fun x y -> if x > y then x else y); cmp = Int.compare}
*)

let print_dfa_table oc {q0=q0;qs=qs} =
	let state_num = Array.length qs in
	fprintf oc "const int tidfa[%d] = {\n" (state_num * 256);
	let cnt = ref 0 in
	let print_dfa_state oc q = 
		(*fprintf oc "State id = %d\tDec=%d\n" q.id q.dec;*)
		let print_tran a b = 
			fprintf oc "%d" b;
			cnt := !cnt + 1;
			if !cnt != (state_num * 256) then fprintf oc ",";
			if !cnt mod 16 = 0 && !cnt != (state_num * 256) then fprintf oc "\n"
			in
		IMap.iter print_tran q.map;
		fprintf oc "\n" in
	Array.iter (print_dfa_state oc) qs;
	fprintf oc "};\n\n"
		
let test_accept {q0=q0; qs=qs} str dec = 
	let get_next_state q c = 
		let index = IMap.find (int_of_char c) q.map in
		printf "%d " index;
		if qs.(index).dec = dec then printf "\nAccept\n";
		qs.(index) in
		let s = List.fold_left get_next_state q0 (String.to_list str) in
			printf "End state id = %d\n" s.id

let read_http_str () = 
	File.with_file_in "http_packet_content" IO.read_all |> String.lowercase

let print_dfa_dec oc dfa = 
	let state_num = Array.length dfa.qs in
	let cnt = ref 0 in
	let print_state_dec oc q = 
		fprintf oc "%d" q.dec;
		cnt := !cnt + 1;
		if !cnt = state_num then fprintf oc "\n"
		else fprintf oc ",";
		if !cnt mod 16 = 0 then fprintf oc "\n" in
	fprintf oc "int tidfa_accept[DFA_STATE_NUM] = {\n";
	Array.iter (print_state_dec oc) dfa.qs;
	fprintf oc "};\n"

let print_declare oc dfa = 
	let say x = fprintf oc (x ^^ "\n") in
	say "#include <cstdio>
#include <cstring>
using namespace std;

#define DFA_STATE_NUM 1000\n";
	fprintf oc "int tidfa_num = %d;\n" (Array.length dfa.qs);
		say "unsigned char tidfa_newtr[DFA_STATE_NUM][256];
int father[DFA_STATE_NUM];
"

let regex_to_dfa ?(regex_modifiers = []) ?(dec = 0) 
		?(dop = {dec0 = -1; merge = (fun x y -> if x > y then x else y); cmp = Int.compare}) regex_file out_file = 
	let oc  = open_out out_file in
	let ascii = File.with_file_in regex_file IO.read_line in
		(*if debug then fprintf oc "The http regex is:\n%s\n" http_ascii;*)
		let regex = Pcregex.regex_of_ascii_str dec ascii regex_modifiers in   (* dec type is 'b *)
			(*if debug then Pcregex.print_iregex oc http_regex; *)  (* This print schema need the dec to be an Int *)
			let min_regex = Minreg.of_reg regex in
			let dfa = Nfa.build_dfa ~labels:"HTTP" dop min_regex in
				print_declare oc dfa;
				print_dfa_table oc dfa;
				print_dfa_dec oc dfa
				(*if debug then test_http_accept http_dfa (read_http_str ())*)
		
let () =
  if Array.length Sys.argv < 3 then
    printf "Usage: gen_dfa <regex file> <output dfa table file>\n"
  else
    regex_to_dfa Sys.argv.(1) Sys.argv.(2)
	
