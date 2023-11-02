ifeq ($(KSRC),)
ARCH=arm 
KSRC=/home/alex/firmware/output/build/linux-custom 
CROSS_COMPILE=/home/alex/firmware/output/per-package/hi3881/host/bin/arm-openipc-linux-musleabi- 
PWD=/home/alex/firmware/output/build/hi3881
endif

EXTRA_CFLAGS += -Wno-unused -Wno-declaration-after-statement -Wno-format-nonliteral \
				-Wno-int-conversion -Wno-sign-compare -Wno-shadow

############################## Defines ##################################
HI1131_HOST_CFLAGS += -Wall -Wextra -fsigned-char -fno-strict-aliasing -Wdate-time 
HI1131_HOST_CFLAGS += -Wformat=2 -fvisibility=hidden -fno-common -fstack-protector-strong
include $(PWD)/src/env_config.mk
HI1131_HOST_CFLAGS += $(HI1131_WIFI_CFLAGS)

EXTRA_CFLAGS += $(HI1131_HOST_CFLAGS)

############################## Includes #################################

HI1131_WIFI_INCS +=-I$(PWD)/src/wal
HI1131_WIFI_INCS +=-I$(PWD)/src/oam
HI1131_WIFI_INCS +=-I$(PWD)/src/mac/hmac
HI1131_WIFI_INCS +=-I$(PWD)/src/mac/common
HI1131_WIFI_INCS +=-I$(PWD)/src/hcc
HI1131_WIFI_INCS +=-I$(PWD)/src/frw
HI1131_WIFI_INCS +=-I$(PWD)/src/oal
HI1131_WIFI_INCS +=-I$(PWD)/src/include
EXTRA_CFLAGS     += $(HI1131_WIFI_INCS)

HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/khdf/network/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/khdf/osal/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/net
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/utils
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/core
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/core/common/include/host
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/ability/sbuf/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/wifi
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/core/components/eapol 
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/core/components/softap 
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/core/components/sta 
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/core/components/p2p 
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/config
HDF_WIFI_INCS  +=-I$(PWD)/src/bounds_checking_function/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/osal
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/platform/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/core

EXTRA_CFLAGS   += $(HDF_WIFI_INCS)

############################## Sources ###################################
OAL_PATH := src/oal/
OAM_PATH := src/oam/
FRW_PATH := src/frw/
MAC_PATH := src/mac/common/
HMAC_PATH := src/mac/hmac/
HCC_PATH := src/hcc/
WAL_PATH := src/wal/
ADPATER_PATH := src/hdfadapt/

oal-objs := oal_util.o oal_net.o oal_main.o oal_mem.o
oal-objs += oal_cfg80211.o oal_sdio_host.o oal_kernel_file.o exception_rst.o 
oal-objs += plat_firmware.o plat_pm.o plat_pm_wlan.o plat_sdio.o oal_chr.o
oal-objs := $(addprefix $(OAL_PATH),$(oal-objs))

hi3881-objs += $(oal-objs)
obj-m += hi3881.o

modules:
	@echo ==========================================================
	@echo ARCH=$(ARCH)
	@echo ==========================================================
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(PWD) modules

clean:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(PWD) clean