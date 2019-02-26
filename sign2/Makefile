CFLAGS=-s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' -s LINKABLE=1 -s EXPORT_ALL=1
call: clean
all: test8.js
test8.js: test8.cpp
	docker run -v `pwd`/..':'`pwd`/.. -w `pwd` em emcc --bind -o $@ $< \
	../ed25519/ed25519/*.c ../ed25519/test2.c $(CFLAGS) -I../ed25519
clean:
	find . -name '*~' | xargs rm
	rm -fr *.js *.wasm
	tree .
