#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/huawei/hi6250-common

# Data
PRODUCT_PACKAGES += \
    blkcg_init.sh

# Ramdisk's Charger
PRODUCT_PACKAGES += \
    init.charger.rc \
    init.chip.charger.rc \
    init.chip.usb.rc \
    init.hisi.usb.rc \

# Ramdisk's Connectivity
PRODUCT_PACKAGES += \
    init.connectivity.bcm43xx.rc \
    init.connectivity.bcm43455.rc \
    init.connectivity.gps.rc \
    init.connectivity.hi1102.rc \
    init.connectivity.hisi.rc \
    init.recovery.hi1102.rc \

# Ramdisk's Hardware \
PRODUCT_PACKAGES += \
    activity_recognition_service.rc \
    aptouch_daemon.rc \
    hinetmanager.rc \
    hisecd.rc \
    init.audio.rc \
    init.balong_modem.rc \
    init.connectivity.rc \
    init.device.rc \
    init.extmodem.rc \
    init.hi6250.rc \
    init.hisi.rc \
    init.ko.rc \
    init.manufacture.rc \
    init.performance.rc \
    init.platform.rc \
    init.post-fs-data.rc \
    init.protocol.rc \
    init.recovery.huawei.rc \
    init.tee.rc \
    init.vowifi.rc \
    isplogcat.rc \
    modemchr_service.rc \
    vendor.huawei.graphics.displayeffect@1.0-service.rc \
    vendor.huawei.hardware.audio@4.0-service.rc \
    vendor.huawei.hardware.biometrics.fingerprint@2.1-service.rc \
    vendor.huawei.hardware.biometrics.hwfacerecognize@1.1-service.rc \
    vendor.huawei.hardware.dolby.dms@1.0-service.rc \
    vendor.huawei.hardware.fm@1.0-service.rc \
    vendor.huawei.hardware.gnss@1.2-service.rc \
    vendor.huawei.hardware.graphics.mediacomm@2.0-service.rc \
    vendor.huawei.hardware.hisupl@1.0-service.rc \
    vendor.huawei.hardware.hwdisplay.displayengine@1.2-service.rc \
    vendor.huawei.hardware.hwdisplay@1.0-service.rc \
    vendor.huawei.hardware.hwfactoryinterface@1.1-service.rc \
    vendor.huawei.hardware.hwfs@1.0-service.rc \
    vendor.huawei.hardware.hwhiview@1.0-service.rc \
    vendor.huawei.hardware.hwsecurity-service.rc \
    vendor.huawei.hardware.hwupdate@1.0-service.rc \
    vendor.huawei.hardware.hwvibrator@1.0-service.rc \
    vendor.huawei.hardware.iawareperf@1.0-service.rc \
    vendor.huawei.hardware.kds@1.0-service.rc \
    vendor.huawei.hardware.libteec@2.0-service.rc \
    vendor.huawei.hardware.light@2.0-service.rc \
    vendor.huawei.hardware.nfc@1.0-service.rc \
    vendor.huawei.hardware.otasimlock@1.0-service.rc \
    vendor.huawei.hardware.perfgenius@2.0-service.rc \
    vendor.huawei.hardware.power@1.0-service.rc \
    vendor.huawei.hardware.sensors@1.0-service.rc \
    vendor.huawei.hardware.tp@1.0-service.rc \
    vendor.huawei.hardware.wifi@1.1-service.rc \
    ueventd.rc \

$(call inherit-product, vendor/huawei/hi6250-common/hi6250-common-vendor.mk)
