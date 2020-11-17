.DEFAULT_GOAL := all

.PHONY: all
all: test

.PHONY: clean
clean:
	rm -rf dist

.PHONY: test
test:
	cabal configure --enable-tests && cabal build && cabal test

.PHONY: run
run:
	cabal run
