################################################################################
#
# HI3881 Wifi driver
#
################################################################################

define HI3881_EXTRACT_CMDS
	cp -avr $(HI3881_PKGDIR)/src/* $(@D)/
endef

HI3881_MAKE_OPTS = \
	CC="$(TARGET_CC)"

define HI3881_BUILD_CMDS
	$(MAKE) $(HI3881_MAKE_OPTS) -C $(@D)
endef

define HI3881_INSTALL_TARGET_CMDS
	install -m 0755 -D $(@D)/hi3881 $(TARGET_DIR)/usr/bin/hi3881
endef

$(eval $(generic-package))
