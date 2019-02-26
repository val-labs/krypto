all: static static/test1.js static/test1.html
static:
	mkdir static
static/test1.js: src/test1.cpp
	docker run -v `pwd`/..:`pwd`/..: -w `pwd` em emcc --bind -o $@ $< ../ed25519/ed25519/*.c ../ed25519/test2.c -s EXTRA_EXPORTED_RUNTIME_METHODS='["cwrap"]' -s LINKABLE=1 -s EXPORT_ALL=1 -I../ed25519
static/test1.html: html/test1.html
	cp html/test1.html static
clean:
	find . -name '*~' -o -name '*.pyc' | xargs rm
	rm -fr *.wasm *.js static
	tree .
serve:
	python -um ws
