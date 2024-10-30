AESDCHAR_DRIVER_VERSION = 'f4ba1c1ddffca861314048eebde0ee90e2bc2751'
AESDCHAR_DRIVER_SITE = 'https://github.com/cu-ecen-aeld/assignments-3-and-later-abth5346'
AESDCHAR_DRIVER_SITE_METHOD = git
AESDCHAR_DRIVER_GIT_SUBMODULES = YES
AESDCHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load     $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload   $(TARGET_DIR)/usr/bin/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
