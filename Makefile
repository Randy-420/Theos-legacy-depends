include $(THEOS)/makefiles/common.mk

#export THEOS_PACKAGE_SCHEME = rootless

ifeq ($(THEOS_PACKAGE_SCHEME), rootful)
	THEOS_PACKAGE_DIR = DEBs/rootful
else ifeq ($(THEOS_PACKAGE_SCHEME), rootless)
	THEOS_PACKAGE_DIR = DEBs/rootless
else ifeq ($(THEOS_PACKAGE_SCHEME), jailed)
	THEOS_PACKAGE_DIR = DEBs/jailed
else
	THEOS_PACKAGE_DIR = DEBs
endif

include $(THEOS_MAKE_PATH)/tool.mk
include $(THEOS_MAKE_PATH)/aggregate.mk