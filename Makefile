# Travis example for Modern C++ by Rafał Pocztarski
# For more languages and info see:
# https://github.com/rsp/travis-hello#readme

GCCFLAGS = -g -Wall -Wfatal-errors -std=c++14

ALL = identifier

all: $(ALL)

hello: src/identifier.c
	$(GCC) $(GCCFLAGS) -o $@ $@.c

clean:
	$(RM) $(ALL) *.o

test: all
	bash test
