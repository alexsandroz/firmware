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

HDF_FRAMEWORKS_INC := \
    -Idrivers/hdf/framework/ability/sbuf/include \
    -Idrivers/hdf/framework/core/common/include/host \
    -Idrivers/hdf/framework/core/host/include \
    -Idrivers/hdf/framework/core/manager/include \
    -Idrivers/hdf/framework/core/shared/include \
    -Idrivers/hdf/framework/include \
    -Idrivers/hdf/framework/include/utils \
    -Idrivers/hdf/framework/include/config \
    -Idrivers/hdf/framework/include/core \
    -Idrivers/hdf/framework/include/platform \
    -Idrivers/hdf/framework/support/platform/include \
    -Idrivers/hdf/framework/support/platform/include/platform \
    -Idrivers/hdf/framework/utils/include \
    -Idrivers/hdf/khdf/osal/include \
    -Idrivers/hdf/khdf/config/include \
    -Idrivers/hdf/framework/include/osal 
    
HDF_WIFI_FRAMEWORKS_INC := \
    -Idrivers/hdf/framework/model/network/wifi/core/components/eapol \
    -Idrivers/hdf/framework/model/network/wifi/core/components/softap \
    -Idrivers/hdf/framework/model/network/wifi/core/components/sta \
    -Idrivers/hdf/framework/model/network/wifi/include \
    -Idrivers/hdf/framework/model/network/wifi/core \
    -Idrivers/hdf/framework/model/network/wifi/module \
    -Idrivers/hdf/framework/model/network/wifi/core/module \
    -Idrivers/hdf/framework/model/network/common/netdevice \
    -Idrivers/hdf/framework/model/network/wifi/platform/include \
    -Idrivers/hdf/framework/model/network/wifi/platform/include/message \
    -Idrivers/hdf/framework/model/network/wifi/client/include \
    -Idrivers/hdf/framework/include/wifi \
    -Idrivers/hdf/framework/include/net \
    -Idrivers/hdf/framework/model/network/wifi/bus

HDF_WIFI_ADAPTER_INC := \
    -Idrivers/hdf/khdf/network/include

SECURE_LIB_INC := \
    -Idrivers/hdf/bounds_checking_function/include
