EXTENSIONS_DIR = $(HOME)/.config/inkscape/extensions

all:

install:
	mkdir -p $(EXTENSIONS_DIR)
	cp -f bezierenvelope.inx bezierenvelope.py $(EXTENSIONS_DIR)/
