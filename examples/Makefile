
# Examples for "p2c", the Pascal to C translator.

# The following definitions assume p2c has been compiled into the "home"
# directory as shown in src/Makefile.
P2C = ../p2c -c ../p2crc
INC = ../include
LIB = ../libp2c.a

all:
	@echo "this file is broken. compile the examples manually, please."
	@exit 0


# Translating everything:
comp:  fact/fact.c  e/e.c  self/self.c  cref/cref.c  basic/basic.c

fact/fact.c: fact/fact.pas
	$(P2C) fact/fact.pas $(LIB)

e/e.c: e/e.pas
	$(P2C) e/e.pas
	$(CC) -I$(INC) e/e.c -o e/e $(LIB)

self.c: self/self.pas
	$(P2C) self/self.pas
	$(CC) -I$(INC) self/self.c -o self/self $(LIB)

cref/cref.c: cref/cref.pas
	$(P2C) cref/cref.pas
	$(CC) -I$(INC) cref/cref.c -o cref/cref $(LIB)

basic/basic.c: basic/basic.pas
	$(P2C) basic/basic.pas
	$(CC) -I$(INC) basic/basic.c -o basic/basic $(LIB)
