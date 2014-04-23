// Compile as g++ -std=c++11 -O3 -march=native fs_main.cpp -lrt -lpcap

#include "fs_lib.h"

#include <sys/time.h> // for gettimeofday
#include <pcap/pcap.h>
#include <netinet/if_ether.h>
#include <netinet/tcp.h>
#include <netinet/ip.h>
#include <limits.h>
#include <utility>
#include <unordered_map>
#include <iostream>

#include <time.h>
#include <sys/timeb.h>

int main(int argc, char* argv[]) {
  if (argc != 2) { printf ("fs [trace file]\n"); exit(1); }
  
  FILE *fin = fopen(argv[1], "r");
  matches=0;
  state st;
  char ss[100];
  if (fgets(ss, 100, fin) == NULL) printf("read file error\n");
  st.flow_data_length = strlen(ss) - 1;
  ss[st.flow_data_length] = '\0';
  st.flow_data = (const u_char*)ss;
  
  printf("flow data: %s\n", st.flow_data);
  printf("flow data length: %d\n", (int)st.flow_data_length);
  
  struct timeval t0,tf;
  gettimeofday(&t0, NULL);

  printf("\nPKT(%luB):%.30s\n", st.flow_data_length, st.flow_data);
  
  while (st.fdpos < st.flow_data_length && st.q != NULL)
    CALL_MEMBER_FN(st, st.q)();
    
  gettimeofday(&tf, NULL);
  double t0s = t0.tv_sec+(t0.tv_usec/1000000.0);
  double tfs = tf.tv_sec+(tf.tv_usec/1000000.0);
  double time_used = tfs - t0s;

  printf("Matches: %d Time: %.3fs\n", matches, time_used);

  return 0;
  }
