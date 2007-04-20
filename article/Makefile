FILE = perl-oop-modules.html

SRC_FILE = $(FILE).wml
WML_FLAGS += -I$${HOME}/apps/wml/shlomif-html-article-template/
WML_FLAGS += --passoption=2,-X3074 --passoption=3,-w

all: $(FILE)

$(FILE) : $(SRC_FILE)
	wml $(WML_FLAGS) -o $@ $< 

EXTRA_FILES = TODO DONE summary.txt

upload: $(FILE)
	rsync --rsh=ssh -v --progress Makefile $(SRC_FILE) $(FILE) $(EXTRA_FILES) $${HOMEPAGE_SSH_PATH}/perl-oop-systems-n6eWb7==LK/

