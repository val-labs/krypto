SUBDIRS=util ed25519 sign mine
#cworld: clean all; @echo ========================================
world: all; @echo ========================================
%:;	for f in $(SUBDIRS); do $(MAKE) -C $$f $@; done
clean:
	sh clean.sh
install: all
	cp sign/sign /usr/local/bin
	cp mine/mine /usr/local/bin
docker: ; docker build . -t uu && docker run -it --rm uu make -C coin
