#include "http_dfa.h"
#include "fs_lib.h"
//#include "simpler_dfa.h"

#include <sys/time.h> // for gettimeofday
#include <pcap/pcap.h>
#include <netinet/if_ether.h>
#include <netinet/tcp.h>
#include <netinet/ip.h>
#include <limits.h>
#include <utility>
#include <unordered_map>
#include <iostream>
#include <cstdio>
#include <cstring>

#include <time.h>
#include <sys/timeb.h>

//size_t bytes_processed = 0;
bool kdebug = false;


//New state
#define NEW_DFA_STATE_NUM 100000
unsigned char tidfa_newtr[NEW_DFA_STATE_NUM][256];
int new_tidfa_accept[NEW_DFA_STATE_NUM];
int father[NEW_DFA_STATE_NUM];

//Caculate the hash values.
#define MAX_VALUE 1000000

#define BIG_PRIME 999983
#define MAX_HASH_TABLE 1000000

int getfa(int x) {
	if (x == father[x]) return x;
	father[x] = getfa(father[x]);
	return father[x];
}

bool isStateEqual(state &x, state &y, int xtidfa_q, int ytidfa_q, int xmatches, int ymatches) { //Just compare dfa state and lpdfa state
	if (
		//getfa(xtidfa_q) == getfa(ytidfa_q)  // equal if copy state
		xtidfa_q == ytidfa_q ///// should not use father state
		&& x.q == y.q   //dfa_id
		&& x.dfa_q == y.dfa_q 
		/*
		&& x.v0 == y.v0 && 
		x.v1 == y.v1 && 
		x.v2 == y.v2 &&
		x.v3 == y.v3 &&
		x.v4 == y.v4 &&
		x.v5 == y.v5 &&
		x.v6 == y.v6 &&
		x.v7 == y.v7 &&
		x.v8 == y.v8 &&
		x.rerun_temp == y.rerun_temp */
		//&& xmatches == ymatches  //Don't want to include matches.
		)
		return true;
	return false;
}

bool isStateResultEqual(state &x, state &y) {

	if (y.v0 == x.v0 && y.v1 == x.v1 && y.v2 == x.v2 &&
		x.v3 == y.v3 &&
		x.v4 == y.v4 &&
		x.v5 == y.v5 &&
		x.v6 == y.v6 &&
		x.v7 == y.v7 &&
		x.v8 == y.v8 &&
		x.rerun_temp == y.rerun_temp
		//&& x.q == y.q && x.dfa_q == y.dfa_q //FIX ME
		)
		return true;
	return false;
}

int getStateQId(state& x) {
	if (x.q == NULL) return -1;
	
	if (x.q == &state::DFA0) return 0;
	if (x.q == &state::DFA1) return 1;
	if (x.q == &state::DFA2) return 2;
	if (x.q == &state::DFA3) return 3;
	if (x.q == &state::DFA4) return 4;
	if (x.q == &state::DFA5) return 5;
	if (x.q == &state::DFA6) return 6;
	if (x.q == &state::DFA7) return 7;
	if (x.q == &state::DFA8) return 8;
	if (x.q == &state::DFA9) return 9;
	if (x.q == &state::DFA10) return 10;
	if (x.q == &state::DFA11) return 11;
	if (x.q == &state::DFA12) return 12;
	if (x.q == &state::DFA13) return 13;
	if (x.q == &state::DFA14) return 14;
	if (x.q == &state::DFA15) return 15;
	if (x.q == &state::DFA16) return 16;
	if (x.q == &state::DFA17) return 17;
	if (x.q == &state::DFA18) return 18;
	if (x.q == &state::DFA19) return 19;
	if (x.q == &state::DFA20) return 20;
	
	if (x.q == &state::CA0) return 100;
	if (x.q == &state::CA1) return 101;
	if (x.q == &state::CA2) return 102;
	if (x.q == &state::CA3) return 103;
	if (x.q == &state::CA4) return 104;
	if (x.q == &state::CA5) return 105;
	if (x.q == &state::CA6) return 106;
	if (x.q == &state::CA7) return 107;
	if (x.q == &state::CA8) return 108;
	if (x.q == &state::CA9) return 109;
	if (x.q == &state::CA10) return 110;
	if (x.q == &state::CA11) return 111;
	if (x.q == &state::CA12) return 112;
	if (x.q == &state::CA13) return 113;
	if (x.q == &state::CA14) return 114;
	if (x.q == &state::CA15) return 115;
	if (x.q == &state::CA16) return 116;
	if (x.q == &state::CA17) return 117;
	if (x.q == &state::CA18) return 118;
	if (x.q == &state::CA19) return 119;
	if (x.q == &state::CA20) return 120;
	if (x.q == &state::CA21) return 121;
	if (x.q == &state::CA22) return 122;
	if (x.q == &state::CA23) return 123;
	if (x.q == &state::CA24) return 124;
	if (x.q == &state::CA25) return 125;
	if (x.q == &state::CA26) return 126;
	if (x.q == &state::CA27) return 127;
	if (x.q == &state::CA28) return 128;

}

