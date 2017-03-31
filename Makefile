LIBRARIES = -lcoap-1
INCLUDE = -I /usr/local/include/coap/
CXXFLAGS = -O2 -D_GNU_SOURCE -DWITH_POSIX -DNDEBUG

all: server client
	
server:coap-server.c
	gcc coap-server.c $(INCLUDE) $(LIBRARIES) $(CXXFLAGS) -g -o  coap-server
	
client:coap-client.c
	gcc coap_list.c coap-client.c $(INCLUDE) $(LIBRARIES) $(CXXFLAGS) -g -o  coap-client

