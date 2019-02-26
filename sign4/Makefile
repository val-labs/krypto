#call: clean all serve
all: test1.js serve
test1.js: test1.cpp
	docker run -v `pwd`/..:`pwd`/..: -w `pwd` em emcc --bind -o $@ $< ../ed25519/ed25519/*.c ../ed25519/test2.c -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' -s LINKABLE=1 -s EXPORT_ALL=1 -I../ed25519
clean:
	find . -name '*~' | xargs rm
	rm -fr *.wasm *.js
	tree .
serve:
	python -um ws
#	python -mSimpleHTTPServer 1026
