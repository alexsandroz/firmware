#
# Copyright (c) 2020-2021 Huawei Device Co., Ltd.
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
#

MODULE_NAME := hdf_wifi_model

include drivers/hdf/khdf/model/network/wifi/hdfwifi.mk

WAP_PATH      := ../../../../framework/model/network/wifi/core/components/softap
WSTA_PATH     := ../../../../framework/model/network/wifi/core/components/sta
WEAPOL_PATH   := ../../../../framework/model/network/wifi/core/components/eapol
NETDEV_PATH   := ../../../../framework/model/network/common/netdevice
MODULE_PATH   := ../../../../framework/model/network/wifi/module
QOS_PATH      := ../../../../framework/model/network/wifi/platform/src/qos
MESSAGE_PATH  := ../../../../framework/model/network/wifi/platform/src/message
PLATFORM_PATH := ../../../../framework/model/network/wifi/platform/src
CORE_PATH     := ../../../../framework/model/network/wifi/core
IBUS_PATH     := ../../../../framework/model/network/wifi/bus

obj-$(CONFIG_DRIVERS_HDF_WIFI) += $(MODULE_NAME).o
$(MODULE_NAME)-objs := $(WAP_PATH)/ap.o \
                       $(WEAPOL_PATH)/eapol.o \
                       $(WSTA_PATH)/sta.o \
                       $(NETDEV_PATH)/net_device.o \
                       $(MODULE_PATH)/wifi_module.o \
                       $(MODULE_PATH)/wifi_base.o \
                       $(MODULE_PATH)/wifi_feature.o \
                       $(CORE_PATH)/hdf_wifi_core.o \
                       $(QOS_PATH)/flow_control.o \
                       $(QOS_PATH)/flow_control_task.o \
                       $(MESSAGE_PATH)/nodes/local_node.o \
                       $(MESSAGE_PATH)/message_dispatcher.o \
                       $(MESSAGE_PATH)/message_router.o \
                       $(MESSAGE_PATH)/sidecar.o \
                       $(PLATFORM_PATH)/hdf_wlan_priority_queue.o \
                       $(PLATFORM_PATH)/hdf_wifi_event.o \
                       $(PLATFORM_PATH)/hdf_wlan_chipdriver_manager.o \
                       $(PLATFORM_PATH)/hdf_wlan_config_parser.o \
                       $(PLATFORM_PATH)/hdf_wlan_power_manager.o \
                       $(PLATFORM_PATH)/hdf_wlan_product.o \
                       $(PLATFORM_PATH)/hdf_wlan_reset_manager.o \
                       $(PLATFORM_PATH)/hdf_wlan_utils.o \
                       $(IBUS_PATH)/hdf_ibus_intf.o \
                       $(IBUS_PATH)/hdf_sdio_intf.o \
                       platform/src/hdf_wlan_queue.o \
                       ../../../core/hdf_wlan_sdio_adapt.o


ccflags-$(CONFIG_DRIVERS_HDF_WIFI) += \
    $(HDF_FRAMEWORKS_INC) \
    $(HDF_WIFI_FRAMEWORKS_INC) \
    $(HDF_WIFI_ADAPTER_INC) \
    $(SECURE_LIB_INC) 