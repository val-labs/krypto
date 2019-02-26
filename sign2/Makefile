call: clean all
all: test8.js
test8.js: test8.cpp
	emcc -I ../ed25519 test8.cpp ../ed25519/test2.c ../ed25519/ed25519/*.c -s EXTRA_EXPORTED_RUNTIME_METHODS=[cwrap] -s LINKABLE=1 -s EXPORT_ALL=1 -o $@
clean:
	find . -name '*~' | xargs rm
	rm -fr *.js *.wasm
	tree .
