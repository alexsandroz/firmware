/*
 * Copyright (c) 2020-2021 Huawei Device Co., Ltd.
 *
 * HDF is dual licensed: you can use it either under the terms of
 * the GPL, or the BSD license, at your option.
 * See the LICENSE file in the root of this repository for complete details.
 */

#include "hdf_io_service.h"
#include "hdf_vnode_adapter.h"
#include "hdf_log.h"

struct HdfIoService *HdfIoServiceBind(const char *serviceName)
{
    return HdfIoServiceAdapterObtain(serviceName);
}

void HdfIoServiceRecycle(struct HdfIoService *service)
{
    HdfIoServiceAdapterRecycle(service);
}

struct HdfIoService *HdfIoServicePublish(const char *serviceName, uint32_t mode)
{
    HDF_LOGD("%s enter", __func__);
    if (HdfIoServiceAdapterPublish != NULL) {
        HDF_LOGD("%s serviceName:%s mode:%u", __func__, serviceName, mode);
        return HdfIoServiceAdapterPublish(serviceName, mode);
    }

    return NULL;
}

void HdfIoServiceRemove(struct HdfIoService *service)
{
    if (HdfIoServiceAdapterRemove != NULL) {
        HdfIoServiceAdapterRemove(service);
    }
}
