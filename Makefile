DESTDIR :=
PREFIX := /usr/local

all: build install

build:
	@echo "It's python, no need to build"

install:
	@echo "Installing to $(DESTDIR)$(PREFIX)/bin"
	@install -D -m 755 ./src/bin/battman $(DESTDIR)$(PREFIX)/bin/battman
	@install -D -m 755 ./src/bin/battmand $(DESTDIR)$(PREFIX)/bin/battmand
	@install -D -m 755 ./src/bin/battman-kde-helper $(DESTDIR)$(PREFIX)/bin/battman-kde-helper
	@echo "Installing systemd service to $(DESTDIR)$(PREFIX)/lib/systemd/system"
	@install -D -m 644 ./src/systemd/battman.service $(DESTDIR)$(PREFIX)/lib/systemd/system/battman.service
	@echo "Installing desktop file to $(DESTDIR)$(PREFIX)/share/applications"
	@install -D -m 644 ./src/desktop/battman-charge-full.desktop $(DESTDIR)$(PREFIX)/share/applications/battman-charge-full.desktop

uninstall:
	@echo "Removing from $(DESTDIR)$(PREFIX)/share/applications"
	@rm -f $(DESTDIR)$(PREFIX)/share/applications/battman-charge-full.desktop
	@echo "Removing from $(DESTDIR)$(PREFIX)/lib/systemd/system"
	@rm -f $(DESTDIR)$(PREFIX)/lib/systemd/system/battman.service
	@echo "Removing from $(DESTDIR)$(PREFIX)/bin"
	@rm -f $(DESTDIR)$(PREFIX)/bin/battman
	@rm -f $(DESTDIR)$(PREFIX)/bin/battmand
