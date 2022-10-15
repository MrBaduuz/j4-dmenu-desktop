CC = c++
TARGET = j4-dmenu-desktop
PREFIX = /usr/local

all: $(TARGET)

$(TARGET): src/main.cc src/Application.hh src/ApplicationRunner.hh src/Applications.hh src/Dmenu.hh src/FileFinder.hh src/Formatters.hh src/LocaleSuffixes.hh src/Main.hh src/SearchPath.hh src/Utilities.hh
	$(CC) src/main.cc -o $@

install:
	mkdir -p $(PREFIX)/bin
	cp -f j4-dmenu-desktop $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/j4-dmenu-desktop

uninstall:
	$(RM) -f $(PREFIX)/bin/j4-dmenu-desktop

clean:
	$(RM) -f $(TARGET)
