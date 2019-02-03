# -*- makefile -*-
PROG=mine
BINS=$(PROG)
INCS=-I../util -I../ed25519
LIBS=-lutil -led25519
CFLAGS+=$(INCS)
LDFLAGS=-L.. $(LIBS)
all: clean $(BINS) test
.c: ; $(CC) $< -o $@ $(CFLAGS) $(LDFLAGS)
test: $(PROG)
	@echo %%%%%%%%%%%%%%%%%%%
	@./$(PROG) -b 15 -d 8 <makefile 1>1 2>2
	/bin/cat -vet 1 ; echo
	/bin/cat -vet 2
	@echo %%%%%%%%%%%%%%%%%%%
	@./$(PROG) -b 15 -d 16 <makefile 1>1 2>2
	/bin/cat -vet 1 ; echo
	/bin/cat -vet 2
	@echo %%%%%%%%%%%%%%%%%%%
clean: ; @sh ../clean.sh