int getHashValue(state& x, int xtidfa_q, int xmatches) {
	long long t = 0;
	//t = (t + getfa(xtidfa_q)) % BIG_PRIME;   //equal if copy state
	t = (t + xtidfa_q) % BIG_PRIME;   //not use father id
	t = (t * (long long)MAX_VALUE + x.dfa_q) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + getStateQId(x)) % BIG_PRIME;
	/*
	t = (t * (long long)MAX_VALUE + x.v0) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v1) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v2) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v3) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v4) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v5) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v6) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v7) % BIG_PRIME;
	t = (t * (long long)MAX_VALUE + x.v8) % BIG_PRIME;*/
	return (int)t;
}

void printState(state &x) {
	printf("dfa_id = %d\t", getStateQId(x));
	printf("dfa_q = %d\t", x.dfa_q);
	printf("rerun_temp = %d\n", x.rerun_temp);
	if (x.v0 != 0) printf("v0=%d\n", x.v0);
	if (x.v1 != 0) printf("v1=%d\n", x.v1);
	if (x.v2 != 0) printf("v2=%d\n", x.v2);
	if (x.v3 != 0) printf("v3=%d\n", x.v3);
	if (x.v4 != 0) printf("v4=%d\n", x.v4);
	if (x.v5 != 0) printf("v5=%d\n", x.v5);
	if (x.v6 != 0) printf("v6=%d\n", x.v6);
	if (x.v7 != 0) printf("v7=%d\n", x.v7);
	if (x.v8 != 0) printf("v8=%d\n", x.v8);
}

bool variablesExceed(state& v) {
	if (v.v0 > 0) return true;
	if (v.v1 > 0) return true;
	if (v.v2 > 0) return true;
	if (v.v3 > 0) return true;
	if (v.v4 > 0) return true;
	if (v.v5 > 0) return true;
	if (v.v6 > 1) return true;
	if (v.v7 > 0) return true;
	if (v.v8 > 0) return true;
	return false;
}

struct hashNode {
	state st;
	int tidfa_q, matches;
	struct hashNode *next;
};

struct tsNode {
	state x;
	int matches;
	int tidfa_q;   //use to find relevant tidfa.
	//Different result should compare from the same source.....
	//int src_dfa_id;
	//int src_dfa_q;
	
	//May be not need to consider the source. Just consider destination state(e.g. dfa_q, dfa_id), need other variable(e.g. dfa_best_q...) ??????? FIX ME!!
	//just get the values in x.
	
	tsNode *next;
};
tsNode *tidfaState[NEW_DFA_STATE_NUM];

struct hashNode *htable[MAX_HASH_TABLE];

struct stateNode {
	state st;
	int tidfa_q, matches;
};
stateNode f[100000];

bool isInTable(int key, stateNode& x) {
	struct hashNode *t = htable[key];
	
	while(t != NULL) {
	
		if(isStateEqual(x.st, t->st, x.tidfa_q, t->tidfa_q, x.matches, t->matches)) return true;
		t = t->next;
	}
	return false;
}

int addToTable(stateNode &x) {
	int key = getHashValue(x.st, x.tidfa_q, x.matches);
	if (isInTable(key, x)) return -1;
	struct hashNode *t;
	t = new hashNode;
	t->st = x.st;
	t->tidfa_q = x.tidfa_q;
	t->matches = x.matches;
	t->next = htable[key];
	htable[key] = t;
	return 0;
}

