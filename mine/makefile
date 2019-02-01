# -*- makefile -*-
PROG=mine
CFLAGS+=-I../util -I../ed25519
LDFLAGS=-L.. -lutil -led25519
all: clean test
$(PROG): $(PROG).c
	$(CC) $< -o $@ $(CFLAGS) $(LDFLAGS)
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
clean:;	@rm -fr $(PROG) ?
