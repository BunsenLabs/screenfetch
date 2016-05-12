PREFIX ?= /usr
BIN = $(DESTDIR)$(PREFIX)/bin
MAN = $(DESTDIR)$(PREFIX)/share/man1/screenfetch.1

build: screenfetch.1
	./update-manpage.sh

install: build
	install -Dm755 ./screenfetch-dev $(BIN)/screenfetch
	install -Dm644 ./screenfetch.1 $(MAN)/share/man1/screenfetch.1

.PHONY: build
