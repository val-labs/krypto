# -*- Makefile -*-
PROG=sign
CFLAGS+=-I../util -I../ed25519
LDFLAGS=-L.. -lutil -led25519
all: clean $(PROG) testing
testing: $(PROG)
	@./sign                                                     || echo ==PASS1==
	@./sign -u --seed sdffdg                                    || echo ==PASS2==
	@cat Makefile | ./sign -u --seed makefile -v                || echo ==PASS3==
	@cat Makefile | ./sign -u --seed makefile -s >Makefile.sig  && echo ==PASS4==
	@cat Makefile.sig Makefile | ./sign -u --seed makefile -v   && echo ==PASS5==
	@cat Makefile | ./sign -u --seed makefile -S >Makefile.psig && echo ==PASS6==
	@cat Makefile.psig Makefile | ./sign -u -V --seed Makefile  || echo ==PASS7==
	@cat Makefile.psig Makefile | ./sign -u -V
lib%.a: %.a; cp $< $@ && cp $@ ..
include makefile.inc