tsNode* findtiState(int k, stateNode& v//, int u_dfa_id, int u_dfa_q
) {

	tsNode *q = tidfaState[k];
	while (q != NULL) {
		if ((q->matches == v.matches) && isStateResultEqual(q->x, v.st)
			&& q->x.q == v.st.q && q->x.dfa_q == v.st.dfa_q  //Compare the state id.
			//&& q->src_dfa_q == u_dfa_q && q->src_dfa_id == u_dfa_id
			) {
			return q;
			}
		q = q->next;
	}
	return q;
}


void printStateNode(stateNode &p) {
	printf("\n----------------------------------\n");
	printf("tidfa_q = %d\n", p.tidfa_q);
	printf("matches = %d\n", p.matches);
	printState(p.st);
	printf("----------------------------------\n");
}

void insert_tsNode(tsNode *&p, state st, int mch, int q// , int u_dfa_id, int u_dfa_q
) {
	tsNode *tmp = new tsNode;
	tmp->x = st;
	tmp->matches = mch;
	tmp->tidfa_q = q;
	
	//tmp->src_dfa_id = u_dfa_id;
	//tmp->src_dfa_q = u_dfa_q;
	
	tmp->next = p;
	p = tmp;
}

char input_string[1000];

inline void run_fs(char ch, state& st) {
	st.fdpos = st.flow_data_length; //Some times st.fdpos will be really big..... FIX ME!!!!!
    st.flow_data_length = st.flow_data_length + 1;
    
    //char input_ch[st.flow_data_length];
    //for (int i = 0; i < st.fdpos; i++)
    	//input_ch[i] = st.flow_data[i];
    input_string[st.fdpos] = ch;
    
    st.flow_data = (const u_char*)input_string;
	
  while (st.fdpos < st.flow_data_length && st.q != NULL)
    CALL_MEMBER_FN(st, st.q)();
    /*
  if (st.fdpos < st.flow_data_length) {
    bytes_processed += st.fdpos;
  } else {
    st.base_pos += st.flow_data_length;
    st.fdpos -= st.flow_data_length;
    st.dfa_best_pos -= st.flow_data_length;
    if (st.dfa_best_pos < 0) { printf("MAYBE NEED LAST PACKET\n"); }
    bytes_processed += st.flow_data_length;
  }*/
}

inline void run_string(char s[], state& st) {
	st.flow_data_length = st.fdpos + strlen(s);
	char input_ch[st.flow_data_length];
	
    for (int i = 0; i < st.fdpos; i++)
    	input_ch[i] = st.flow_data[i];
    	
    for (int i = st.fdpos; i < st.flow_data_length; i++)
    	input_ch[i] = s[i-st.fdpos];
    	
    st.flow_data = (const u_char*)input_ch;
	
  while (st.fdpos < st.flow_data_length && st.q != NULL)
    CALL_MEMBER_FN(st, st.q)();
}


