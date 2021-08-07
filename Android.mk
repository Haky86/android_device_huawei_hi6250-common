#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter agassi2 anne berlin bond dallas figo florida leland prague rhone warsaw,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)

# OpenCL Symlinks
LIBOPENCL1_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libOpenCL.so.1
$(LIBOPENCL1_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/libOpenCL.so.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib/libOpenCL.so $@

LIBOPENCL641_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so.1
$(LIBOPENCL641_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/libOpenCL.so.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so $@

LIBOPENCL11_SYMLINK := $(TARGET_OUT_VENDOR)/lib/libOpenCL.so.1.1
$(LIBOPENCL11_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/libOpenCL.so.1.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib/libOpenCL.so.1 $@

LIBOPENCL6411_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so.1.1
$(LIBOPENCL6411_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/libOpenCL.so.1.1 symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(TARGET_OUT_VENDOR)/lib64/libOpenCL.so.1 $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(LIBOPENCL1_SYMLINK) \
	$(LIBOPENCL641_SYMLINK) \
	$(LIBOPENCL11_SYMLINK) \
	$(LIBOPENCL6411_SYMLINK)

# Vulkan Symlinks
LIBGLES_MALI_LIBRARY := /vendor/lib/egl/libGLES_mali.so
LIBGLES_MALI64_LIBRARY := /vendor/lib64/egl/libGLES_mali.so

VULKAN_SYMLINK := $(TARGET_OUT_VENDOR)/lib/hw/vulkan.hi6250.so
$(VULKAN_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/hw/vulkan.hi6250.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGLES_MALI_LIBRARY) $@

VULKAN64_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.hi6250.so
$(VULKAN64_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/hw/vulkan.hi6250.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGLES_MALI64_LIBRARY) $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(VULKAN_SYMLINK) \
	$(VULKAN64_SYMLINK)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
