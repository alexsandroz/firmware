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
HI1131_WIFI_INCS +=-I$(PWD)/src/hdfadapt
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
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/platform/include/message
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/core
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/wifi/module
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/utils/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/model/network/common/netdevice
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/include/platform
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/core/host/include
HDF_WIFI_INCS  +=-I$(PWD)/src/hdf/framework/core/shared/include
EXTRA_CFLAGS   += $(HDF_WIFI_INCS)

############################## Generic ####################################

hi3881-objs += src/hdf/framework/model/network/wifi/core/components/softap/ap.o
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/hdf_wifi_event.o 
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/hdf_wlan_config_parser.o
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/hdf_wlan_product.o
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/hdf_wlan_utils.o
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/hdf_wlan_power_manager.o
hi3881-objs += src/hdf/framework/model/network/common/netdevice/net_device.o
hi3881-objs += src/hdf/framework/model/network/wifi/core/hdf_wifi_core.o
hi3881-objs += src/hdf/framework/model/network/wifi/module/wifi_module.o
hi3881-objs += src/hdf/framework/model/network/wifi/module/wifi_base.o
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/message/sidecar.o
hi3881-objs += src/hdf/framework/model/network/wifi/platform/src/message/message_router.o
hi3881-objs += src/hdf/framework/ability/sbuf/src/hdf_sbuf.o
hi3881-objs += src/hdf/framework/ability/sbuf/src/hdf_sbuf_impl_raw.o
hi3881-objs += src/hdf/framework/core/host/src/devsvc_manager_clnt.o
hi3881-objs += src/bounds_checking_function/src/vsprintf_s.o
hi3881-objs += src/bounds_checking_function/src/strcpy_s.o
hi3881-objs += src/bounds_checking_function/src/strncpy_s.o
hi3881-objs += src/bounds_checking_function/src/memset_s.o
hi3881-objs += src/bounds_checking_function/src/memcpy_s.o
hi3881-objs += src/bounds_checking_function/src/memmove_s.o
hi3881-objs += src/hdf/khdf/network/src/netbuf_adapter.o
hi3881-objs += src/hdf/khdf/osal/src/osal_thread.o
hi3881-objs += src/hdf/khdf/osal/src/osal_time.o
hi3881-objs += src/hdf/khdf/osal/src/osal_mutex.o
hi3881-objs += src/hdf/khdf/osal/src/osal_mem.o

############################## Plataform ###################################
OAL_PATH := src/oal/
ADPATER_PATH := src/hdfadapt/
OAM_PATH := src/oam/
FRW_PATH := src/frw/

oal-objs := oal_util.o oal_net.o oal_main.o oal_mem.o
oal-objs += oal_cfg80211.o oal_sdio_host.o oal_kernel_file.o exception_rst.o 
oal-objs += plat_firmware.o plat_pm.o plat_pm_wlan.o plat_sdio.o oal_chr.o
oal-objs := $(addprefix $(OAL_PATH),$(oal-objs))
hi3881-objs += $(oal-objs)

adapter-objs := hdfinit_3881.o net_adpater.o hdf_driver_register.o
adapter-objs := $(addprefix $(ADPATER_PATH),$(adapter-objs))
hi3881-objs += $(adapter-objs)

oam-objs := oam_main.o oam_log.o
oam-objs := $(addprefix $(OAM_PATH),$(oam-objs))
hi3881-objs += $(oam-objs)

board-objs := plat_board_common_sdio.o
board-objs := $(addprefix $(OAL_PATH),$(board-objs))
hi3881-objs += $(board-objs)

frw-objs += frw_event.o frw_event_sched.o frw_main.o frw_task.o frw_timer.o
frw-objs := $(addprefix $(FRW_PATH),$(frw-objs))
hi3881-objs += $(frw-objs)

###############################  Wifi ####################################
WAL_PATH := src/wal/
MAC_PATH := src/mac/common/
HCC_PATH := src/hcc/
HMAC_PATH := src/mac/hmac/

wal-objs  := wal_customize.o wal_cfg80211.o wal_11d.o wal_hipriv.o wal_event_msg.o hi_wifi_driver_api.o wal_linux_flowctl.o wal_ioctl.o wal_event.o wal_scan.o wal_main.o wal_regdb.o wal_mac80211.o
wal-objs  := $(addprefix $(WAL_PATH),$(wal-objs))
hi3881-objs += $(wal-objs)

mac-objs  := mac_data.o mac_device.o mac_frame.o mac_ie.o mac_user.o mac_vap.o mac_mib.o mac_resource.o mac_regdomain.o mac_pm_driver.o
mac-objs  := $(addprefix $(MAC_PATH),$(mac-objs))
hi3881-objs += $(mac-objs)

hcc-objs  := hcc_comm.o hcc_task.o hcc_host.o hcc_hmac.o hmac_hcc_adapt.o
hcc-objs  := $(addprefix $(HCC_PATH),$(hcc-objs))
hi3881-objs += $(hcc-objs)

hmac-objs := hmac_11i.o hmac_blockack.o hmac_chan_mgmt.o hmac_config.o hmac_crypto_tkip.o hmac_event.o hmac_uapsd.o \
             hmac_device.o hmac_encap_frame.o hmac_encap_frame_ap.o hmac_encap_frame_sta.o hmac_frag.o hmac_fsm.o \
             hmac_mgmt_ap.o hmac_mgmt_bss_comm.o hmac_mgmt_classifier.o hmac_mgmt_sta.o hmac_protection.o hmac_user.o \
             hmac_rx_data.o hmac_tx_data.o hmac_rx_filter.o hmac_scan.o hmac_sme_sta.o hmac_vap.o \
             hmac_main.o
ifeq ($(CFG_EDCA_OPT_AP), y)
hmac-objs += hmac_edca_opt.o
endif
ifeq ($(CFG_P2P), y)
hmac-objs += hmac_p2p.o
endif
ifeq ($(CFG_TCP_OPT), y)
hmac-objs += hmac_tcp_opt.o
endif
ifeq ($(CFG_TX_CLASSIFY_LAN_TO_WLAN), y)
hmac-objs += hmac_traffic_classify.o
endif
ifeq ($(CFG_WOW), y)
hmac-objs += hmac_wow.o
endif
ifeq ($(CFG_ANY), y)
hmac-objs += hmac_any.o
endif
ifeq ($(CFG_WAPI), y)
hmac-objs += hmac_wapi.o hmac_wapi_wpi.o hmac_wapi_sms4.o
endif
hmac-objs := $(addprefix $(HMAC_PATH),$(hmac-objs))
hi3881-objs += $(hmac-objs)

obj-m += hi3881.o

modules:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(PWD) modules

clean:
	$(MAKE) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) -C $(KSRC) M=$(PWD) clean