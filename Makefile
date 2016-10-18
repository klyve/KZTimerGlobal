#include .development.mk
include .travis.mk
PLUGINS=KZTimerGlobal KZErrorBoxFixer Jointeamfix
NAME=KZTimerGlobal
VERSION=1.8.5_1


FOLDER=./scripting
INCLUDES=-i./scripting/include
SOURCE_DIR=builds
IGNORE=builds compiled cfg maps materials models sound
MAIN_DIRS=cfg maps materials models sound

COMPILER=$(COMPILER_PATH)
BASE_INCLUDE=$(BASE_INCLUDE_PATH)
INCLUDE_PATH=$(BASE_INCLUDE) $(INCLUDES)
FILE_NAME=$(NAME)_$(VERSION).zip
TMP_DIR=.tmp

build: directories
	@for plugin in $(PLUGINS); do \
			echo "Compiling: $$plugin.sp"; \
		  $(COMPILER) -i$(INCLUDE_PATH) $(FOLDER)/$$plugin.sp -ocompiled/$$plugin.smx; \
			retval=$$?; \
			if [ $$retval -ne 0 ]; then \
				exit 1; \
			else \
				echo "$$plugin compiled\n"; \
			fi; \
	done;


release: clean tmpdir build
	@echo "************************************************************"
	@echo "Creating temp folder"
	@cp -f ./compiled/*.smx $(TMP_DIR)/addons/sourcemod/plugins/
	@echo "Copying base files"
	@for folder in $(MAIN_DIRS); do \
		echo "Copying $$folder into $(TMP_DIR)/$$folder"; \
		cp -r $$folder/ $(TMP_DIR)/$$folder/; \
	done;
	@echo "Creating sourcemod folder"
	@for folder in *; do \
    if [ -d "$$folder" ]; then \
				if [[ $(TMP_DIR) != $$folder ]]; then \
					echo "Copying $$folder into $(TMP_DIR)/addons/sourcemod"; \
					cp -r $$folder $(TMP_DIR)/addons/sourcemod/; \
				fi; \
    fi; \
	done;
	@for folder in $(IGNORE); do \
		echo "Deleting folder $$folder"; \
		rm -rf $(TMP_DIR)/addons/sourcemod/$$folder; \
	done;
	@echo "Creating file: $(SOURCE_DIR)$(FILE_NAME)"
	@mkdir -p $(SOURCE_DIR)
	@cd $(TMP_DIR); \
	zip -r $(FILE_NAME) *; \
	cd --
	@echo "Creating build file"
	@cp $(TMP_DIR)/$(FILE_NAME) $(SOURCE_DIR)/$(FILE_NAME)
	@echo "Cleaning up"
	@rm -rf $(TMP_DIR)
	@echo "Complete"



clean:
	rm -rf compiled/
	rm -rf builds/
	rm -rf $(TMP_DIR)


tmpdir:
	mkdir -p $(TMP_DIR)/addons/sourcemod/plugins

directories:
	mkdir -p compiled/

.PHONY: directories tmpdir
