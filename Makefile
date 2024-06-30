all: build install

build:
	@echo "It's python, no need to build"

install:
	@echo "Installing to $(DESTDIR)$(PREFIX)/bin"
	@install -D -m 755 ./src/bin/battman $(DESTDIR)$(PREFIX)/bin/battman
	@install -D -m 755 ./src/bin/battmand $(DESTDIR)$(PREFIX)/bin/battmand
	@echo "Installing systemd service to $(DESTDIR)$(PREFIX)/lib/systemd/system"
	@install -D -m 644 ./src/systemd/battman.service $(DESTDIR)$(PREFIX)/lib/systemd/system/battman.service

uninstall:
	@echo "Removing from $(DESTDIR)$(PREFIX)/bin"
	@rm -f $(DESTDIR)$(PREFIX)/bin/battman
	@rm -f $(DESTDIR)$(PREFIX)/bin/battmand
	@rm -f $(DESTDIR)$(PREFIX)/lib/systemd/system/battman.service
