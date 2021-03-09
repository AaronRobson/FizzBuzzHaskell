.DEFAULT_GOAL := all

.PHONY: all
all: test

.PHONY: clean
clean:
	rm -rf \
	dist \
	dist-newstyle \
	.ghc.environment.* \
	cabal.project.local \
	cabal.project.local~

.PHONY: test
test:
	cabal v2-configure --enable-tests && cabal v2-build && cabal v2-test

.PHONY: run
run:
	cabal v2-run FizzBuzzHaskell
