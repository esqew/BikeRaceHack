GO_EASY_ON_ME = 1
ARCHS = armv7

include theos/makefiles/common.mk

TWEAK_NAME = BikeRaceHack
BikeRaceHack_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

