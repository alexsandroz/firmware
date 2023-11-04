################################################################################
#
# HI3881 Wifi driver
#
################################################################################

define HI3881_EXTRACT_CMDS
	cp -ar $(HI3881_PKGDIR)/* $(@D)/
endef

HI3881_MODULE_MAKE_OPTS = CONFIG_HI3881=m \
	KVER=$(LINUX_VERSION_PROBED) \
	KSRC=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))