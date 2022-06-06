# To debug the issues, start with checking if you have mistakenly used spaces
# instead of tabs (It shows the presence of tabs with `^I` and line endings
# with `$`):
#  cat -e -t -v Makefile
# Source: https://stackoverflow.com/a/16945143/1613005


SHELL = /bin/sh

# define a variable to store the dependencies
REQUIRED_BINS := xclip flameshot dmenu convert xdotool

# define the path dmenu_shot should be installed
PREFIX ?= ${HOME}/.local/bin

# define a newline character to be used in messages
define LINEBREAK


endef


.PHONY: install

all help: 
	$(info Available arguments:)
	$(info - "make install" to install)
	$(info - "make remove"  to uninstall (remove))
	$(info - "make check"   to check if you have all dependencies installed)
	$(info - "make help"    to show this help)
#	to suppress the "make: 'all' is up to date." message
	@:

check:
#	checking if the dependencies are me# checking if the dependencies are mett
	$(foreach bin,$(REQUIRED_BINS),\
		$(if $(shell command -v $(bin) 2> /dev/null),$(info [Ok] Found `$(bin)`),$(error ${LINEBREAK}[Error] Missing Dependency. Please install `$(bin)`)))
	@if [[ -f "${PREFIX}/dmenu_shot" ]]; then \
		echo "[NOTE] dmenu_shot is already installed"; \
	else \
		echo "[NOTE] dmenu_shot is NOT installed yet"; \
	fi
	@:


install: check
	@cp ./dmenu_shot.sh ./dmenu_shot
	install --target "${PREFIX}" -D -m755 dmenu_shot
	@rm ./dmenu_shot
	@if [[ -f "${PREFIX}/dmenu_shot" ]] ; then \
		echo "[Ok] Successfully installed. Now you can use dmenu_shot as a command"; \
	else \
		echo "[Error] Pathetically failed to install"; \
	fi
	@:

remove uninstall:
	@if [[ -f "${PREFIX}/dmenu_shot" ]]; then \
		echo "[Ok] Found the dmenu_shot. Going to remove ..."; \
		rm "${PREFIX}/dmenu_shot"; \
		if [[ -f "${PREFIX}/dmenu_shot" ]]; then \
			echo "[Error] Pathetically failed to remove"; \
		else \
			echo "[Ok] Successfully removed)"; \
		fi \
	else \
		echo "[Error] dmenu_shot was not found to be removed/uninstalled!"; \
	fi
	@:

