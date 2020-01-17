
CC = gcc

##########################
RM = rm -f

##########################
# ---------------------- #
##########################

exename       = p2c
libname       = libp2c.a
incdir        = ./include
headers       = $(incdir)/p2c/p2c.h

makeproto_src = src/makeproto/makeproto.c
makeproto_obj = src/makeproto/makeproto.o
makeproto_exe = src/makeproto/makeproto


sources_lib   = src/lib/p2clib.c src/lib/loc.p2clib.c
sources_exe   = src/exe/trans.c src/exe/citmods.c src/exe/comment.c \
				src/exe/decl.c src/exe/dir.c src/exe/expr.c src/exe/funcs.c \
				src/exe/hpmods.c src/exe/lex.c src/exe/out.c src/exe/parse.c \
				src/exe/pexpr.c src/exe/stuff.c 

objects_lib   = $(sources_lib:.c=.o)
objects_exe   = $(sources_exe:.c=.o)
objects       = $(objects_lib) $(objects_exe)
sources       = $(sources_lib) $(sources_exe)

##########################

CFLAGS = -Isrc -I$(incdir) -g3 -ggdb
LFLAGS = -g3 -ggdb

##########################

#all: $(makeproto_exe) $(libname) $(exename)
all: $(libname) $(exename)


$(libname): $(objects_lib)
	ar rcs $(libname) $(objects_lib)
	ranlib $(libname)

$(exename): $(sources) $(headers) $(objects)
	$(CC) $(objects) -o $(exename) $(LFLAGS)

$(makeproto_exe): $(makeproto_obj)
	$(CC) $(makeproto_obj) -o $(makeproto_exe) $(LFLAGS)

clean:
	$(RM) $(objects)
	$(RM) $(makeproto_obj)

distclean: clean
	$(RM) $(exename)
	$(RM) $(makeproto_exe)

rebuild: distclean all

%.o: %.c src/exe/trans.h
	$(CC) -c $< -o $@ $(CFLAGS)

