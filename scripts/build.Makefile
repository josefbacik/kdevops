# SPDX-License-Identifier: copyleft-next-0.3.1
#
# Houses the targets which top level Makfiles can also define.
PHONY += clean
clean: $(clean-subdirs)
	$(Q)$(MAKE) -C scripts/kconfig/ clean
	$(Q)@rm -f *.o $(obj-y)

PHONY += mrproper
mrproper:
	@$(Q)rm -rf $(CURDIR)/include/config/
	@$(Q)rm -rf $(CURDIR)/include/generated/
	@$(Q)rm -f .config

version-check: include/config/project.release
	@$(Q)echo Version: $(PROJECTVERSION)
	@$(Q)echo Release: $(PROJECTRELEASE)

PHONY += help
help:
	@(                                                              \
	echo "" 							;\
	echo "Generic build targets:" ;\
	if [ -d defconfigs ]; then					\
	  echo "Default configs:"					;\
	  (cd defconfigs ; for f in $$(ls) ; do				\
		  echo "defconfig-$$f"					;\
	  done)                                                         ;\
	fi                                                              ;\
	echo "version-check      - demos version release functionality" ;\
	echo "clean              - cleans all output files"             ;\
	echo ""                                                         ;\
	)

.PHONY: $(PHONY)
