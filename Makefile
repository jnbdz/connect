include config.mk

install:
	@echo "Installing $(APPNAME) script..."
	install -d $(DESTDIR)$(BINDIR)
	install -m 755 $(APPNAME) $(DESTDIR)$(BINDIR)
	@echo "Installing man page..."
	install -d $(DESTDIR)$(MANDIR)
	install -m 644 $(APPNAME).1 $(DESTDIR)$(MANDIR)
	@echo "Installation complete."

uninstall:
	@echo "Uninstalling $(APPNAME) script..."
	rm -f $(DESTDIR)$(BINDIR)/$(APPNAME)
	@echo "Removing man page..."
	rm -f $(DESTDIR)$(MANDIR)/$(APPNAME).1
	@echo "Uninstallation complete."

.PHONY: install uninstall
