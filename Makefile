# To debug the issues, start with checking if you have mistakenly used spaces
# instead of tabs (It shows the presence of tabs with `^I` and line endings
# with `$`):
#  cat -e -t -v Makefile
# Source: https://stackoverflow.com/a/16945143/1613005


SHELL = /bin/sh

# define a variable to store the dependencies
REQUIRED_BINS := xclip flameshot dmenu convert

# define the path dmenu_shot should be installed
PREFIX ?= .local/bin

# define a newline character to be used in messages
define LINEBREAK


endef

# checking if the dependencies are me# checking if the dependencies are mett
$(foreach bin,$(REQUIRED_BINS),\
    $(if $(shell command -v $(bin) 2> /dev/null),$(info [Ok] Found `$(bin)`),$(error ${LINEBREAK}[Error] Missing Dependency. Please install `$(bin)`)))

.PHONY: install

install:
	cp ./dmenu_shot.sh ./dmenu_shot
	install --target "${PREFIX}" -D -m755 dmenu_shot
	rm ./dmenu_shot
