PREFIX		= /usr/local

TARGET		= testsh
TARGETDIR	= bin

install: $(TARGETDIR)/$(TARGET)
	cp $(TARGETDIR)/$(TARGET) $(PREFIX)/$(TARGETDIR)

uninstall:
	rm -f $(PREFIX)/$(TARGETDIR)/$(TARGET)
