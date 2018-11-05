# -*- Makefile -*-
ALIBS= ed25519.a
A2LIBS=ed25519.a2
SHLIBS=ed25519.so
BINS=test test2 signer
HTML=test.html test2.html
all: libed25519.a bins testing # html
testing:
	@./signer                                                     || echo ==PASS1==
	@./signer -u --seed sdffdg                                    || echo ==PASS2==
	@cat Makefile | ./signer -u --seed makefile -v                || echo ==PASS3==
	@cat Makefile | ./signer -u --seed makefile -s >Makefile.sig  && echo ==PASS4==
	@cat Makefile.sig Makefile | ./signer -u --seed makefile -v   && echo ==PASS5==
	@cat Makefile | ./signer -u --seed makefile -S >Makefile.psig && echo ==PASS6==
	@cat Makefile.psig Makefile | ./signer -u -V --seed Makefile  || echo ==PASS7==
	@cat Makefile.psig Makefile | ./signer -u -V
lib%.a: %.a; cp $< $@ && cp $@ ..
include makefile.inc
