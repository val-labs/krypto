# -*- makefile -*-
PROG=sign
INCS=-I../util -I../ed25519
LIBS=-lutil -led25519
CFLAGS+=$(INCS)
LDFLAGS=-L.. $(LIBS) $(INCS)
all: clean $(PROG) testing
$(PROG): $(PROG).c
	$(CC) $< -o $@ -I ../ed25519 -L .. -l ed25519
testing: $(PROG)
	@./sign                                                     || echo ==PASS1==
	@./sign -u --seed sdffdg                                    || echo ==PASS2==
	@cat makefile | ./sign -u --seed makefile -v                || echo ==PASS3==
	@cat makefile | ./sign -u --seed makefile -s >makefile.sig  && echo ==PASS4==
	@cat makefile.sig makefile | ./sign -u --seed makefile -v   && echo ==PASS5==
	@cat makefile | ./sign -u --seed makefile -S >makefile.psig && echo ==PASS6==
	@cat makefile.psig makefile | ./sign -u -V --seed makefile  || echo ==PASS7==
	@cat makefile.psig makefile | ./sign -u -V
lib%.a: %.a; cp $< $@ && cp $@ ..
#include makefile.inc
clean: ; rm -fr $(PROG) *sig

