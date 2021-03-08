EXTENSIONS_DIR = $(HOME)/.config/inkscape/extensions

MKDIR_P = mkdir -p
COPY_CMD = cp -f

all:

install:
	$(MKDIR_P) "$(EXTENSIONS_DIR)"
	$(COPY_CMD) bezierenvelope.inx bezierenvelope.py "$(EXTENSIONS_DIR)/"
