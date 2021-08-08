#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/huawei/hi6250-common

# Atrace
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0 \
    android.hardware.atrace@1.0-service

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@5.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@5.0-impl \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio.usb.default \
    cplay \
    libaudioroute \
    libaudioutils \
    libtinyalsa \
    libtinycompress \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \
    libxml2

PRODUCT_COPY_FILES := \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth.a2dp@1.0 \
    android.hardware.bluetooth.audio@2.0 \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    audio.bluetooth.default \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4 \
    android.hardware.camera.provider@2.5 \

# Data
PRODUCT_PACKAGES += \
    blkcg_init.sh
    
# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0.vendor \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0.vendor \

# Public Libraries
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/vendor/etc/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

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

# Recovery
AB_OTA_UPDATER := false

PRODUCT_PACKAGES += \
    fstab.hi6250 \
    init.recovery.hi6250.rc \
    resize2fs_static

$(call inherit-product, vendor/huawei/hi6250-common/hi6250-common-vendor.mk)