void reshape() {
		
	for (int i = 0; i < tidfa_num; i++)
		for (int j = 0; j < 256; j++)
			tidfa_newtr[i][j] = tidfa[i << 8 | j];
			
	memset(new_tidfa_accept, -1, sizeof(new_tidfa_accept));
	for (int i = 0; i < tidfa_num; i++)
		new_tidfa_accept[i] = tidfa_accept[i];
	
	for (int i = 0; i < tidfa_num; i++)
		father[i] = i;
		
	int lo = 0, hi = 0;
	f[lo].tidfa_q = 0;
	f[lo].matches = 0;
	addToTable(f[lo]);
	
	while(lo <= hi) {
		stateNode u = f[lo];
		printStateNode(u);
		if (lo == 59) kdebug = true;
		else kdebug = false;
		
		if (kdebug) {
			printStateNode(u);
			printf("%s\n", u.st.flow_data);
			printf("%d\n", u.st.flow_data_length);
		}
		
		for (int i = 0; i < 256; i++) {
			stateNode v = u;
			int tiq = v.tidfa_q;
			matches = u.matches;
			int new_tidfa_q = tidfa_newtr[tiq][i];
			
			if (new_tidfa_q == 1){
				continue; //prune the self-recursive state of DFA. 
			}

			if (new_tidfa_q == 2 && tiq != 0) {
				continue;   //prune the matching fail edge.
			}
			
			v.tidfa_q = new_tidfa_q; 
			run_fs(i, v.st);
			/*
			if (v.st.dfa_q == 1) {
				continue; //prune the self-recursive state of CA
			}*/
			
			
			v.matches = matches;
			
			if (v.st.q == NULL) continue;
			
			if (variablesExceed(v.st)) {
				
				printf("Variable Exceed!!!\n");
				printState(v.st);
				continue;
				}
			

			if (tidfaState[getfa(v.tidfa_q)] == NULL) {
				
				insert_tsNode(tidfaState[getfa(v.tidfa_q)], v.st, matches, v.tidfa_q//, u_dfa_id, u_dfa_q
				);

			} else {
			//if (kdebug && i == 'T') { printf("infind\n"); }
				tsNode *item = findtiState(getfa(v.tidfa_q), v//, u_dfa_id, u_dfa_q
				);
				if (item == NULL) {

					insert_tsNode(tidfaState[getfa(v.tidfa_q)], v.st, matches, tidfa_num//, u_dfa_id, u_dfa_q
					); //this should be tidfa_num not v.tidfa_q

					father[tidfa_num] = v.tidfa_q;
				
					for (int k = 0; k < 256; k++)
						tidfa_newtr[tidfa_num][k] = tidfa_newtr[v.tidfa_q][k];
					tidfa_newtr[tiq][i] = tidfa_num;
					

					if (new_tidfa_accept[v.tidfa_q] != -1) 
						new_tidfa_accept[tidfa_num] = new_tidfa_accept[v.tidfa_q];
					
					v.tidfa_q = tidfa_num;
					tidfa_num++;

				}else {
					//v.tidfa_q = item->tidfa_q; //FIX ME
					tidfa_newtr[tiq][i] = item->tidfa_q;
					continue;

				}
			}
			printf("-----i=%d-----v--getfa(tidfa)=%d-\n", i, getfa(v.tidfa_q));
			printStateNode(v);

			if (new_tidfa_accept[v.tidfa_q] != -1) {
				printf("ACCEPT state.\n");
				continue;
			}
			
			/*  Do not need this hash function. May be wrong. FIX ME!!!!!!!!!!!!!!!
			if (addToTable(v) == -1) {
				continue;
			}*/
			

			f[++hi] = v;
		}
		
		printf("\n%d      %d\n", lo, tidfa_num);
		lo++;
		if (lo > 59) break;
	}
	
	printf("-------------------------^-^---------------------------------------\n");
	return ;
}



int main(int argc, char** argv) {
	if (argc < 2) {
		printf("Usage: ./genTidfa parseFile\n");
		return 0;
	}
	reshape();
	
	FILE *fin = fopen(argv[1], "r");
	
	char s[5000], tmp[100];
	int len = 100;
	
	while (fgets(tmp, len, fin) != NULL)
		strcat(s, tmp);
	s[strlen(s) - 1] = '\0'; //fgets will get the CRLF character.

	int p = 0;
	int i = 0;
	bool http_accept = false;
	for (; i < strlen(s); i++) {
		p = tidfa_newtr[p][s[i]];
		if (new_tidfa_accept[p] != -1) {
			http_accept = true;
			break;
		}
	}
	
	//printf("\n----tidfa=%d-----\n", p);
	if (http_accept) i++;
	printf("Tidfa accept state = %d\n", p);
	printf("Character consump = %d\n", i);
	
	tsNode *t = tidfaState[getfa(p)];
	while(t != NULL) {
		if (t->tidfa_q == p) break;
		t = t->next;
	}
	//printf("dfa stop at len=%d\n", i);
	
	//printState(t->x);
	matches = t->matches;
	run_string(s + i, t->x);
	printState(t->x);
	printf("matches=%d\n", matches);
	
	printf("----------------run all character all once---------------\n");
	state st;
	matches = 0;
	st.flow_data_length = strlen(s);
	st.flow_data = (const u_char*)s;
  	while (st.fdpos < st.flow_data_length && st.q != NULL)
		CALL_MEMBER_FN(st, st.q)();
	printState(st);
printf("matches=%d\n", matches);

	printf("---------------run_fs function---------\n");
	matches = 0;
	state st1;
	for (int j = 0; j < strlen(s); j++) {
		run_fs(s[j], st1);
		}
	printState(st1);
	
printf("matches=%d\n", matches);
	return 0;
}
