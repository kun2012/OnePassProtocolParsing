

all:
	./genDfa simpler_http_dfa http_dfa.h
	./ns_compile http.pro extr.ca
	g++ -std=c++11 -o3 -march=native genTidfa.cpp -o genTidfa
	./genTidfa http_packet_content
#	g++ -std=c++11 -O3 -march=native fs_main.cpp -lrt -lpcap -o fsift
#	./fsift Forensic_challenge_4.pcap

clean:
	$(RM) fs_lib.h fsift
